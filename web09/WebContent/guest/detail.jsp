<%@page import="com.day06.util.MyOracle"%>
<%@page import="com.day06.bean.GuestBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	<%
	
	String sabun = request.getParameter("sabun");
	String sql = "select * from guest where sabun = "+sabun;
	GuestBean bean = new GuestBean();
	
	try{
		stmt = MyOracle.getConnection().createStatement();
		rs = stmt.executeQuery(sql);
		
		if(rs.next()){
			bean.setSabun(rs.getInt("sabun"));
			bean.setName(rs.getString("name"));
			bean.setNalja(rs.getDate("nalja"));
			bean.setPay(rs.getInt("pay"));
		}
		
	} catch (Exception e){
		e.printStackTrace();
	} finally {
		MyOracle.getConnection().close();
	}
	
	
	%>
	<body>
		<%@ include file = "../template/header.jspf" %>
		<%@ include file = "../template/menu.jspf" %>
		
		<h1>상세정보</h1>
		<table border="1" cellspacing="0">
			<tr>
				<td bgcolor="#ebebeb" width="150" align="center">
					사번
				</td>
				<td width="200" align="right" >
					<%=bean.getSabun() %>
				</td>
			</tr>		
			<tr>
				<td bgcolor="#ebebeb" align="center">
					이름
				</td>				
				<td align="right">
					<%=bean.getName() %>
				</td>
			</tr>		
			<tr>
				<td bgcolor="#ebebeb" align="center">
					입사일
				</td>
				<td align="right">
					<%=bean.getNalja() %>
				</td>
			</tr>		
			<tr>
				<td bgcolor="#ebebeb" align="center">
					금액
				</td>
				<td align="right">
					<%=bean.getPay() %>
				</td>
			</tr>		
		</table>
		<%@ include file = "../template/footer.jspf" %>
	</body>
</html>