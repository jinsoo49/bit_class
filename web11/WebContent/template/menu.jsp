<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    	String path = request.getParameter("path");
    %>
			<tr>
				<td bgcolor="#595959" align="center">
					<a href = "/web11/" style="text-decoration: none">
						<img src = "<%=path %>/imgs/home.png">
					</a>
					<a href = "<%=path %>/guest/list.jsp" style="text-decoration: none">
						<img src = "<%=path %>/imgs/list.png">
					</a>
					<a href = "<%=path %>/login/form.jsp" style="text-decoration: none">
						<img src = "<%=path %>/imgs/login.png">
					</a>
				</td>
			</tr>		
			<tr>
				<td align="center">