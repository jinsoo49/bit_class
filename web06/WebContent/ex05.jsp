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
		
		// �� ������ ���캸��
		application.setAttribute("msg", "abcd1234");	// ������ �ѹ� ����Ǹ� �����Ҷ�����
														// ���� ������
														
		session.setAttribute("msg2", "xyz9876");		// ���������� �ϳ��� ������ �ִ� �Ӽ���
		
		request.setAttribute("msg3", "req1234");		// response �ϴ¼��� ���� �����
														// ������������ ������ �ڵ����� response��
		
		pageContext.setAttribute("msg4", "page1234");	// page ���ο����� ���� �������
		%>
		
		<h1><%=pageContext.getAttribute("msg4") %></h1>
		<a href = "ex06.jsp">test</a>
	</body>
</html>