<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
<%
		
		// 한글 변환 문제
		// post으로 보냈을시에 인코딩 확인
		// 값을 꺼내기 전에 실시하여야함
		//request.setCharacterEncoding("EUC-KR");
		
		// get방식은 server.xml파일 포트 8080 부분에서 URIEncoding="EUC-KR" 삽입
		
		String param1 = request.getParameter("sabun").trim();
		
		
		int sabun = Integer.parseInt(param1);
		
		String sql = "delete from guest where sabun = "+param1;
		
		String driver = application.getInitParameter("driver");
		String url = application.getInitParameter("url");
		String user = application.getInitParameter("user");
		String password = application.getInitParameter("password");
		
		Connection conn = null;
		Statement stmt = null;
		
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			int result = stmt.executeUpdate(sql);
			if(result>0){
				response.sendRedirect("list.jsp");
			}else{
				response.sendRedirect("add.jsp");
			}
		} catch (Exception e){
			e.printStackTrace();
		} finally {
			if(stmt != null){
				stmt.close();
			}
			if(conn != null){
				conn.close();
			}
		}
		
		%>
	<body>	
		
	</body>
</html>