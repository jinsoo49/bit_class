<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<%!	// �����
		public void func01(){
		
		}
	%>
	
	<body>
	
	<% // ��ũ��Ʈ�������� ��� ������ request ����ڿ� ���� ������ ����ִ� ��ü
		// ��ũ��Ʈ���� ���尴ü - out, request, response
		String addr = request.getRemoteAddr();	
		System.out.println("addr : "+addr);
		
		String addr2 = request.getLocalAddr();
		System.out.println("localaddr : "+addr2);
		
		String uri = request.getRequestURI();
		System.out.println("uri : "+uri);
		
		String prot = request.getProtocol();
		System.out.println("protocol"+prot);
		
		int port = request.getRemotePort();		// �������� ���� ��Ʈ��ȣ
		System.out.println("port : "+port);
		
		int port2 = request.getLocalPort();
		System.out.println("localport : "+port2);
		
		StringBuffer url = request.getRequestURL();
		System.out.println("url : "+url);
		
		String name = request.getContextPath();
		System.out.println("contextname : "+name);
	%>
	</body>
</html>