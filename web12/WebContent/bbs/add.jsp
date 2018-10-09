<%@page import="com.day08.dao.bbsDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	<%
		String method = request.getMethod();
		if("POST".equals(method)){
			bbsDao dao = new bbsDao();
			int sabun = Integer.parseInt(request.getParameter("memberNum"));
			String subject = request.getParameter("subject");
			String content = request.getParameter("content");
			
			dao.insert(sabun, subject, content, 0);
			
			response.sendRedirect("index.jsp?action=list&pg=");
			return;
		}
	
	
	%>
	<body>
		<h1>입력페이지</h1>
		<form method="post">
		<input type="hidden" name = "pg" value = "bbs">
		<input type="hidden" name = "action" value = "add">
			<table>
				<tr>
					<td>
						제목
					</td>
					<td>
						<input type="text" name = "subject">
					</td>
					<td>
						사번
					</td>
					<td>
						<input type="text" name = "memberNum">
					</td>
				</tr>
				<tr>
					<td colspan="1">내용</td>
					<td colspan="3">
						<textarea rows="5" cols="40" name = "content"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<input type="submit" value="입 력">
						<input type="reset" value="취 소">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>