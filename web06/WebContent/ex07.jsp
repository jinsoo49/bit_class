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
		
		
		String id = session.getId();
		long time = session.getCreationTime();			// �α��� �ð�
		long time2 = session.getLastAccessedTime();		// ���� �Ŀ� ���� ������ �ð�
		
		Date date = new Date(time);
		Date date2 = new Date(time2);
		
		session.setAttribute("msg", "abcd1234");
		
		// ������ null, ������ ���� ��������
		String msg2 = (String) session.getAttribute("msg2");
		
		System.out.println(session.getMaxInactiveInterval()); 	// �⺻������ �Ҵ���� ������ �ð�
																// �����κ��� �Ҵ���� �޸��� �ð�
		%>
		
		<p>id : <%=id %></p>
		<p>time : <%=date %></p>
		<p>time2 : <%=date2 %></p>
		<p>msg2 : <%=msg2 %></p>
		
		
		<a href = "ex08.jsp">next</a>
	</body>
</html>