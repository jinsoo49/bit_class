<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h1>���� ��ü</h1>
		
		<%
		
		//���� ����
		session.invalidate();
		
		String id = session.getId();
		long time = session.getCreationTime();
		long time2 = session.getLastAccessedTime();
		
		Date date = new Date(time);
		Date date2 = new Date(time2);
		%>
		
		<p>id : <%=id %></p>
		<p>time : <%=date %></p>
		<p>time2 : <%=date2 %></p>
		
		<!-- �ڷᱸ���� map�� ����, ���� key���� �����ÿ� �ش� key�� value ���� ��� -->
		<p>msg2 : <%=session.getAttribute("msg") %>
		
		<a href = "ex07.jsp">next</a>
	</body>
</html>