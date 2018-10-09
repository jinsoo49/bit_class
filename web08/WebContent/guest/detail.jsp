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
	       <!-- 상단부 시작 -->
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
	       <!-- 상단부 종료 -->
	       <!-- 메인페이지 시작 -->
	       <tr>
		       <td align="center">
		       		<h1>상세페이지</h1>
		       		<table>
			       		<tr>
				       		<td width="100" bgcolor="#ebebeb">
				       			사번
				       		</td>
				       		<td>
				       			<%=map.get("sabun") %>
				       		</td>
			       		</tr>
			       		<tr>
				       		<td width="100" bgcolor="#ebebeb">
				       			이름
				       		</td>
				       		<td>
				       			<%=map.get("name") %>
				       		</td>
			       		</tr>
			       		<tr>
				       		<td width="100" bgcolor="#ebebeb">
				       			날짜
				       		</td>
				       		<td >
				       			<%=map.get("nalja") %>
				       		</td>
			       		</tr>
			       		<tr>
				       		<td width="100" bgcolor="#ebebeb">
				       			금액
				       		</td>
				       		<td>
				       			<%=map.get("pay") %>
				       		</td>
			       		</tr>
			       		<tr>
			       			<td colspan="5">
			       				<a href = "modify.jsp?sabun=<%=map.get("sabun") %>&name=<%=map.get("name") %>&pay=<%=map.get("pay")%>" style="text-decoration: none">[수 정]</a>
			       				<a href = "delete.jsp?sabun=<%=map.get("sabun") %>" style="text-decoration: none">[삭 제]</a>
			       			</td>
			       		</tr>
		       		</table>
		       </td>
	       </tr>
	       <!-- 하단부 시작 -->
	       <tr>
		       <td>
		          Copyright &copy; 비트캠프 All rights reserved.
		       </td>
	       </tr> 
	       <!-- 하단부 종료-->
	   </table>
	</body>
</html>