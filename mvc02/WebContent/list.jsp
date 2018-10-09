<%@page import="java.util.ArrayList"%>
<%@page import="com.bit.model.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="css/960.css"/>
		<style type="text/css">
			table{
				border-collapse: collapse;
			}
			table, th, td{
				border: 1px solid black;
			}
			table{
				width: 80%;
				margin: 10px auto;
			}
			th{
				background-color: #000000;
				color: white;
				font-weight: bold;
				font-size: 20px;
			}
			tr:hover{
				background-color: #ebebeb;
				font-weight: bold;
			}
			th:NTH-CHILD(1), td:NTH-CHILD(1){
				width: 10%;
				text-align: center;
			}
			th:NTH-CHILD(2), td:NTH-CHILD(2){
				text-align: center;
			}
			th:NTH-CHILD(4), td:NTH-CHILD(4){
				width: 10%;
				text-align: center;
			}
			th:NTH-CHILD(3){
				width: 20%;
				text-align: center;
			}
			td:NTH-CHILD(3){
				text-align: right;
			}
			td>a{
				text-decoration: none;
				display: block;
			}
			
		</style>
		<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
		<script type="text/javascript">
		
		</script>
		<title>Insert title here</title>
	</head>
	<%
		ArrayList<GuestDto> list = (ArrayList<GuestDto>) request.getAttribute("alist");
		//int tot = (Integer) request.getAttribute("tot");
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
				<h1>리스트페이지</h1>
				<table>
					<tr>
						<th>사번</th>
						<th>이름</th>
						<th>날짜</th>
						<th>금액</th>
					</tr>
					
					<%
					for(int i=0; i<list.size(); i++){
						GuestDto bean = list.get(i);
					%>
					<tr>
						<td><a href="detail.bit?idx=<%=bean.getSabun() %>"><%=bean.getSabun() %></a></td>
						<td><a href="detail.bit?idx=<%=bean.getSabun() %>"><%=bean.getName() %></a></td>
						<td><a href="detail.bit?idx=<%=bean.getSabun() %>"><%=bean.getNalja() %></a></td>
						<td><a href="detail.bit?idx=<%=bean.getSabun() %>"><%=bean.getPay() %></a></td>
					</tr>
					<%
					}
					%>
				</table>
			</div>
			<div class="clear"></div>
			
			<div id="footer" class="grid_12">
				copyright~
			</div>
			<div class="clear"></div>
		</div>
	</body>
</html>