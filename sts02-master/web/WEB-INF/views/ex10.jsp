<%--
  Created by IntelliJ IDEA.
  User: pro
  Date: 2018. 6. 22.
  Time: PM 3:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
	<h1>로그인(${sessionScope.login})</h1>
	<form action="lec02">
		id : <input type="text" name="id"/>
		pw : <input type="text" name="pw"/>
		<button type="submit">로그인</button>
	</form>
</body>
</html>
