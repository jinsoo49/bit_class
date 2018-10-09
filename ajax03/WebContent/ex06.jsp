<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="css/960.css"/>
		<link rel="stylesheet" href="css/jquery.bxslider.min.css"/>
		<style type="text/css">
			#menu{}
			#menu>ul{
				width: 488px;
				padding: 0px;
				margin: 0px auto;
			}
			#menu>ul>li{
				margin: 0px 1px;
				list-style: none;
				float: left;
			}
			#menu>ul>li>a{
				width: 120px;
				display: inline-block;
				background-color: #ebebeb;
				text-decoration: none;
			}
			#menu>ul>li>a:FIRST-CHILD~a{
				display: block;
				position: absolute;
			}
			
		</style>
		<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
		<script type="text/javascript" src="js/jquery-ui.js"></script>
		<script type="text/javascript" src="js/jquery.bxslider.js"></script>
		<script type="text/javascript">
		$(function(){
			 $('.bxslider').bxSlider({
					mode: 'fade',
				    slideWidth: 140
			 });
			 $('#menu>ul>li>a').each(function(idx, ele){
				$(ele).mouseenter(function(){
				});
			 });
		  });
		</script>
	</head>
	<body>
		<div class="container_12">
			<div id="header">
				<div class="grid_7">
					<h1>비트교육센터</h1>
				</div>
				<div class="grid_5">
					<span>id</span><input/>
					<span>pw</span><input/>
					<button>로그인</button>
				</div>
			</div>
			<div class="clear"></div>
			<div id="menu" class="grid_12">
				<ul>
					<li>
						<a href="#">menu1</a>
						<a>menu1-1</a>
						<a>menu1-2</a>
					</li>
					<li>
						<a href="#">menu2</a>
						<a>menu2-1</a>
						<a>menu2-2</a>
					</li>
					<li>
						<a href="#">menu3</a>
						<a>menu3-1</a>
						<a>menu3-2</a>
					</li>
					<li>
						<a href="#">menu4</a>
						<a>menu4-1</a>
						<a>menu4-2</a>
					</li>
				</ul>
			</div>
			<div id="menu" class="grid_12 content">
				<div class="bxslider">
					<div>
						<img src="images/img01.jpg"/>
					</div>
					<div>
						<img src="images/img02.jpg"/>
					</div>
					<div>
						<img src="images/img03.jpg"/>
					</div>
					<div>
						<img src="images/img04.jpg"/>
					</div>
					<div>
						<img src="images/img05.jpg"/>
					</div>
					<div>
						<img src="images/img06.jpg"/>
					</div>
				</div>
			</div>
			<div class="clear"></div>
			<div id="footer" class="grid_12">
				<address>서울시 서초구 서초동 1327-15</address>
			</div>
			<div class="clear"></div>
		</div>
	</body>
</html>