<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>ex01 page</h1>
		<p>다음은 .jsp 페이지입니다.</p>
		<!-- <%@include file="ex02.jsp" %> -->
		<jsp:include page="ex02.jsp"></jsp:include>
		<p>계속된 ex01 페이지 입니다.</p>
	</body>
</html>