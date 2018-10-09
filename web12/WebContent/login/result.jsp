<%@page import="com.day08.dao.userDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	<jsp:useBean id="bean" class="com.day08.bean.bbsBean" scope="request"></jsp:useBean>
	<jsp:useBean id="login" class="com.day08.bean.userBean" scope="session"></jsp:useBean>
	<%
	
	int sabun = bean.getSabun();
	String name = bean.getName();
	
	userDao dao = new userDao();
	boolean result = dao.login(sabun, name);
	System.out.println(sabun+"-----"+name);
	login.setSabun(sabun);
	login.setResult(result);
	
	%>
	
	<body>
		<h1>로그인------<%=result %></h1>
	</body>
</html>