<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "com.day08.bean.bbsBean" %>
<%@ page import = "com.day08.dao.bbsDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	<%
		//ArrayList<bbsBean> list = new ArrayList<bbsBean>();
		bbsDao dao = new bbsDao();
		int tot = dao.getTot();
		ArrayList<bbsBean> list = dao.getbbsList();
	%>
	<body>
		<h1>
			�Խ���----<%=tot %>���� ���� �ֽ��ϴ�
		</h1>
		<table width="80%" border="1" cellspacing="0">
			<tr>
				<th width="120">�۹�ȣ</th>
				<th>����</th>
				<th>�۾���</th>
				<th width="120">��¥</th>
			</tr>
			<%
				for(bbsBean bean : list){
			%>
			<tr>
				<td>
					<%=bean.getNum() %>
				</td>
				<td>
					<a href = "index.jsp?pg=bbs&action=bbsLoad&num=<%=bean.getNum() %>">
					<%=bean.getSub() %>
					</a>
				</td>
				<td>
					<%=bean.getSabun() %>
				</td>
				<td>
					<%=bean.getNalja() %>
				</td>
			</tr>
			<%
				}
			%>
		</table>
		<form action="index.jsp">
			<input type="hidden" name = "pg" value = "bbs">
			<input type="hidden" name = "action" value = "add">
			<input type="submit" value = "�� ��">
		</form>
	</body>
</html>