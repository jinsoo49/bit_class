<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.sql.ResultSet"%>
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
	<%
	HashMap map = new HashMap();
	int sabun = Integer.parseInt(request.getParameter("sabun"));
	String sql = "SELECT * FROM GUEST WHERE SABUN = "+sabun;
		       		
	String driver = application.getInitParameter("driver");
	String url = application.getInitParameter("url");
	String user = application.getInitParameter("user");
	String password = application.getInitParameter("password");
		    		
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
		    		
	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url, user, password);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		
		if(rs.next()){
			map.put("sabun", rs.getInt(1));
			map.put("name", rs.getString(2));
			map.put("nalja", rs.getDate(3));
			map.put("pay", rs.getInt(4));
		}
	} catch (Exception e){
		e.printStackTrace();
	} finally {
		if(rs != null){
			rs.close();
		}
		if(stmt != null){
			stmt.close();
		}
		if(conn != null){
			conn.close();
		}
	}
		       		
	%>
	<body>
	   <table align="center">
	       <!-- ��ܺ� ���� -->
	       <tr>
		       <td align="center">
		          <img alt = "logo" src = "<%=application.getContextPath()%>/imgs/logo.png">
		       </td>
	       </tr>
	       <tr>
		       <td align="center" bgcolor="#ebebeb">
		          <a href = "<%=application.getContextPath()%>" style="text-decoration: none">HOME</a>
		          <a href = "<%=application.getContextPath()%>/guest/list.jsp" style="text-decoration: none">GUEST</a>
		          <a href = "#" style="text-decoration: none">LOGIN</a>
		       </td>
	       </tr>
	       <!-- ��ܺ� ���� -->
	       <!-- ���������� ���� -->
	       <tr>
		       <td align="center">
		       		<h1>��������</h1>
		       		<table>
			       		<tr>
				       		<td width="100" bgcolor="#ebebeb">
				       			���
				       		</td>
				       		<td>
				       			<%=map.get("sabun") %>
				       		</td>
			       		</tr>
			       		<tr>
				       		<td width="100" bgcolor="#ebebeb">
				       			�̸�
				       		</td>
				       		<td>
				       			<%=map.get("name") %>
				       		</td>
			       		</tr>
			       		<tr>
				       		<td width="100" bgcolor="#ebebeb">
				       			��¥
				       		</td>
				       		<td >
				       			<%=map.get("nalja") %>
				       		</td>
			       		</tr>
			       		<tr>
				       		<td width="100" bgcolor="#ebebeb">
				       			�ݾ�
				       		</td>
				       		<td>
				       			<%=map.get("pay") %>
				       		</td>
			       		</tr>
			       		<tr>
			       			<td colspan="5">
			       				<a href = "modify.jsp?sabun=<%=map.get("sabun") %>&name=<%=map.get("name") %>&pay=<%=map.get("pay")%>" style="text-decoration: none">[�� ��]</a>
			       				<a href = "delete.jsp?sabun=<%=map.get("sabun") %>" style="text-decoration: none">[�� ��]</a>
			       			</td>
			       		</tr>
		       		</table>
		       </td>
	       </tr>
	       <!-- �ϴܺ� ���� -->
	       <tr>
		       <td>
		          Copyright &copy; ��Ʈķ�� All rights reserved.
		       </td>
	       </tr> 
	       <!-- �ϴܺ� ����-->
	   </table>
	</body>
</html>