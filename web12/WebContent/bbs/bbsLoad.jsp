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
	int idx = Integer.parseInt(request.getParameter("num"));
	String method = request.getMethod();
	bbsDao dao = new bbsDao();	
	dao.plusCnt(idx);
	bbsBean bean = dao.view(idx);
	
	%>
	<body>
	<h1>�� ��ȸ</h1>
		<table width="550">
			<tr align="right">
				<td width="15%" bgcolor="#ebebeb">
					�۾���
				</td>
				<td width="10%" align="left">
					<input type="text" name = "memberNum" value = "<%=bean.getSabun() %>" readonly="readonly">
				</td>
				<td width="15%" align="left" bgcolor="#ebebeb">
					��¥
				</td>
				<td width="10%">
					<input type="text" name = "nalja" value = "<%=bean.getNalja() %>" readonly="readonly">
				</td>
			</tr>
			<tr align="right">
				<td bgcolor="#ebebeb">
					����
				</td>
				<td colspan="5" align="left">
					<input type="text" name = "subject" value = "<%=bean.getSub() %>" readonly="readonly">
				</td>
			</tr>
			<tr align="right">
				<td bgcolor="#ebebeb">����</td>
				<td colspan="3" align="left">
					<textarea rows="5" cols="40" name = "content" readonly="readonly" >
						<%=bean.getContent() %>
					</textarea>
				</td>
			</tr>
			<tr align="right">
				<td colspan="4">
				<form action="index.jsp">
					<input type="hidden" name="num" value ="<%=bean.getNum() %>">
					<input type="hidden" name="pg" value ="bbs">
					<input type="hidden" name="action" value ="edit">
					<input type="button" value="�� ��">
					<input type="button" value="����">
				</form>
				</td>
			</tr>
		</table>
	</body>
</html>