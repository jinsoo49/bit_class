<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- ��Ƽ�� - Ŭ���� ��, import ���� -->
<%@ page import = "java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>������</title>
	</head>
	<!-- �޼ҵ带 �̿� -->
	<%! // ����� - Ŭ���� ��, �޼ҵ� �� => �ʵ�
		public int func01(int a, int b){
			return a*b;
		}
	%>
	
	<body>
		<% // ��Ƽ��, Ŭ���� �ۿ��� import �Ͽ����Ƿ� ��� ����
		Date date = new Date();
		out.println(date);
		%>	
		<h1>�������� ǥ�� �־� ����ϼ���</h1>
		<table border = "1" cellspacing="0">			
			<%	// ��ũ��Ʈ�� - �޼��� ����
				// out ���� ���� ��ũ��Ʈ�������� ��� ����
				for(int i = 2; i < 10; i++){
			%>
				<tr>
				<td>
				<%
					out.print(i+"��");
				%>
				</td>		
					<% 
					for(int j = 1; j < 10; j++){
					%>
						<td>
						<!-- jsp�� ǥ������ �̿��Ͽ� ��� -->
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