<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>ex03 page</h1>
		<p>ex03 msg = <%=request.getParameter("msg") %> </p>
		<p>ex03 num = <%=request.getAttribute("num") %></p>
	</body>
</html>