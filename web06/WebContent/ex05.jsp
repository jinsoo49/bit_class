<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="err.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<body>
		<%		
		
		// 각 차이점 살펴보기
		application.setAttribute("msg", "abcd1234");	// 서버에 한번 저장되면 종료할때까지
														// 값이 유지됨
														
		session.setAttribute("msg2", "xyz9876");		// 브라우져마다 하나씩 가질수 있는 속성값
		
		request.setAttribute("msg3", "req1234");		// response 하는순간 값이 사라짐
														// 에러페이지를 만나면 자동으로 response됨
		
		pageContext.setAttribute("msg4", "page1234");	// page 내부에서만 값이 살아있음
		%>
		
		<h1><%=pageContext.getAttribute("msg4") %></h1>
		<a href = "ex06.jsp">test</a>
	</body>
</html>