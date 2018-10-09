<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>jstl 그 밖의 명령어</h1>
		<c:url var="myPath" value="ex04.jsp">
			<c:param name="id" value="admin"></c:param>
			<c:param name="pw" value="1234"></c:param>
		</c:url>
		<a href="${myPath }">go ex04</a>
		
	</body>
</html>