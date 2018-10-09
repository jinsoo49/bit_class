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
	
	<body>
		<%
		String getNum = request.getParameter("num").trim();
		String getName = request.getParameter("name").trim();
		
		
		//학번에 문자가 들어올시
		for(int i = 0; i < getNum.length(); i++){
			char temp = getNum.charAt(i);
			if(!Character.isDigit(temp)){
				response.sendRedirect("add.jsp");
				return;	
			}
		}
		
		int num = Integer.parseInt(getNum);
		
		// 글자수 체크
		if(getNum.length() < 2 || getNum.length() > 12){
			response.sendRedirect("add.jsp");
			return;
		}
		
		String sql = "insert into student (num, name) values ("+num+" ,'"+getName+"')";
		
		String url = "jdbc:oracle:thin:@203.236.209.210:1521:xe";
		String id = "scott";
		String password = "tiger";

		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = 	null;
		Statement stmt =	null;		// 결과를 받을 필요가 없으므로 resultset 사용안함	
		
		try{
			conn = DriverManager.getConnection(url, id, password);
			stmt = conn.createStatement();
			int cnt = stmt.executeUpdate(sql);
			
			if(cnt > 0){
				response.sendRedirect("../");
			}else{
				response.sendRedirect("add.jsp");
			}
			
		} catch (Exception e){			
			System.out.println("학생등록 오류");
			response.sendRedirect("add.jsp");
		} finally {
			try {
				if(stmt != null){
					stmt.close();
				}
				if(conn != null){
					conn.close();
				}
			} catch (Exception e){
				
			}
		}
		
		
		%>
	</body>
</html>