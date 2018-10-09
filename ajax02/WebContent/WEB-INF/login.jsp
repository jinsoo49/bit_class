<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int result = 0;
	String msg = "{\"root\":[{\"id\":\""+request.getParameter("id")+"\",\"result\":";
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
		pstmt = conn.prepareStatement("select count(*) as cnt from guest30 where id=? and pw=?");
		pstmt.setString(1, request.getParameter("id"));
		pstmt.setString(2, request.getParameter("pw"));
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			result=rs.getInt("cnt");
		}
		
	}finally{
		conn.close();
	}
	if(result>0){
		msg += "true";
	}else{
		msg += "false";
	}
	msg += "}]}";
	out.print(msg);

%>