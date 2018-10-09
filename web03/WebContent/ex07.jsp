<%@page import="java.io.Writer"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h1>response 객체</h1>
		
		
		<%		
		Writer myOut = response.getWriter();
		myOut.write("out이 아닌 response로 전달");
		
		// 페이지를 (강제)전환할때... 내장 객체의 필수요소
		// ◆ request , response
		response.sendRedirect("http://naver.com");
		%>


</html>