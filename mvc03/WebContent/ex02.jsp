<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			int su = 1234;
			request.setAttribute("num", su);
			String msg = request.getParameter("string");
		%>
		<h1>ex02 page</h1>
		<%-- <%@ include file="ex03.jsp" %> --%>
		<jsp:include page="ex03.jsp">
			<jsp:param value="<%=su %>" name="num"/>
		</jsp:include>
		<p>page2</p>
	</body>
</html>