<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<body>
	   <table align="center">
	       <!-- 상단부 시작 -->
	       <tr>
		       <td align="center">
		          <img alt = "logo" src = "<%=application.getContextPath()%>/imgs/logo.png">
		       </td>
	       </tr>
	       <tr>
		       <td align="center" bgcolor="#ebebeb">
		          <a href = "<%=application.getContextPath()%>" style="text-decoration: none">[HOME]</a>
		          <a href = "<%=application.getContextPath()%>/guest/list.jsp" style="text-decoration: none">[GUEST]</a>
		          <a href = "#" style="text-decoration: none">LOGIN</a>
		       </td>
	       </tr>
	       <!-- 상단부 종료 -->
	       <!-- 메인페이지 시작 -->
	       <tr>
		       <td align="center">
		          <img alt="main" src = "imgs/main.png">
		       </td>
	       </tr>
	       <!-- 하단부 시작 -->
	       <tr>
		       <td>
		          Copyright &copy; 비트캠프 All rights reserved.
		       </td>
	       </tr> 
	       <!-- 하단부 종료-->
	   </table>
	</body>
</html>