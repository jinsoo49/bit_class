<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<body>
		<%
			// object
			String msg = (String) application.getAttribute("msg");	// 서버에 저장
			String msg2 = (String) session.getAttribute("msg2");	// 브라우져당 저장
		%>
		
		<h1><%=msg %></h1>
	</body>
</html>