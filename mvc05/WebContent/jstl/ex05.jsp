<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>jstl core 외</h1>
		<c:set var="money" value="1000000"></c:set>
		<c:out value="${money }"></c:out>
		<fmt:formatNumber value="${money }" pattern="0,000,000"></fmt:formatNumber>
		
		<%
			
			Date dat = new Date();
			pageContext.setAttribute("dat", dat);
		%>
		
		<c:out value="${dat }"></c:out>
		<div>
			<fmt:formatDate value="${dat }" pattern="HH:mm:ss"/>
		</div>
	</body>
</html>