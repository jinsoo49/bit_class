<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.day05.util.MyOracle"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
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
					<%
					int num = Integer.parseInt(request.getParameter("idx"));
					
					String name = "";
					String sub = "�������";
					String content = "";
					Date nalja = null;
					
					String sql = "select num, subject, "+
					"(select memberName from bbs_user B where B.memberNum = A.memberNum)"+
					"as memberName,nalja,content from bbs A where num ="+num;
					
					Connection conn = MyOracle.getConnection();
					
					try{
						Statement stmt = conn.createStatement();
						ResultSet rs = stmt.executeQuery(sql);
						if(rs.next()){
							num = rs.getInt(1);
							sub = rs.getString(2);
							name = rs.getString(3);
							nalja = rs.getDate(4);
							content = rs.getString(5);
						}
					} finally {
						conn.close();
					}
					
					%>
					<h1><%=num %>�� �� �󼼺���</h1>
					<table width="80%" border="1" cellspacing="0" align="center">
						<!-- ���� -->
						<tr>
							<td bgcolor="#e8e8e8" align="center" width="15%">
								����
							</td>
							<td colspan="3">
								<%=sub %>
							</td>
						</tr>
						
						<!-- �۾��� & ��¥ -->
						<tr>
							<td bgcolor="#e8e8e8" align="center" width="15%">�۾���</td>
							<td><%=name %></td>
							<td bgcolor="#e8e8e8" align="center" width="10%">��¥</td>
							<td width="20%"><%=nalja %></td>
						</tr>
						
						<!-- ���� -->
						<tr>
							<td colspan="4" bgcolor="#e8e8e8" align="center">����������������</td>
						</tr>
						
						<!-- ���� -->
						<tr>
							<td colspan="4" rowspan="10" height="300" valign="top">
								<%=content %>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<!-- ����ȭ�� ���� -->
			<!-- �ϴܺ� ���� -->
			<tr>
				<td bgcolor="#ebebeb">
					<br><br><br>
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