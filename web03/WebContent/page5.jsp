<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<body>
		<table width = 800 align="center">
			<tr>
				<td colspan = 2>
					<img alt="logo" src="/img/logo.png">
				</td>
			</tr>
			<tr>
				<td width = 150 bgcolor="#FFFFEE" height="600">		
					<p><a href = "page1.jsp">�λ縻</a></p>		
					<p><a href = "page2.jsp">���ô±�</a></p>		
					<p><a href = "page3.jsp">�Խ���</a></p>		
					<p><a href = "page4.jsp">����</a></p>			
					<p><a href = "">���</a></p>		
				</td>
				<td valign="top">
				<!-- ���� �� �κ� -->			
					<h1>�Է�������</h1>
					<form action="page6.jsp">
					<table>
						<tr>				
							<td width="150" bgcolor="#ebebeb" align="right">
								��� : 
							</td>
							<td>
								<input type = "text" name = "empno">
							</td>
						</tr>
						<tr>				
							<td width="150" bgcolor="#ebebeb" align="right">
								�̸� : 
							</td>
							<td>
								<input type = "text" name = "ename">
							</td>
						</tr>
						<tr>				
							<td width="150" bgcolor="#ebebeb" align="right">
								��å :
							</td>
							<td>
							<!-- �̹� ������ �����Ƿ� select ���
								 sql = "select distinct job from emp where job <> 'PRESIDENT'�� �̿��Ͽ� �ݺ������� �޾ƿ;��� -->
								<select name = "job">
									<option>
										CLERK
									</option>
									<option>
										SALESMAN
									</option>
									<option>
										MANAGER
									</option>
									<option>
										ANALYST
									</option>
								</select>
							</td>
						</tr>
						<tr>				
							<td width="150" bgcolor="#ebebeb" align="right">
								���ӻ�� :
							</td>
							<td>
								<input type = "text" name = "mgr" value="7839" readonly = "readonly">
							</td>
						</tr>
						<tr>				
							<td width="150" bgcolor="#ebebeb" align="right">
								���� :
							</td>
							<td>
								<input type = "text" name = "sal">
							</td>
						</tr>
						<tr>				
							<td width="150" bgcolor="#ebebeb" align="right">
								�μ���ȣ :
							</td>
							<td>
							<!-- sql = select deptno from dept -->
								<select name="deptno">
									<option value = "10">
										accounting
									</option>
									<option value = "20">
										research
									</option>
									<option value = "30">
										sales
									</option>
									<option value = "40">
										operations
									</option>
								</select>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="submit" value="�Է�">
								<input type="reset" value="���">
							</td>
						</tr>
					</table>	
					</form>
				<!-- ���� �� �κ� �� -->
				</td>
			</tr>
			<tr>
				<td colspan="2" bgcolor="#CCDDFF">
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