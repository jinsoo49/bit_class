<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.day05.util.MyOracle"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
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
					<%
					int num = Integer.parseInt(request.getParameter("idx"));
					
					String name = "";
					String sub = "제목없음";
					String content = "";
					Date nalja = null;
					
					String sql = "select num, subject, "+
					"(select memberName from bbs_user B where B.memberNum = A.memberNum)"+
					"as memberName,nalja,content from bbs A where num ="+num;
					
					Connection conn = MyOracle.getConnection();
					
					try{
						Statement stmt = conn.createStatement();
						ResultSet rs = stmt.executeQuery(sql);
						if(rs.next()){
							num = rs.getInt(1);
							sub = rs.getString(2);
							name = rs.getString(3);
							nalja = rs.getDate(4);
							content = rs.getString(5);
						}
					} finally {
						conn.close();
					}
					
					%>
					<h1><%=num %>번 글 상세보기</h1>
					<table width="80%" border="1" cellspacing="0" align="center">
						<!-- 제목 -->
						<tr>
							<td bgcolor="#e8e8e8" align="center" width="15%">
								제목
							</td>
							<td colspan="3">
								<%=sub %>
							</td>
						</tr>
						
						<!-- 글쓴이 & 날짜 -->
						<tr>
							<td bgcolor="#e8e8e8" align="center" width="15%">글쓴이</td>
							<td><%=name %></td>
							<td bgcolor="#e8e8e8" align="center" width="10%">날짜</td>
							<td width="20%"><%=nalja %></td>
						</tr>
						
						<!-- 내용 -->
						<tr>
							<td colspan="4" bgcolor="#e8e8e8" align="center">내　　　　　　용</td>
						</tr>
						
						<!-- 내용 -->
						<tr>
							<td colspan="4" rowspan="10" height="300" valign="top">
								<%=content %>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<!-- 메인화면 종료 -->
			<!-- 하단부 시작 -->
			<tr>
				<td bgcolor="#ebebeb">
					<br><br><br>
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