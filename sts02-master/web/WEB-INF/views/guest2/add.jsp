<%--
  Created by IntelliJ IDEA.
  User: pro
  Date: 2018. 6. 22.
  Time: AM 9:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <title>$Title$</title>
  </head>
  <body>
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">
        <p>비트교육센터</p>
      </a>
    </div>
  <ul class="nav navbar-nav">
    <li><a href="../">HOME</a></li>
    <li><a href="../list.bit">guest(30m)</a></li>
    <li><a href="list">guest(2h)</a></li>
    <li><a href="#">guest(--)</a></li>
  </ul>
 </div>
  </nav>
  <div class="page-header">
    <h1>입력페이지</h1>
  </div>
  <form action="insert" method="post">
    <div class="form-group">
        <label for="sabun">sabun</label>
        <input type="text" class="form-control" name="sabun" id="sabun" placeholder="필수"/>
    </div>
    <div class="form-group">
        <label for="name">name</label>
        <input type="text" class="form-control" name="name" id="name" placeholder="이름없음"/>
    </div>
    <div class="form-group">
        <label for="pay">pay</label>
        <input type="text" class="form-control" name="pay" id="pay" placeholder="0"/>
    </div>
    <button type="submit" class="btn btn-success">입력</button>
    <button type="reset" class="btn btn-success">취소</button>
  </form>
  </body>
</html>
