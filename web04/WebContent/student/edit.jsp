<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Index.jsp</title>
	</head>
	
	<body>
	
		<table width = "100%">
			<tr>
				<td colspan = "6" bgcolor = "#ebebeb">
					<h1>성적 관리 프로그램 (ver 0.6.0)</h1>
				</td>
			</tr>
			
			<tr align="center">
				<td>
				</td>				
				<td width = "200">
					<a href = "../index.jsp" style="text-decoration: none">
						<font size="20" color="#000000">
							HOME
						</font>
					</a>
				</td>
				<td width = "200">
					<a href = "./list.jsp" style="text-decoration: none">
						<font size="20" color="#000000">
							전체보기
						</font>
					</a>
				</td>
				<td width = "200">
					<a href = "./add.jsp" style="text-decoration: none">
						<font size="20" color="#000000">
							학생등록
						</font>
					</a>
				</td>
				<td width = "200">
					<a href = "./edit.jsp" style="text-decoration: none">
						<font size="20" color="#000000">
							성적입력
						</font>
					</a>
				</td>
				<td>
				</td>
			</tr>
			
			<tr>
				<td colspan="6" align="center">
					<!-- content start -->
					<h1>성적 입력</h1>
					
					학번을 선택하시오<br><br>
					
					<form action="edit2.jsp">
						<select name="num">
						<% 
						String sql = "SELECT NUM FROM STUDENT ORDER BY NUM";	
						String driver = "oracle.jdbc.driver.OracleDriver";
						String url = "jdbc:oracle:thin:@localhost:1521:xe";
						String user = "scott";
						String password = "tiger";
						
						Connection conn = null;
						Statement stmt = null;		
						ResultSet rs = null;
						
						try{
							Class.forName(driver);
							conn = DriverManager.getConnection(url, user, password);
							stmt = conn.createStatement();
							rs = stmt.executeQuery(sql);
							while(rs.next()){
						%>
							<option><%= rs.getInt(1) %></option>
						<%	
							} // while end
						} catch (Exception e){
							
						} finally {
							if(rs != null){
								rs.close();
							}
							if(stmt != null){
								stmt.close();
							}
							if(conn != null){
								conn.close();
							}
						}
						%>
						</select>
						<input type = "submit" value = "선 택">
					</form>
					<!-- content end -->
				</td>
			</tr>
			
			<tr>
				<td colspan="6" bgcolor = "#ebebeb">
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