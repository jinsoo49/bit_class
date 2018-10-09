<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<body>
		<table width = 800 align="center">
			<tr>
				<td colspan = 2>
					<img alt="logo" src="/img/logo.png">
				</td>
			</tr>
			<tr>
				<td width = 150 bgcolor="#FFFFEE" height="600">		
					<p><a href = "page1.jsp">인사말</a></p>		
					<p><a href = "page2.jsp">오시는길</a></p>		
					<p><a href = "page3.jsp">게시판</a></p>		
					<p><a href = "page4.jsp">방명록</a></p>			
					<p><a href = "">등등</a></p>		
				</td>
				<td>
				<!-- 내용 들어갈 부분 -->				
					<%
					int empno = Integer.parseInt(request.getParameter("empno"));
					String ename = request.getParameter("ename");
					String job = request.getParameter("job");
					int mgr = Integer.parseInt(request.getParameter("mgr"));
					int sal = Integer.parseInt(request.getParameter("sal"));
					int deptno = Integer.parseInt(request.getParameter("deptno"));
					
					String sql = "insert into emp (empno, ename, job, mgr, hiredate, sal, deptno)";
					sql += "values ("+empno+", '"+ename+"', '"+job+"', "
										+mgr+", sysdate ,"+sal+" ,"+deptno+" )";					
					
					Connection conn = null;
					Statement stmt = null;
					try{
						// DriverManager에서 DB에 접속을 도와줌
						Class.forName("oracle.jdbc.driver.OracleDriver");
						conn = DriverManager.getConnection("jdbc:oracle:thin:@203.236.209.210:1521:xe", "scott", "tiger");
						stmt = conn.createStatement();
						int cnt = stmt.executeUpdate(sql);				// insert >> 결과를 받을 필요가 없으므로 executeUpdate만 사용하면 됨
						
						if(cnt > 0){
							//out.println("<h1>입력완료</h1>");
							response.sendRedirect("page3.jsp");
						}else{
							out.println("<h1>입력실패</h1>");
						}
					} catch (ClassNotFoundException e){
						%><h1>입력 실패</h1><%
						System.out.println("드라이버 jar파일 문제");	
					} catch (SQLException e){
						e.printStackTrace();
						%><h1>입력 실패</h1><%
						System.out.println("접속 실패");								
					} finally {
						try{
							if(stmt != null){
								stmt.close();
							}
							if(conn != null){
								conn.close();
							}
						} catch (Exception e){
							
						}
					}
						%>
				<!-- 내용 들어갈 부분 끝 -->
				</td>
			</tr>
			<tr>
				<td colspan="2" bgcolor="#CCDDFF">
				서울특별시 서초구 서초대로74길33 비트빌 3층 | 사업자등록번호 220-81-29726 | 대표이사 조현정 | 법인명 (주)비트컴퓨터
				<br>
				TEL 02-3486-3456 | FAX 02-3486-7890 | 통신판매업 신고번호 서울서초 2003-02577호
				<br>
				COPYRIGHT BY BITACADEMY CO.LTD. ALL RIGHTS RESERVED. HTTP://www.BITacademy.com
				</td>
			</tr>
		</table>
	</body>
</html>