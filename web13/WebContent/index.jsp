<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	<%
		//메뉴에서 받아옴
		String url = "main.jsp";
		String name = request.getParameter("name");
		
		if("list".equals(name)){
			url = "list.jsp";
		}else if("add".equals(name)){
			url = "add.jsp";
		}else if("detail".equals(name)){
			url = "detail.jsp";
		}
		
	

// 		if(name != null){
// 			name += ".jsp";
// 		}else if(name == null){
// 			name = "main.jsp";
// 		}
	%>
	<body>
		<table width="1024" align="center">
			<tr>
				<td>
					<img src = "imgs/logo.jpg">
				</td>
			</tr>
			<tr>
				<td>
					<a href = "index.jsp?name=list">리스트</a>
				</td>
			</tr>
			<tr>
				<td>
					<!-- 파라미터를 통하여 전달이 불가능하다? -> attribute 사용 -->
					<jsp:include page="<%=url %>"></jsp:include>
					<%
					String result = (String) request.getAttribute("result");
					if(result != null){
						response.sendRedirect(result);
					}
					%>
				</td>
			</tr>
			<tr>
				<td>
					copyright &copy; 비트캠프 all rights reserved.
				</td>
			</tr>
		
		</table>
	</body>
</html>