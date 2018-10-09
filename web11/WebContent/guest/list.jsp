<%@page import="com.day07.util.MyOracle"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.day07.bean.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<%
	ArrayList<GuestBean> list = new ArrayList<GuestBean>();
	Connection conn = MyOracle.getConnection();
		try{
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select rownum as rn, sabun, name, nalja, pay from guest");
			while(rs.next()){
				GuestBean bean = new GuestBean();
				bean.setRn(rs.getInt("rn"));
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
				
				list.add(bean);
			}
		} catch (Exception e){
			e.printStackTrace();
		} finally {
			if(conn != null)conn.close();
		}
	
	
	%>
	
	<body>
	
		<jsp:include page="../template/header.jsp">
			<jsp:param value=".." name="path"/>
		</jsp:include>
		<jsp:include page="../template/menu.jsp">
			<jsp:param value=".." name="path"/>
		</jsp:include>
		<h1>
			��� ������
		</h1>
		<table width="60%" border="1" cellspacing="0">
			<tr>
				<th>�۹�ȣ</th>
				<th>���</th>
				<th>�̸�</th>
				<th>��¥</th>
				<th>�ݾ�</th>
			</tr>
			<%
				for(GuestBean bean : list){
			%>
			<tr>
				<td width="50" align="center">
					<%=bean.getRn() %>
				</td>
				<td>
					<%=bean.getSabun() %>
				</td>
				<td>
					<a href = "detail.jsp?sabun=<%=bean.getSabun() %>">
						<%=bean.getName() %>
					</a>
				</td>
				<td>
					<%=bean.getNalja() %>
				</td>
				<td width="50">
					<%=bean.getPay() %>
				</td>
			</tr>
			<%
				}
			%>
			<tr>
				<td colspan="5" align="right">
					<a href = "add.jsp"><input type="button" value="�Է�"></a>
				</td>
			</tr>
		</table>
		<jsp:include page="../template/footer.jsp"></jsp:include>
	</body>
</html>