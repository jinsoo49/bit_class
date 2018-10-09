<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<ul class="nav nav-pills">
  <li role="presentation"><a href="index.jsp">Home</a></li>
  <li role="presentation" class="active"><a href="list.do">List</a></li>
  <li role="presentation"><a href="#">Login</a></li>
</ul>
<div class="jumbotron">
  <h1>Hello, world!</h1>
  <p>...</p>
  <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
</div>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<!-- content start -->
			<ol class="breadcrumb">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="list.do">List</a></li>
                <li class="active">insert</li>
			</ol>
			<h1>insert page</h1>
			<form action="insert.do" method="post">
				<div class="form-group">
					<label for="sabun">sabun</label>
					<input type="text" name="sabun" id="sabun" class="form-control"/>
				</div>
				<div class="form-group">
					<label for="name">name</label>
					<input type="text" name="name" id="name" class="form-control"/>
				</div>
				<div class="form-group">
					<label for="pay">pay</label>
					<input type="text" name="pay" id="pay" class="form-control"/>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-default">입력</button>
				</div>
			</form>
			<!-- content end -->
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<p class="text-center text-uppercase">Copyright &copy; 비트캠프 All rights reserved.</p>
		</div>
	</div>
</div>
</body>
</html>
