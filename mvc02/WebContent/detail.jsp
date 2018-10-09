<%@page import="com.bit.model.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="css/960.css"/>
		<style type="text/css">
			.content>div{
				width: 80%;
				border-bottom: 1px solid gray;
				margin: 0px auto;
			}
			.content>div>span{
				display: inline-block;
			}
			.content>div>span:FIRST-CHILD{
				width: 30%;
				text-align: center;				
				background-color: #ebebeb;
			}
			.content>div>span:LAST-CHILD{
			}
			.content>div:last-child{
				border-bottom: 0px solid gray;
				text-align: right;
				line-height: 50px;			
			}
		</style>
		<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
		<script type="text/javascript">
			$(function(){
				var idx = $('.content>h1').next().children().eq(1).text();
				
				$('.content button').first().click(function(){
					window.location.replace('edit.bit?idx='+idx);
				}).next().click(function(){
					
					// post(url, parameter, success)
					if(confirm('해당 페이지를 삭제 하시겠습니까?')){
						$.post('del.bit', {'idx':idx},function(){
							window.location.href = 'list.bit';
							alert('삭제');
						});				
					}
				});
				
				$('.content button').last().click(function(){
					window.history.back();
				});
			});
		</script>
		<title>Insert title here</title>
	</head>	
	<% 
		GuestDto bean = (GuestDto) request.getAttribute("dto");
	%>
	<body>
		<div class="container_12">
		
			<div id="header" class="grid_12">
				<img src="images/logo.png"/>
			</div>
			<div class="clear"></div>
			
			<div id="menu" class="grid_12">
				<a href="index.bit">HOME</a>
				<a href="list.bit">LIST</a>
				<a href="add.bit">ADD</a>
			</div>
			<div class="clear"></div>
			
			<div class="grid_12 content">
				<h1>상세페이지</h1>
				<div>
					<span>사번</span>
					<span><%=bean.getSabun() %></span>
				</div>
				<div>
					<span>이름</span>
					<span><%=bean.getName() %></span>
				</div>
				<div>
					<span>날짜</span>
					<span><%=bean.getNalja() %></span>
				</div>
				<div>
					<span>금액</span>
					<span><%=bean.getPay() %></span>
				</div>
				<div>
					<button>수정</button>
					<button>삭제</button>
					<button>뒤로</button>
				</div>
			</div>
			<div class="clear"></div>
			
			<div id="footer" class="grid_12">
				copyright~
			</div>
			<div class="clear"></div>
		</div>
	</body>
</html>