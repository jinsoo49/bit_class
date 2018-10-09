<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<%
		// 여러번 사용가능
		out.println("<title>Insert title here</title>");
		%>
	</head>
	
	<body>
		<h1>html로 작성</h1>
		
		<!-- 
			html의 주석 (소스보기에서 보임)
		 -->
		
		<%	
			// 스크립트릿
			
			/*
			자바의 주석 (보이지 않음)
			*/			
		
			out.println("<h1>Java로 작성</h1>");		
		
			for(int i = 0; i < 10; i++){
		%>
		
		<p>내용</p>
		
		
		<!-- 건너띄어 닫아도 됨 -->		
		<%
			} // for end
			
		// 여러번 사용가능
		%>
	</body>
</html>