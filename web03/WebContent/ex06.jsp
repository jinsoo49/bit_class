<%@page import="java.util.Enumeration"%>
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
			Enumeration msg = request.getHeaderNames();
		
			while(msg.hasMoreElements()){
				System.out.println(msg.nextElement());
				String key = (String) msg.nextElement();
				Enumeration<String> values = request.getHeaders(key);
				while(values.hasMoreElements()){
					System.out.println(key+" : "+values.nextElement());
				}
			}
		
			//String contentType = request.getHeader("content");
			//System.out.println("content-type"+contentType);
		%>
	</body>
</html>