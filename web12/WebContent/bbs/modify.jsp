<%@page import="com.day08.bean.bbsBean"%>
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
	int idx = Integer.parseInt(request.getParameter("idx"));
	bbsDao dao = new bbsDao();	
	if("POST".equals(method)){
		int sabun = Integer.parseInt(request.getParameter("memberNum"));
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		
		dao.insert(sabun, subject, content, idx);
		
		response.sendRedirect("list.jsp");
		return;
	}
	
	
	bbsBean bean = dao.view(idx);
	
	
	
	%>
	<body>
	<h1>�� ����</h1>
	<form method="post">
		<table>
			<tr>
				<td>
					����
				</td>
				<td width="80%">
					<input type="text" width="200" name = "subject" value = "<%=bean.getSub() %>">
				</td>
			</tr>
			<tr>
				<td>
					�۾���
				</td>
				<td>
					<input type="text" name = "memberNum" value = "<%=bean.getSabun() %>" readonly="readonly">
				</td>
			</tr>
			<tr>
				<td>
					��¥
				</td>
				<td>
					<input type="text" name = "nalja" value = "<%=bean.getNalja() %>" readonly="readonly">
				</td>
			</tr>
			<tr>
				<td>����</td>
				<td>
					<textarea rows="5" cols="40" name = "content">
						<%=bean.getContent() %>
					</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4">
					<input type="submit" value="Ȯ ��">
					<a href = "list.jsp">
						<input type="button" value="�ڷΰ���">
					</a>
				</td>
			</tr>
		</table>
	</form>
	</body>
</html>