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
		<h1>세션 객체</h1>
		
		<%
		
		//세션 갱신
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
		
		<!-- 자료구조의 map과 동일, 같은 key값이 있을시에 해당 key의 value 값을 덮어씀 -->
		<p>msg2 : <%=session.getAttribute("msg") %>
		
		<a href = "ex07.jsp">next</a>
	</body>
</html>