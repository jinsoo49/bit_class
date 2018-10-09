<%@page import="com.day07.bean.GuestBean"%>
<%@page import="com.day07.util.MyOracle"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.day07.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<!-- import = "com.day07.bean.GuestBean"
		 GuestBean bean = null 
		 bean = new GuestBean �� ���� -->
	
	<jsp:useBean id="bean" class="com.day07.bean.GuestBean" scope="application"></jsp:useBean>
	
	<!-- property -> �ʵ��� �ڷ����� ���缭 ó���� -->
	<!-- set, get ���� scope�� ������� -->
	<jsp:setProperty property="sabun" name="bean"/>
		<%
	
		//String param = request.getParameter("sabun");
		//int sabun = Integer.parseInt(param);
	
		//GuestBean bean = new GuestBean();
		String sql = "select * from guest where sabun = "+bean.getSabun();
		
		try{
			Statement stmt = MyOracle.getConnection().createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()){
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			MyOracle.getConnection().close();
		}
		
		
	%>
	<body>
		<jsp:include page="../template/header.jsp">
			<jsp:param value=".." name="path"/>
		</jsp:include>
		<jsp:include page="../template/menu.jsp">
			<jsp:param value=".." name="path"/>
		</jsp:include>
		<h1>
			�󼼺���
		</h1>
		<table width = "40%" cellspacing="5">
			<tr>
				<td bgcolor="#cccccc">
					�̸�
				</td>
				<td>
					<!-- bean.getsabun�� ���� -->
					<jsp:getProperty property="name" name="bean"/>
				</td>
			</tr>
			<tr>
				<td bgcolor="#cccccc">
					���
				</td>
				<td>
					<jsp:getProperty property="sabun" name="bean"/>
				</td>
			</tr>
			<tr>
				<td bgcolor="#cccccc">
					��¥
				</td>
				<td>
					<jsp:getProperty property="nalja" name="bean"/>
				</td>
			</tr>
			<tr>
				<td bgcolor="#cccccc">
					�ݾ�
				</td>
				<td>
					<jsp:getProperty property="pay" name="bean"/>
				</td>
			</tr>
			<tr>
				<td bgcolor="#cccccc" colspan="2" align="right">
					<a href = "edit.jsp?sabun=<%=bean.getSabun() %>&name=<%=bean.getName() %>&pay=<%=bean.getPay() %>">
						<input type="button" value="����">
					</a>
					<a href = "delete.jsp?sabun=<%=bean.getSabun() %>">
						<input type="button" value="����">
					</a>
				</td>
			</tr>
		</table>
		<jsp:include page="../template/footer.jsp"></jsp:include>
	</body>
</html>