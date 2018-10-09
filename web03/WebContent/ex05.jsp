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
			// 이름을 모를시에 사용가능
			// 동적으로 데이터 수집 가능
			Enumeration names = request.getParameterNames();
			while(names.hasMoreElements()){
				String paramName = (String) names.nextElement();
				String[] values = request.getParameterValues(paramName);
				for(int i = 0; i < values.length; i++){
					values[i] = values[i].replace("\r\n", "<br>");			// textarea에서 개행할시 변환필요
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