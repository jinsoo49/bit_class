<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page errorPage="../err.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<body>
		<table width="800" align="center">
			<!-- ��ܺ� ���� -->
			<tr>
				<td>
					<!-- ��� �ΰ� �̹��� ���� -->
					<img src="/web05/imgs/logo.png" width="100%" >
				</td>
			</tr>
			<tr>
				<td bgcolor = "#451b61" align="center">
					<!-- style="text-decoration: none >> �����۸�ũ ���� ��Ȱ��ȭ  -->
					<a href = "/web05/index.jsp" style="text-decoration: none">
						<font color="#FFFFFF">|| H O M E ||</font>
					</a>
					<a href = "/web05/user/useradd.jsp" style="text-decoration: none" style = "text-transform: none">
						 <font color="#FFFFFF">������ ||</font>
					</a>
					<a href = "/web05/bbs/list.jsp" style="text-decoration: none">
						 <font color="#FFFFFF">�Խ��� ||</font>
					</a>
					<%
					Boolean login = (Boolean) session.getAttribute("result");
					if(login == null || login == false){
					%>
					<a href = "/web05/login/form.jsp" style="text-decoration: none">
					     <font color="#FFFFFF"> �α��� ||</font>
					</a>
					<%
					}else{
					%>
					<a href = "/web05/login/logout.jsp" style="text-decoration: none">
					     <font color="#FFFFFF"> �α׾ƿ� ||</font>
					</a>
					<%
					}
					%>
				</td>
			</tr>
			<!-- ��ܺ� ���� -->
			<!-- ����ȭ�� ���� -->
			<tr>
				<td>
					<form action="bbsadd.jsp">
						<table align="center">
							<!-- ���� -->
							<tr>
								<td width="100" align="center">
									����
								</td>
								<td>
									<input type = "text" name = "subject" size = "48">
								</td>
							</tr>
							
							<!-- ��� -->
							<tr>
								<td width="100" align="center">
									���
								</td>
								<td>
									<input type = "text" name = "memberNum" size = "5">
								</td>
							</tr>
							
							<!-- ���� -->
							<tr>
								<td width="100" align="center">
									����
								</td>
								<td>
									<textarea rows="5" cols="49" name="content"></textarea>								
								</td>
							</tr>
							
							<!-- �ۼ�/��ҹ�ư -->
							<tr>
								<td colspan="2" align = "right">
									<input type="submit" value="�Է�">
									<input type="reset" value="���">
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
			<!-- ����ȭ�� ���� -->
			<!-- �ϴܺ� ���� -->
			<tr>
				<td bgcolor="#ebebeb">
					����Ư���� ���ʱ� ���ʴ��74��33 ��Ʈ�� 3�� | ����ڵ�Ϲ�ȣ 220-81-29726 | ��ǥ�̻� ������ | ���θ� (��)��Ʈ��ǻ��
					<br>
					TEL 02-3486-3456 | FAX 02-3486-7890 | ����Ǹž� �Ű��ȣ ���Ｍ�� 2003-02577ȣ
					<br>
					COPYRIGHT BY BITACADEMY CO.LTD. ALL RIGHTS RESERVED. HTTP://www.BITacademy.com
				</td>
			</tr>
			<!-- �ϴܺ� ���� -->
		</table>
	</body>
</html>