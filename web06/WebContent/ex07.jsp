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
		
		
		String id = session.getId();
		long time = session.getCreationTime();			// 로그인 시간
		long time2 = session.getLastAccessedTime();		// 접속 후에 가장 마지막 시간
		
		Date date = new Date(time);
		Date date2 = new Date(time2);
		
		session.setAttribute("msg", "abcd1234");
		
		// 없으면 null, 있으면 값을 덮어써버림
		String msg2 = (String) session.getAttribute("msg2");
		
		System.out.println(session.getMaxInactiveInterval()); 	// 기본적으로 할당받은 세션의 시간
																// 서버로부터 할당받은 메모리의 시간
		%>
		
		<p>id : <%=id %></p>
		<p>time : <%=date %></p>
		<p>time2 : <%=date2 %></p>
		<p>msg2 : <%=msg2 %></p>
		
		
		<a href = "ex08.jsp">next</a>
	</body>
</html>