<%@page import="java.sql.ResultSet"%>
<%@page import="java.net.ConnectException"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.day05.util.MyOracle"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page errorPage="../err.jsp"%>
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
					<h1>�系 �Խ���</h1>
					<table border="1" cellspacing="0" width="80%" align="center">
						<!-- �Խ��� ��ܺ� -->
						<tr>
							<th width="10%">
							<!-- bbs num -->
								�۹�ȣ 
							</th>
							<th>
							<!-- bbs subject -->
								����
							</th>
							<th width="20%">
							<!-- bbs nalja -->
								��¥
							</th>
							<th width="13%">
							<!-- bbs membernum -->
								�۾���
							</th>							
						</tr>
						<!-- �Խ��� ��ܺ� ���� -->
						<!-- �� ����Ʈ ���� -->
						<%
						
						String sql = "SELECT B.NUM, B.SUBJECT, B.NALJA, A.MEMBERNAME"+	
							" FROM BBS_USER A INNER JOIN BBS B ON A.MEMBERNUM = B.MEMBERNUM ORDER BY NUM DESC";
						
						Connection conn = MyOracle.getConnection();
						try{
							Statement stmt = conn.createStatement();
							ResultSet rs = stmt.executeQuery(sql);
							while(rs.next()){
						%>
						<tr>
							<td align="center">
								<%=rs.getInt(1) %>
							</td>
							<td align="left">
								<a href = "detail.jsp?idx=<%=rs.getInt(1)%>"><%=rs.getString(2) %></a>
							</td>
							<td align="center">
								<%=rs.getDate(3) %>
							</td>
							<td align="center">
								<%=rs.getString(4) %>
							</td>
						</tr>
						<%
							}
						} catch (Exception e){
							System.out.println("����");
						} finally {
							conn.close();
						}
						%>
						<tr>
							<td>
								<a href = "/web05/bbs/write.jsp">
									<input type="button" value = "�Է�" name = "test">
								</a>
							</td>
						</tr>
						<!-- �� ����Ʈ ���� -->
						</table>
				</td>
			</tr>
			<!-- ����ȭ�� ���� -->
			<!-- �ϴܺ� ���� -->
			<tr>
				<td bgcolor="#ebebeb">
					����Ư���� ���ʱ� ���ʴ��74��33 ��Ʈ�� 3�� | ����ڵ�Ϲ�ȣ 220-81-29726 | ��ǥ�̻� ������ | ���θ� (��)��Ʈ��ǻ��
					<br>
					TEL 02-3486-3456 | FAX 02-3486-7890 | ����Ǹž� �Ű��ȣ ���Ｍ�� 2003-02577ȣ
					<br>
					COPYRIGHT BY BITACADEMY CO.LTD. ALL RIGHTS RESERVED. HTTP://www.BITacademy.com
				</td>
			</tr>
			<!-- �ϴܺ� ���� -->
		</table>
	</body>
</html>