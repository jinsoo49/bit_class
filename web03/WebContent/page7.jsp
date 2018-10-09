<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.OracleDriver"%>
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
					<img alt="logo" src="./img/logo.png">
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
					String param = request.getParameter("empno");
					String sql = "Select * from emp where empno = "+param;
					String url = "jbdc:oracle:thin:@203.236.209.210:1521:xe";
					String id = "scott";
					String password = "tiger";
					
					Connection conn = null;
					Statement stmt = null;
					ResultSet rs = null;
					
					try{
						new OracleDriver();
						conn = DriverManager.getConnection(url, id, password);
						
						stmt = conn.createStatement();
						rs = stmt.executeQuery(sql);
						if(rs.next()){
					%>
					<form action="page8.jsp">
						<h1>상세보기</h1>
						<table>
							<tr>
								<td width="150" align="center" bgcolor="#ebebeb">
									사번
								</td>
								<td>
									<input type = "text" name = "empno" value ="<%=rs.getInt(1) %>"> 
								</td>
							</tr>
							<tr>
								<td width="150" align="center" bgcolor="#ebebeb">
									이름
								</td>
								<td>
									<input type = "text" name = "ename" value ="<%=rs.getString(2) %>"> 
								</td>
							</tr>
							<tr>
								<td width="150" align="center" bgcolor="#ebebeb">
									직책
								</td>
								<td>
									<%=rs.getString(3) %>
									<select name = "job">
									<% if("CLERK".equals(rs.getString(3))){
										%>
										<option selected="selected">CLERK
										<% 
									}else{
										%><option>CLERK<%
									}
										%></option>										
									<% if("SALESMAN".equals(rs.getString(3))){
										%>
										<option selected="selected">SALESMAN
										<% 
									}else{
										%><option>SALESMAN<%
									}
										%></option>
									<% if("MANAGER".equals(rs.getString(3))){
										%>
										<option selected="selected">MANAGER
										<% 
									}else{
										%><option>MANAGER<%
									}
										%></option>
									<% if("ANALYST".equals(rs.getString(3))){
										%>
										<option selected="selected">ANALYST
										<% 
									}else{
										%><option>ANALYST<%
									}
										%></option>
									</select>
								</td>
							</tr>
							<tr>
								<td width="150" align="center" bgcolor="#ebebeb">
									직속상관
								</td>
								<td>
									<input type = "text" name = "mgr" value ="<%=rs.getInt(4) %>"> 
								</td>
							</tr>
							<tr>	
								<td width="150" align="center" bgcolor="#ebebeb">
									입사일
								</td>
								<td>
									<%=rs.getDate(5) %>
								</td>
							</tr>
							<tr>
								<td width="150" align="center" bgcolor="#ebebeb">
									연봉
								</td>
								<td>
									<input type = "text" name = "sal" value ="<%=rs.getInt(6) %>"> 
								</td>
							</tr>
							<tr>
								<td width="150" align="center" bgcolor="#ebebeb">
									성과급
								</td>
								<td>
									<input type = "text" name = "comm" value ="<%=rs.getInt(7) %>"> 
								</td>
							</tr>
							<tr>
								<td width="150" align="center" bgcolor="#ebebeb">
									부서번호
								</td>
								<td>
									<input type = "text" name = "deptno" value ="<%=rs.getInt(8) %>"> 
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="submit" value = "수정">
									<input type="reset" value = "취소">
								</td>
							</tr>						
						
						</table>
					</form>
					
					<%
						}
					} catch (Exception e){
						
					} finally {
						try{
							if(rs != null){
								rs.close();
							}
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