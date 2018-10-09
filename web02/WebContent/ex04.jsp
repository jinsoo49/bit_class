<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 디렉티브 - 클래스 밖, import 가능 -->
<%@ page import = "java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>구구단</title>
	</head>
	<!-- 메소드를 이용 -->
	<%! // 선언부 - 클래스 안, 메소드 밖 => 필드
		public int func01(int a, int b){
			return a*b;
		}
	%>
	
	<body>
		<% // 디렉티브, 클래스 밖에서 import 하였으므로 출력 가능
		Date date = new Date();
		out.println(date);
		%>	
		<h1>구구단을 표에 넣어 출력하세요</h1>
		<table border = "1" cellspacing="0">			
			<%	// 스크립트릿 - 메서드 내부
				// out 같은 경우는 스크립트릿에서만 사용 가능
				for(int i = 2; i < 10; i++){
			%>
				<tr>
				<td>
				<%
					out.print(i+"단");
				%>
				</td>		
					<% 
					for(int j = 1; j < 10; j++){
					%>
						<td>
						<!-- jsp의 표현식을 이용하여 출력 -->
						<%=i %> * <% out.print(j); %> = <%=i*j %>					
						</td>
					<%
					}
					%>
				</tr>
			<%
				}
			%>
		</table>		
	</body>
</html>