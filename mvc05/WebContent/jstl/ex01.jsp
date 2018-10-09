<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import = "com.bit.model.GuestBean" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>JSTL lib</h1>
		<p><c:out value="abcdefg"></c:out></p>
		<p><c:out value="12345"></c:out></p>
		<p><c:out value='${3.14+5 }'>abacdaddsfasd</c:out></p>
		<p><c:out value="${null }">메세지</c:out></p>
		<p><c:set var="msg" value="자바"></c:set></p>		<!-- 별도의 scope 설정 가능 -->
		<p>msg = <c:out value="${msg }"></c:out> </p>
		<c:set var="bean" value="<%=new GuestBean() %>"></c:set>
		<c:set target="${bean }" property="sabun" value="1234"></c:set>
		<c:set target="${bean }" property="name" value="root"></c:set>
		<c:set target="${bean }" property="nalja" value="<%new Date() %>"></c:set>
		<p>bean = <c:out value="${bean.sabun }"></c:out> </p>
		<p>bean = <c:out value="${bean.name }"></c:out> </p>
		<p>bean = <c:out value="${bean.nalja }"></c:out> </p>
	</body>
</html>