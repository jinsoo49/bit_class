<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	<%
		String name = request.getParameter("name");
		String sabun = request.getParameter("sabun");
		String bbs = "main.jsp";
		String pg = request.getParameter("pg");
		String action = request.getParameter("action");
		
		if(action != null){
			bbs=pg+"/"+action+".jsp";			
		}
			if(action.equals("logout")){
				session.invalidate();
				response.sendRedirect("index.jsp");
			}
	/*	int sabun = Integer.parseInt(request.getParameter("memberNum"));
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		
		request.setAttribute("sabun", sabun);
		request.setAttribute("subject", subject);
		request.setAttribute("content", content);
	*/
	%>
	<jsp:useBean id="bean" class="com.day08.bean.bbsBean" scope="request"></jsp:useBean>
	<jsp:setProperty property="*" name="bean"/>
	
	<jsp:useBean id="login" class="com.day08.bean.userBean" scope="session"></jsp:useBean>
	<body>
		<table width="1024" align="center">
			<tr>
				<td width="70%">
					<img alt = "logo" src = "imgs/logo.png">
				</td>
				<td width="30%">
					<%
					if(login.isResult()){
						out.println(login.getSabun());
						%>님 환영합니다.
						<a href ="index.jsp?pg=login&action=logout">Logout</a>
						<%	
					}else{
						%>
						<a href ="index.jsp?pg=login&action=form">Login</a>	
						<%				
					}
					
					%>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center" bgcolor="#cccccc">
					<a href="index.jsp">[HOME]</a>
					<a href="index.jsp?action=list&pg=bbs">[게시판]</a>
					<a href="index.jsp?pg=login&action=form">[로그인]</a>
					<a href="index.jsp">[오시는길]</a>
				</td>
			</tr>
			<tr>
				<td colspan="2">
				<!-- 내용 시작 -->
					<jsp:include page = "<%=bbs %>">
						<jsp:param value="<%=sabun %>" name="sabun"/>
						<jsp:param value="<%=name %>" name="name"/>
					</jsp:include>
				<!-- 내용 끝 -->
				</td>
			</tr>
			<tr>
				<td>
				</td>
				<td>
				</td>
			</tr>
		</table>
	</body>
</html>