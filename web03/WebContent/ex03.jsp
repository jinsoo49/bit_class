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
				���� : ������
				���� : �ּ��� ����, ���ู��(����, Ư������), ���ڵ�����
			post
				���� : �ּ� ������ ����, ���� �������
				���� : get���� ����
		*/
		%>
	
		<h1>��������</h1>
		
		<!-- form action >> �ش� �������� ���� ���� -->
		<form action="ex02.jsp" method="post">	<!-- post >> url�� ���� ���� �ȵǰ� -->
			id : <input type = "text" name = "id"><br>
			pw : <input type = "password" name = "password"><br>
			<!-- type = "submit" action���� ������ �������� ���� ���� -->
			<input type = "submit" value = "����">
		</form>	
	</body>
</html>