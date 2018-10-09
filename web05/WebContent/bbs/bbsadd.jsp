<%@page import="java.sql.Date"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.day05.util.MyOracle"%>
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
		String param1 = request.getParameter("subject");
		String subject = param1.replace("<", "&lt;");
		subject = subject.replace(">", "&gt;");
		subject = subject.replace(" ", "&nbsp;");		// 띄어쓰기 여러번

		String param2 = request.getParameter("memberNum");

		String param3 = request.getParameter("content");
		String content = param3.replace("<", "&lt;");	// 태그 입력방지
		content = content.replace(">", "&gt;");			// 위와 동일
		content = content.replace("\r\n", "\n");		// 타 os를 위한 개행 문제 해결
		content = content.replace("\n", "<br>");		// 윈도우를 위한 개행 문제해결
		content = content.replace(" ", "&nbsp;");		// 띄어쓰기 여러번
		
		int memberNum = Integer.parseInt(param2);
		
		String sql = "INSERT INTO BBS (NUM, SUBJECT, CONTENT, MEMBERNUM) VALUES"+
				"(BBS_SEQ.NEXTVAL, '"+subject+"', '"+param3+"',"+memberNum+")";
		
		Connection conn = MyOracle.getConnection();
		Statement stmt = conn.createStatement();
		
		int cnt = stmt.executeUpdate(sql);
		
		if(cnt > 0){
			response.sendRedirect("list.jsp");
		}else{
			response.sendRedirect("write.jsp");
		}
		conn.close();
		
		%>
	</body>
</html>