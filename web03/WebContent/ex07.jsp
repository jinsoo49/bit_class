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
		<h1>response ��ü</h1>
		
		
		<%		
		Writer myOut = response.getWriter();
		myOut.write("out�� �ƴ� response�� ����");
		
		// �������� (����)��ȯ�Ҷ�... ���� ��ü�� �ʼ����
		// �� request , response
		response.sendRedirect("http://naver.com");
		%>


</html>