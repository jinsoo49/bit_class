<%@page import="java.sql.ResultSet"%>
<%@page import="java.net.ConnectException"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.day05.util.MyOracle"%>
<%@page import="java.sql.Connection"%>
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
			<!-- 상단부 시작 -->
			<tr>
				<td>
					<!-- 상단 로고 이미지 삽입 -->
					<img src="/web05/imgs/logo.png" width="100%" >
				</td>
			</tr>
			<tr>
				<td bgcolor = "#451b61" align="center">
					<!-- style="text-decoration: none >> 하이퍼링크 밑줄 비활성화  -->
					<a href = "/web05/index.jsp" style="text-decoration: none">
						<font color="#FFFFFF">|| H O M E ||</font>
					</a>
					<a href = "/web05/user/useradd.jsp" style="text-decoration: none" style = "text-transform: none">
						 <font color="#FFFFFF">사원등록 ||</font>
					</a>
					<a href = "/web05/bbs/list.jsp" style="text-decoration: none">
						 <font color="#FFFFFF">게시판 ||</font>
					</a>
					<%
					Boolean login = (Boolean) session.getAttribute("result");
					if(login == null || login == false){
					%>
					<a href = "/web05/login/form.jsp" style="text-decoration: none">
					     <font color="#FFFFFF"> 로그인 ||</font>
					</a>
					<%
					}else{
					%>
					<a href = "/web05/login/logout.jsp" style="text-decoration: none">
					     <font color="#FFFFFF"> 로그아웃 ||</font>
					</a>
					<%
					}
					%>
				</td>
			</tr>
			<!-- 상단부 종료 -->
			<!-- 메인화면 시작 -->
			<tr>
				<td valign="top">
					<h1>사내 게시판</h1>
					<table border="1" cellspacing="0" width="80%" align="center">
						<!-- 게시판 상단부 -->
						<tr>
							<th width="10%">
							<!-- bbs num -->
								글번호 
							</th>
							<th>
							<!-- bbs subject -->
								제목
							</th>
							<th width="20%">
							<!-- bbs nalja -->
								날짜
							</th>
							<th width="13%">
							<!-- bbs membernum -->
								글쓴이
							</th>							
						</tr>
						<!-- 게시판 상단부 종료 -->
						<!-- 글 리스트 시작 -->
						<%
						
						String sql = "SELECT B.NUM, B.SUBJECT, B.NALJA, A.MEMBERNAME"+	
							" FROM BBS_USER A INNER JOIN BBS B ON A.MEMBERNUM = B.MEMBERNUM ORDER BY NUM DESC";
						
						Connection conn = MyOracle.getConnection();
						try{
							Statement stmt = conn.createStatement();
							ResultSet rs = stmt.executeQuery(sql);
							while(rs.next()){
						%>
						<tr>
							<td align="center">
								<%=rs.getInt(1) %>
							</td>
							<td align="left">
								<a href = "detail.jsp?idx=<%=rs.getInt(1)%>"><%=rs.getString(2) %></a>
							</td>
							<td align="center">
								<%=rs.getDate(3) %>
							</td>
							<td align="center">
								<%=rs.getString(4) %>
							</td>
						</tr>
						<%
							}
						} catch (Exception e){
							System.out.println("오류");
						} finally {
							conn.close();
						}
						%>
						<tr>
							<td>
								<a href = "/web05/bbs/write.jsp">
									<input type="button" value = "입력" name = "test">
								</a>
							</td>
						</tr>
						<!-- 글 리스트 종료 -->
						</table>
				</td>
			</tr>
			<!-- 메인화면 종료 -->
			<!-- 하단부 시작 -->
			<tr>
				<td bgcolor="#ebebeb">
					서울특별시 서초구 서초대로74길33 비트빌 3층 | 사업자등록번호 220-81-29726 | 대표이사 조현정 | 법인명 (주)비트컴퓨터
					<br>
					TEL 02-3486-3456 | FAX 02-3486-7890 | 통신판매업 신고번호 서울서초 2003-02577호
					<br>
					COPYRIGHT BY BITACADEMY CO.LTD. ALL RIGHTS RESERVED. HTTP://www.BITacademy.com
				</td>
			</tr>
			<!-- 하단부 종료 -->
		</table>
	</body>
</html>