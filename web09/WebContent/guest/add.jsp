<%@page import="com.day06.util.MyOracle"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	<%
	
	// ����Ʈ���� ���� --> get���
	// �Է� submit���� ���� --> post���
	if("POST".equals(request.getMethod())){		
		request.setCharacterEncoding("EUC-KR");
		String sabun = request.getParameter("sabun");
		String name = request.getParameter("name");
		String pay = request.getParameter("pay");
		String sql = "insert into guest values ("+sabun+", '"+name+"', sysdate, "+pay+")";
		int cnt = 0;
		try{
			Statement stmt = MyOracle.getConnection().createStatement();
			cnt = stmt.executeUpdate(sql);
		} catch (Exception e){
			e.printStackTrace();
		} finally {
			MyOracle.getConnection();
		}
		if(cnt == 0){
			response.sendRedirect("add.jsp");
		} else {
			response.sendRedirect("list.jsp");			
		}
		
		return;
	}
	
	
	%>
	<body>
		<%@ include file = "../template/header.jspf" %>
		<%@ include file = "../template/menu.jspf" %>
		<h1>�Է�������</h1>
			<form method="post">
				<table>
					<tr>
						<td>
							���
						</td>
						<td>
							<input type="text" name="sabun">
						</td>
					</tr>
					<tr>
						<td>
							�̸�
						</td>
						<td>
							<input type="text" name="name">
						</td>
					</tr>
					<tr>
						<td>
							�ݾ�
						</td>
						<td>
							<input type="text" name="pay">
						</td>
					</tr>
					<tr>
						<td colspan = "2">
							<input type="submit" name="�Է�">
							<input type="reset" name="���">
						</td>
					</tr>
				</table>
			</form>
		<%@ include file = "../template/footer.jspf" %>
	</body>
</html>