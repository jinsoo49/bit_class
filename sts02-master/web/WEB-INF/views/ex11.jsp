<%--
  Created by IntelliJ IDEA.
  User: pro
  Date: 2018. 6. 22.
  Time: PM 3:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<title>Title</title>
</head>
<body>
	<c:if test="${login}">
		<h1>로그인 성공</h1>
	</c:if>
</body>
</html>
