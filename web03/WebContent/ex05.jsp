<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<body>
		<%			
			// �̸��� �𸦽ÿ� ��밡��
			// �������� ������ ���� ����
			Enumeration names = request.getParameterNames();
			while(names.hasMoreElements()){
				String paramName = (String) names.nextElement();
				String[] values = request.getParameterValues(paramName);
				for(int i = 0; i < values.length; i++){
					values[i] = values[i].replace("\r\n", "<br>");			// textarea���� �����ҽ� ��ȯ�ʿ�
					out.println("<h1>"+paramName+" : "+values[i]+"</h1>");
				}
			}
		%>
		<br>
		<br>
		<br>
		<br>
		<%
		Map<String, String[]> map = request.getParameterMap();
		Set<String> key = map.keySet();
		Iterator<String> ite = key.iterator();
		
		while(ite.hasNext()){
			String pnm = ite.next();
			System.out.println(pnm+" : "+request.getParameter(pnm));
		}
		
		%>
		
	</body>
</html>