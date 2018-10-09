<%@ page import="lec.model.lecDto"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
		<link href="../css/main_admin.css" rel="stylesheet" type="text/css">
		<style type="text/css">					
			*{
				font-family: 'Nanum Gothic', sans-serif;
			}
			
			.lectable{
				width: 800px;
				margin: 100px auto;
			}
			.lecTableList{
				width: 800px;
				height: 30px;
				text-align: center;
			}
			.lecTableList>th{
				border-top: 1px black solid;
				border-bottom: 1px black solid;
				margin: 0px;
			}
		</style>
		<script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
		<script type="text/javascript">
		$(document).ready(function(){
			$('.menu2').mouseover(function(){
				$('.recruitover').css("background", "rgba(255, 255, 255, 0.28)");
				$('.recruit').css("display","inline");
			});					
			$('.menu2').mouseout(function(){
				$('.recruitover').css("background", "rgba(255, 255, 255, 0)");
				$('.recruit').css("display","none");
			});	
			$('.menu3').mouseover(function(){
				$('.clabutton').css("background", "rgba(255, 255, 255, 0.28)");
				$('.cla').css("display","inline");
			});					
			$('.menu3').mouseout(function(){
				$('.clabutton').css("background", "rgba(255, 255, 255, 0)");
				$('.cla').css("display","none");
			});	
			$('.menu4').mouseover(function(){
				$('.edubutton').css("background", "rgba(255, 255, 255, 0.28)");
				$('.edu').css("display","inline");
			});					
			$('.menu4').mouseout(function(){
				$('.edubutton').css("background", "rgba(255, 255, 255, 0)");
				$('.edu').css("display","none");
			});
			$('.menu5').mouseover(function(){
				$('.bbsbutton').css("background", "rgba(255, 255, 255, 0.28)");
				$('.bbs').css("display","inline");
			});					
			$('.menu5').mouseout(function(){
				$('.bbsbutton').css("background", "rgba(255, 255, 255, 0)");
				$('.bbs').css("display","none");
			});
			$(".bbs>div, .edu>div, .cla>div, .recruit>div").mouseover(function(){
				$(this).css("background", "rgba(0, 0, 0, 0.28)");
			});
			$(".bbs>div, .edu>div, .cla>div, .recruit>div").mouseout(function(){
				$(this).css("background", "rgba(0, 0, 0, 0)");
			});
			
			$('.menu1').mouseover(function(){
				$('.mainbutton').css("background", "rgba(255, 255, 255, 0.28)");
			});					
			$('.menu1').mouseout(function(){
				$('.mainbutton').css("background", "rgba(255, 255, 255, 0)");
			});	
			$('.menu7').mouseover(function(){
				$('.indexbutton').css("background", "rgba(255, 255, 255, 0.28)");
			});					
			$('.menu7').mouseout(function(){
				$('.indexbutton').css("background", "rgba(255, 255, 255, 0)");
			});	
		});
		</script>
	</head>	
	<%
		ArrayList<lecDto> list = (ArrayList<lecDto>) request.getAttribute("alist");
	%>
	<body>
		<div class="container">
			<div class="menuBar">
				<div class="logo">
					<img src="../img/logo_admin.PNG"/>
				</div>
				<div class="menu0" id="menu">
					<!-- 빈공간 -->
				</div>
				<div class="menu1" id="menu">
					<!-- 메인화면버튼 -->
					<div class="mainbutton">
						<a href="#">메인화면</a>
					</div>
				</div>
				<div class="menu2" id="menu">
					<!-- 모집 -->
					<div class="recruitover">
						<a href="#">모집</a>					
					</div>
					<div class="recruit">
						<div class="recruit_admin">
							<a href="#">영업 관리</a>						
						</div>
						<div class="stu_assign">
							<a href="#">학생 배정</a>
						</div>
					</div>
				</div>				
				<div class="menu3" id="menu">
					<!-- 강의 -->
					<div class="clabutton">
						<a href="#">강의</a>					
					</div>
					<div class="cla">
						<div class="clasetup">
							<a href="#">강의 관리</a>
						</div>
						<div class="clalist">
							<a href="#">강의 현황</a>
						</div>
						<div class="claroomlist">
							<a href="#">강의실 관리</a>
						</div>
						<div class="tealist">
							<a href="#">강사 관리</a>
						</div>
					</div>
				</div>
				<div class="menu4" id="menu">
					<!-- 교육 -->
					<div class="edubutton">
						<a href="#">교육</a>
					<div class="edu">
						<div class="educla">
							<a href="#">교육 관리</a>
						</div>
						<div class="edugra">
							<a href="#">성적 관리</a>
						</div>					
						<div class="edustu">
							<a href="#">학점 관리</a>
						</div>					
					</div>
					</div>
				</div>
				<div class="menu5" id="menu">
					<!-- 게시판 -->
					<div class="bbsbutton">
						<a href="#">게시판</a>
					</div>
					<div class="bbs">
						<div class="bbsstu">
							<a href="#">학생회원 게시판</a>
						</div>
						<div class="bbsadvice">
							<a href="#">상담 게시판</a>
						</div>
					</div>
				</div>
				<div class="menu6" id="menu">
					<!-- 빈공간 -->
				</div>
				<div class="menu7" id="menu">
					<!-- 비트캠프 구로지점 -->
					<div class="indexbutton">
						<a href="#">비트캠프 구로지점</a>
					</div>
				</div>
				<div class="menu8" id="menu">
					<!-- 빈공간 -->
				</div>		
			</div>
			<div class="page">
				<div class="top">
					<!-- 상단 로그인 -->
					<div class="login">
						아이디
						<input type="text" class="id"/>
						비밀번호
						<input type="text" class="pw"/>
						<button class="memberLogin">로그인</button>
					</div>
				</div>
				<div class="main" style="overflow: auto">
					<!-- 메인화면 -->
					<form>
						<table class="lectable">
							<tr class="lecTableList">
								<th>번호</th>
								<th>강의명</th>
								<th>강의 설명</th>
								<th>강의 시작일</th>
								<th>강의 종료일</th>
								<th>강사</th>
								<th>강의장</th>
								<th>상태</th>
							</tr>
							<%
								//for(int i=0; i<list.size(); i++){
									lecDto bean = list.get(0);
							%>
							<tr>
								<td><%=bean.getLecNo() %></td>
								<td><%=bean.getLecName() %></td>
								<td>3</td>
								<td>4</td>
								<td>5</td>
								<td>6</td>
								<td>7</td>
								<td>8</td>
							</tr>
							<%
								//}
							%>
						</table>
					</form>
				</div>
				<div class="footer">
					<!-- footer -->
					<img src="../img/logo_foot.PNG"/>
					<p>비트캠프 구로지점 서울시 구로구 구로동 1234-1 2층 비트캠프 | 사업자 등록번호 : 123-45-6789<br>
					(주)비트컴퓨터 구로지점 대표이사 : 조현정 / 문의 : 02 - 2345 - 6789 / 팩스 : 02 - 1234 - 5678<br>
					통신판매업 신고번호 : 제 구로-00011호 / 개인정보보호관리책임자 : 홍길동<br>
					Copyright (c) 비트캠프 All rights reserved.</p>
				</div>
			</div>
		</div>
	</body>
</html>