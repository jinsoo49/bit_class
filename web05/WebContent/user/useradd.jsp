<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.day05.util.MyOracle"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page errorPage="/web05/err.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<body>
		<table width="800" align="center">
			<!-- ��ܺ� ���� -->
			<tr>
				<td>
					<!-- ��� �ΰ� �̹��� ���� -->
					<img src="/web05/imgs/logo.png" width="100%" >
				</td>
			</tr>
			<tr>
				<td bgcolor = "#451b61" align="center">
					<!-- style="text-decoration: none >> �����۸�ũ ���� ��Ȱ��ȭ  -->
					<a href = "/web05/index.jsp" style="text-decoration: none">
						<font color="#FFFFFF">|| H O M E ||</font>
					</a>
					<a href = "/web05/user/useradd.jsp" style="text-decoration: none" style = "text-transform: none">
						 <font color="#FFFFFF">������ ||</font>
					</a>
					<a href = "/web05/bbs/list.jsp" style="text-decoration: none">
						 <font color="#FFFFFF">�Խ��� ||</font>
					</a>
					<%
					Boolean login = (Boolean) session.getAttribute("result");
					if(login == null || login == false){
					%>
					<a href = "/web05/login/form.jsp" style="text-decoration: none">
					     <font color="#FFFFFF"> �α��� ||</font>
					</a>
					<%
					}else{
					%>
					<a href = "/web05/login/logout.jsp" style="text-decoration: none">
					     <font color="#FFFFFF"> �α׾ƿ� ||</font>
					</a>
					<%
					}
					%>
				</td>
			</tr>
			<!-- ��ܺ� ���� -->
			<!-- ����ȭ�� ���� -->
			<tr>
				<td valign="top">
					<h1>������</h1>
					<br>
					<a href = "add.jsp">
						<input type="button" value="��� ���">
					</a>
					<%
					
					String sql = "SELECT * FROM BBS_USER ORDER BY MEMBERNUM";
					
					Connection conn = null;
					Statement stmt = null;
					ResultSet rs = null;

					%>
					<ol>					
					<%
					
					try{
						conn = MyOracle.getConnection();
						stmt = conn.createStatement();
						rs = stmt.executeQuery(sql);
						
						while(rs.next()){
						%>
							<li>
								<%=rs.getInt(1) +" : "+ rs.getString(2) %>
							</li>
						
					<%
						}
					} catch (Exception e) {
						
					} finally {
						//connection�� close�� �ʼ�
						conn.close();
					}
					%>
					</ol>
				</td>
			</tr>
			<!-- ����ȭ�� ���� -->
			<!-- �ϴܺ� ���� -->
			<tr>
				<td bgcolor="#ebebeb">
					����Ư���� ���ʱ� ���ʴ��74��33 ��Ʈ�� 3�� | ����ڵ�Ϲ�ȣ 220-81-29726 | ��ǥ�̻� ������ | ���θ� (��)��Ʈ��ǻ��
					<br>
					TEL 02-3486-3456 | FAX 02-3486-7890 | ����Ǹž� �Ű���ȣ ���Ｍ�� 2003-02577ȣ
					<br>
					COPYRIGHT BY BITACADEMY CO.LTD. ALL RIGHTS RESERVED. HTTP://www.BITacademy.com
				</td>
			</tr>
			<!-- �ϴܺ� ���� -->
		</table>
	</body>
</html>