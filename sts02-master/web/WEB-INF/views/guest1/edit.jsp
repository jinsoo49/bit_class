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
    <li><a href="/">menu</a></li>
    <li><a href="list.bit">guest(30m)</a></li>
    <li><a href="bbs/list">guest(2h)</a></li>
    <li><a href="#">guest(--)</a></li>
  </ul>
 </div>
  </nav>
  <div class="page-header">
    <h1>수정페이지</h1>
  </div>
  <div class="container">
  <form action="update.bit" method="post" class="form-horizontal">
      <div class="form-group">
          <label for="sabun" class="col-sm-2">sabun</label>
          <div class="well well-sm col-sm-10">${bean.sabun}</div>
          <input type="hidden" value="${bean.sabun}" name="sabun" id="sabun" class="form-control"/>
      </div>
      <div class="form-group">
          <label for="name" class="col-sm-2">name</label>
          <input type="text" value="${bean.name}" name="name" id="name" class="form-control col-sm-10"/>
      </div>
      <div class="form-group">
          <label class="col-sm-2">nalja</label>
          <div class="well well-sm col-sm-10">${bean.nalja}</div>
      </div>
      <div class="form-group">
          <label for="pay" class="col-sm-2">pay</label>
          <div class="col-sm-10">
            <input type="text" value="${bean.pay}" name="pay" id="pay" class="form-control"/>
          </div>
      </div>
      <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
          <button type="submit" class="btn btn-danger">수정</button>
          <button type="reset" class="btn btn-default">취소</button>
          </div>
      </div>
  </form>
  </div>
  </body>
</html>
