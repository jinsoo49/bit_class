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
		subject = subject.replace(" ", "&nbsp;");		// ���� ������

		String param2 = request.getParameter("memberNum");

		String param3 = request.getParameter("content");
		String content = param3.replace("<", "&lt;");	// �±� �Է¹���
		content = content.replace(">", "&gt;");			// ���� ����
		content = content.replace("\r\n", "\n");		// Ÿ os�� ���� ���� ���� �ذ�
		content = content.replace("\n", "<br>");		// �����츦 ���� ���� �����ذ�
		content = content.replace(" ", "&nbsp;");		// ���� ������
		
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