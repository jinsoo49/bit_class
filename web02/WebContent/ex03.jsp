<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<%
		// ������ ��밡��
		out.println("<title>Insert title here</title>");
		%>
	</head>
	
	<body>
		<h1>html�� �ۼ�</h1>
		
		<!-- 
			html�� �ּ� (�ҽ����⿡�� ����)
		 -->
		
		<%	
			// ��ũ��Ʈ��
			
			/*
			�ڹ��� �ּ� (������ ����)
			*/			
		
			out.println("<h1>Java�� �ۼ�</h1>");		
		
			for(int i = 0; i < 10; i++){
		%>
		
		<p>����</p>
		
		
		<!-- �ǳʶ�� �ݾƵ� �� -->		
		<%
			} // for end
			
		// ������ ��밡��
		%>
	</body>
</html>