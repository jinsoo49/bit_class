<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h1>내용</h1>
		<%
		ArrayList<String[]> list = (ArrayList<String[]>) application.getAttribute("list");		
		%>
		<table>
		
			<tr>
				<th>제목</th>
				<th>내용</th>
			</tr>
				<%if(list != null){
					for(int i = 0; i < list.size(); i++){
						String[] row = list.get(i);%>
			<tr>
				<td><%=row[0] %></td>
				<td><%=row[1] %></td>
			</tr>
			<%		}
				}%>
			
		</table>
		
		
		<p><a href = "add.jsp">입력</a></p>
	</body>
</html>














