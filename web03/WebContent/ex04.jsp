<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h1>���� ������</h1>
		<form action="ex05.jsp">
			<table>
				<tr>
					<td>�ؽ�Ʈ�ʵ�0</td><!-- Hidden >> ����� , Readonly >> �б����� -->
					<td><input type = "hidden" name = "msg" readonly = "readonly"></td>
				</tr>
				<tr>
					<td>�ؽ�Ʈ�ʵ�1</td>
					<td><input type = "text" name = "id"></td>
				</tr>
				<tr>
					<td>�ؽ�Ʈ�ʵ�2</td>
					<td><input type = "password" name = "pw"></td>
				</tr>
				<tr>
					<td>����Ʈ</td>
					<td>
						<select name = "param3" multiple = "multiple">
							<!-- value���� ���� ���ҽ� default��(item1)���� -->
							<optgroup label="1~2">
								<option value = "i1">item1</option>
								<option value = "i2">item2</option>
								<option value = "i3" selected = "selected">item3</option>
								<option value = "i4">item4</option>
							</optgroup>
						</select>
					</td>
				</tr>				
				
				<!-- �����ڽ� -->
				<tr>
					<td>�����ڽ�</td>
					<td><!-- ������ �����ߴ°�? >> value�� 
						name�� ��ġ��Ű�� �׷�ȭ -->
						<input type="radio" name="ra" value="ra1">radio1
						<input type="radio" name="ra" value="ra2" checked = "checked">radio2<!-- �⺻üũ -->
						<input type="radio" name="ra" value="ra3">radio3
						<input type="radio" name="ra" value="ra4">radio4
					</td>
				</tr>
				<!-- üũ�ڽ� -->
				<tr>
					<td>üũ�ڽ�</td>
					<td>
						<input type="checkbox" name="chk" value="chk1">checkbox1
						<input type="checkbox" name="chk" value="chk2">checkbox2
						<input type="checkbox" name="chk" value="chk3">checkbox3
						<input type="checkbox" name="chk" value="chk4">checkbox4
					</td>
				</tr>
				<!-- �ؽ�Ʈ -->
				<tr>
					<!-- textarea - ���ڸ��� ���� ������ ���� �� -->
					<td>�ؽ�Ʈ</td>
					<td><textarea name="content" rows="7" cols=""></textarea></td>
				</tr>
				<tr>
					<!-- submit�� reset�� �������� �ѹ��� ��밡�� -->
					<td colspan = 2 align = "center">
						<input type = "submit" value = "����">
					</td>
					<td colspan = 2 align = "center">
						<input type = "button" value = "��ư">
					</td>
					<td colspan = 2 align = "center">
						<input type = "reset" value = "���">
					</td>
				</tr>
				
			</table>
		</form>
	</body>
</html>