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
		/* 
			http 1.0 get post
			
			get
				장점 : 빠르다
				단점 : 주소의 노출, 제약많음(길이, 특수문자), 엔코딩제약
			post
				장점 : 주소 노출이 없음, 길이 제약없음
				단점 : get보다 느림
		*/
		%>
	
		<h1>폼페이지</h1>
		
		<!-- form action >> 해당 페이지로 정보 전달 -->
		<form action="ex02.jsp" method="post">	<!-- post >> url에 정보 노출 안되게 -->
			id : <input type = "text" name = "id"><br>
			pw : <input type = "password" name = "password"><br>
			<!-- type = "submit" action으로 지정한 페이지에 정보 전달 -->
			<input type = "submit" value = "전달">
		</form>	
	</body>
</html>