<%@page import="com.day05.util.MyOracle"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page errorPage="err.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>사원등록</title>
	</head>
	
	<body>
		<%
		
		// add.jsp에서 보냈던 num, name 호출
		String param1 = request.getParameter("memberNum");
		String param2 = request.getParameter("name");
		
		// num, name 공백제거
		int memberNum = Integer.parseInt(param1.trim());
		String name = param2.trim();
		
		// insert 쿼리문 작성
		String sql = "INSERT INTO BBS_USER VALUES ("+memberNum+", '"+name+"')";		
		
		Connection conn = null;
		Statement stmt = null;
		
		try{
			conn = MyOracle.getConnection();
			stmt = conn.createStatement();
			
			
			int cnt = stmt.executeUpdate(sql);
			// false --> cnt == 0, true --> cnt == 1
			if(cnt > 0){
				response.sendRedirect("user/useradd.jsp");
			}else{
				response.sendRedirect("user/add.jsp");
			}			
		} catch (Exception e){
			
		} finally {
			conn.close();
		}
		
		
		%>
	</body>
</html>