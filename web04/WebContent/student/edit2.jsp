<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
				<td colspan="6" align="center">
					<!-- content start -->
					<h1>
						성적 입력 <%=request.getParameter("err") %>
					</h1>
						<%
						String param = request.getParameter("num");
						int num = Integer.parseInt(param);
						
						String sql = "SELECT NAME, KOR, ENG, MATH, NUM FROM STUDENT WHERE NUM = "+param;	
						String driver = "oracle.jdbc.driver.OracleDriver";
						String url = "jdbc:oracle:thin:@localhost:1521:xe";
						String user = "scott";
						String password = "tiger";
						
						Connection conn = null;
						Statement stmt = null;		
						ResultSet rs = null;
						
						try{
							Class.forName(driver);
							conn = DriverManager.getConnection(url, user, password);
							stmt = conn.createStatement();
							rs = stmt.executeQuery(sql);
							if(rs.next()){
						%>
							<form action="update.jsp">
								<table>
									<tr>
										<td>
											학번
										</td>
										<td>
											<%=request.getParameter("num")%>
										</td>
									</tr>
									<tr>
										<td>
											이름
										</td>
										<td>
											<%=rs.getString(1)%>
										</td>
									</tr>
									<tr>
										<td>
											국어
										</td>
										<td>
											<input type = "text" name = "kor" value = "<%=rs.getInt(2)%>">
											<%
											String errIdx = request.getParameter("err");
											String errMsg = request.getParameter("errmsg");
											if("0".equals(errIdx)){
												if("1".equals(errMsg)){
													out.println("<font color='red'><b>0~100까지의 값만 가능합니다.</b></font>");
												}else if("2".equals(errMsg)){
													out.println("<font color='red'><b>값을 입력해주세요.</b></font>");														
												}else if("3".equals(errMsg)){
													out.println("<font color='red'><b>숫자만 입력하세요.</b></font>");														
												}
											}
											%>
										</td>
									</tr>
									<tr>
										<td>
											영어
										</td>
										<td>
											<input type = "text" name = "eng" value = "<%=rs.getInt(3) %>">
											<%
											if("1".equals(errIdx)){
												if("1".equals(errMsg)){
													out.println("<font color='red'><b>0~100까지의 값만 가능합니다.</b></font>");
												}else if("2".equals(errMsg)){
													out.println("<font color='red'><b>값을 입력해주세요.</b></font>");														
												}else if("3".equals(errMsg)){
													out.println("<font color='red'><b>숫자만 입력하세요.</b></font>");														
												}
											}
											%>
										</td>
									</tr>
									<tr>
										<td>
											수학
										</td>
										<td>
											<input type = "text" name = "math" value = "<%=rs.getInt(4) %>">
											<%
											if("2".equals(errIdx)){
												if("1".equals(errMsg)){
													out.println("<font color='red'><b>0~100까지의 값만 가능합니다.</b></font>");
												}else if("2".equals(errMsg)){
													out.println("<font color='red'><b>값을 입력해주세요.</b></font>");														
												}else if("3".equals(errMsg)){
													out.println("<font color='red'><b>숫자만 입력하세요.</b></font>");														
												}
											}
											%>
										</td>
									</tr>					
									<tr>
										<td colspan="2">
											<input type="hidden" name = "num" value="<%=rs.getInt(5)%>">
											<input type="submit" value="선 택">
										</td>
									</tr>
								</table>
							</form>
							
						<%	
							}	// if rs.next() end
						} catch (Exception e){
							
						} finally {
							try{
								if(rs != null){
									rs.close();
								}
								if(stmt != null){
									stmt.close();
								}
								if(conn != null){
									conn.close();
								}
							} catch(Exception e){
								
							}
						}
						%>
									
					
					<!-- content end -->
				</td>
			</tr>
			
			<tr>
				<td colspan="6" bgcolor = "#ebebeb">
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