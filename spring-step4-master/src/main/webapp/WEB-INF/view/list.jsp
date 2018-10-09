<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<style type="text/css">
		.navbar-header a>img{
			height: 100%;
		}
	</style>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">
        <img alt="Brand" src="http://bitcamp.co.kr/img/link2.png">
      </a>
    </div>
	  <ul class="nav navbar-nav">
	    <li><a href="index.bit">Home</a></li>
	    <li class="active"><a href="list.bit">List</a></li>
	    <li><a href="add.bit">Add</a></li>
	  </ul>
  </div>
</nav>
<div class="table-responsive">
<table class="table ">
	<thead>
		<tr>
			<th>사번</th>
			<th>이름</th>
			<th>날짜</th>
			<th>금액</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${articleList}" var="bean">
		<tr>
			<td><a href="detail.bit?idx=${bean.sabun}">${bean.sabun}</a></td>
			<td><a href="detail.bit?idx=${bean.sabun}">${bean.name}</a></td>
			<td><a href="detail.bit?idx=${bean.sabun}">${bean.nalja}</a></td>
			<td><a href="detail.bit?idx=${bean.sabun}">${bean.pay}</a></td>
		</tr>
		</c:forEach>
	</tbody>
</table>
</div>
</body>
</html>


