<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Index.jsp</title>
	</head>
	
	<body>
	
		<table width = "100%">
			<tr>
				<td colspan = "6" bgcolor = "#ebebeb">
					<h1>���� ���� ���α׷� (ver 0.6.0)</h1>
				</td>
			</tr>
			
			<tr align="center">
				<td>
				</td>				
				<td width = "200">
					<a href = "../index.jsp" style="text-decoration: none">
						<font size="20" color="#000000">
							HOME
						</font>
					</a>
				</td>
				<td width = "200">
					<a href = "./list.jsp" style="text-decoration: none">
						<font size="20" color="#000000">
							��ü����
						</font>
					</a>
				</td>
				<td width = "200">
					<a href = "./add.jsp" style="text-decoration: none">
						<font size="20" color="#000000">
							�л����
						</font>
					</a>
				</td>
				<td width = "200">
					<a href = "./edit.jsp" style="text-decoration: none">
						<font size="20" color="#000000">
							�����Է�
						</font>
					</a>
				</td>
				<td>
				</td>
			</tr>
			
			<tr>
				<td colspan="6" align="center">
					<!-- content start -->
						<h1>�л���� ������</h1>
						<form action="./insert.jsp">
							<p>
								�й� : <input type="text" name = "num">
							</p>
							<p>
								�̸� : <input type="text" name = "name">
							</p>
							<p>
								<input type = "submit" value = "�� ��">
								<input type = "reset" value = "�� ��">
							</p>
						</form>	
					<!-- content end -->
				</td>
			</tr>
			
			<tr>
				<td colspan="6" bgcolor = "#ebebeb">
					����Ư���� ���ʱ� ���ʴ��74��33 ��Ʈ�� 3�� | ����ڵ�Ϲ�ȣ 220-81-29726 | ��ǥ�̻� ������ | ���θ� (��)��Ʈ��ǻ��
					<br>
					TEL 02-3486-3456 | FAX 02-3486-7890 | ����Ǹž� �Ű��ȣ ���Ｍ�� 2003-02577ȣ
					<br>
					COPYRIGHT BY BITACADEMY CO.LTD. ALL RIGHTS RESERVED. HTTP://www.BITacademy.com
				</td>
			</tr>
			
		</table>	
	</body>
</html>