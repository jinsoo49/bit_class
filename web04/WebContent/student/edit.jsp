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
					<h1>���� ���� ���α׷� (ver 0.6.0)</h1>
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
							��ü����
						</font>
					</a>
				</td>
				<td width = "200">
					<a href = "./add.jsp" style="text-decoration: none">
						<font size="20" color="#000000">
							�л����
						</font>
					</a>
				</td>
				<td width = "200">
					<a href = "./edit.jsp" style="text-decoration: none">
						<font size="20" color="#000000">
							�����Է�
						</font>
					</a>
				</td>
				<td>
				</td>
			</tr>
			
			<tr>
				<td colspan="6" align="center">
					<!-- content start -->
					<h1>���� �Է�</h1>
					
					�й��� �����Ͻÿ�<br><br>
					
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
						<input type = "submit" value = "�� ��">
					</form>
					<!-- content end -->
				</td>
			</tr>
			
			<tr>
				<td colspan="6" bgcolor = "#ebebeb">
					����Ư���� ���ʱ� ���ʴ��74��33 ��Ʈ�� 3�� | ����ڵ�Ϲ�ȣ 220-81-29726 | ��ǥ�̻� ������ | ���θ� (��)��Ʈ��ǻ��
					<br>
					TEL 02-3486-3456 | FAX 02-3486-7890 | ����Ǹž� �Ű��ȣ ���Ｍ�� 2003-02577ȣ
					<br>
					COPYRIGHT BY BITACADEMY CO.LTD. ALL RIGHTS RESERVED. HTTP://www.BITacademy.com
				</td>
			</tr>
			
		</table>	
	</body>
</html>