<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" 
    import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Index.jsp</title>
	</head>
	
	<body>
	
		<table width = "100%">
			<tr>
				<td colspan = "7" bgcolor = "#ebebeb">
					<h1>성적 관리 프로그램 (ver 0.6.0)</h1>
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
							전체보기
						</font>
					</a>
				</td>
				<td width = "200">
					<a href = "./add.jsp" style="text-decoration: none">
						<font size="20" color="#000000">
							학생등록
						</font>
					</a>
				</td>
				<td width = "200">
					<a href = "./edit.jsp" style="text-decoration: none">
						<font size="20" color="#000000">
							성적입력
						</font>
					</a>
				</td>
				<td>
				</td>
			</tr>
			
			<tr>
				<td colspan="7" align="center">
					<!-- content start -->
						<h1>학생 성적 목록</h1>
						
						<table width="80%" border="1" cellspacing="0">
							<tr>
								<!-- th >> tableHeader -->
								<th width="50" align="center">
									학번
								</th>
								<th align="center">
									이름
								</th>
								<th align="center">
									국어
								</th>
								<th align="center">
									영어
								</th>
								<th align="center">
									수학
								</th>
								<th width="80">
									삭제
								</th>
							</tr>
							<%
							String url =		 "jdbc:oracle:thin:@localhost:1521:xe";
							String id =			 "scott";
							String password =	 "tiger";
							
							Class.forName("oracle.jdbc.driver.OracleDriver");
							Connection conn	= 	null;
							Statement stmt = 	null;
							ResultSet rs = 		null;
							try{
								conn = DriverManager.getConnection(url, id, password);
								stmt = conn.createStatement();
								rs = stmt.executeQuery("SELECT NUM, NAME, KOR, ENG, MATH FROM STUDENT ORDER BY NUM");
								
								while(rs.next()){	
								%>
								<tr>
									<td>
										<%= rs.getInt(1) %>
									</td>
									<td>
										<%= rs.getString(2) %>
									</td>
									<td>
										<%= rs.getInt(3) %>
									</td>
									<td>
										<%= rs.getInt(4) %>
									</td>
									<td>
										<%= rs.getInt(5) %>
									</td>
									<td>
										<form action="delete.jsp" method="post">
											<input type="hidden" name = "num" value = "<%=rs.getInt(1) %>">
											<input type="submit" value="삭제">
										</form>
									</td>
								</tr>
								
								<%
								}		// while end
							} catch (Exception e){
								System.out.println("list page 오류 - 확인바람");
							} finally {
								try {
									if(rs != null){
										rs.close();
									}
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
						</table>
						
					<!-- content end -->
				</td>
			</tr>
			
			<tr>
				<td colspan="7" bgcolor = "#ebebeb">
					서울특별시 서초구 서초대로74길33 비트빌 3층 | 사업자등록번호 220-81-29726 | 대표이사 조현정 | 법인명 (주)비트컴퓨터
					<br>
					TEL 02-3486-3456 | FAX 02-3486-7890 | 통신판매업 신고번호 서울서초 2003-02577호
					<br>
					COPYRIGHT BY BITACADEMY CO.LTD. ALL RIGHTS RESERVED. HTTP://www.BITacademy.com
				</td>
			</tr>
			
		</table>	
	</body>
</html>