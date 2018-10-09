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
	    <li><a href="list.bit">List</a></li>
	    <li class="active"><a href="add.bit">Add</a></li>
	  </ul>
  </div>
</nav>
<div class="page-header">
	<h1>입력 페이지</h1>
</div>
<form action="insert.bit" method="post">
	<div class="form-group">
		<label for="name">name</label>
		<input type="text" class="form-control" name="name" id="name" placeholder="name">
	</div>
	<div class="form-group">
		<label for="pay">pay</label>
		<input type="text" class="form-control" name="pay" id="pay" placeholder="pay">
	</div>
	<button type="submit">입력</button>
</form>
</body>
</html>
