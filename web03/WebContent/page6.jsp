<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
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
				<td>
				<!-- ���� �� �κ� -->				
					<%
					int empno = Integer.parseInt(request.getParameter("empno"));
					String ename = request.getParameter("ename");
					String job = request.getParameter("job");
					int mgr = Integer.parseInt(request.getParameter("mgr"));
					int sal = Integer.parseInt(request.getParameter("sal"));
					int deptno = Integer.parseInt(request.getParameter("deptno"));
					
					String sql = "insert into emp (empno, ename, job, mgr, hiredate, sal, deptno)";
					sql += "values ("+empno+", '"+ename+"', '"+job+"', "
										+mgr+", sysdate ,"+sal+" ,"+deptno+" )";					
					
					Connection conn = null;
					Statement stmt = null;
					try{
						// DriverManager���� DB�� ������ ������
						Class.forName("oracle.jdbc.driver.OracleDriver");
						conn = DriverManager.getConnection("jdbc:oracle:thin:@203.236.209.210:1521:xe", "scott", "tiger");
						stmt = conn.createStatement();
						int cnt = stmt.executeUpdate(sql);				// insert >> ����� ���� �ʿ䰡 �����Ƿ� executeUpdate�� ����ϸ� ��
						
						if(cnt > 0){
							//out.println("<h1>�Է¿Ϸ�</h1>");
							response.sendRedirect("page3.jsp");
						}else{
							out.println("<h1>�Է½���</h1>");
						}
					} catch (ClassNotFoundException e){
						%><h1>�Է� ����</h1><%
						System.out.println("����̹� jar���� ����");	
					} catch (SQLException e){
						e.printStackTrace();
						%><h1>�Է� ����</h1><%
						System.out.println("���� ����");								
					} finally {
						try{
							if(stmt != null){
								stmt.close();
							}
							if(conn != null){
								conn.close();
							}
						} catch (Exception e){
							
						}
					}
						%>
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