<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h2>입력페이지</h2>
		<form action="insert.jsp">
			<p>제목<input type="text" name = "sub"></p>
			<p><textarea rows="5" cols="20" name="content"></textarea></p>
			<p><input type="submit" value="입력"></p>		
		</form>
	</body>
</html>