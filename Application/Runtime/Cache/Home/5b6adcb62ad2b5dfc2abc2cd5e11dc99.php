<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>登录</title>

    <!-- Bootstrap -->
    <link href="/thinkphp/Public/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/thinkphp/Public/signin.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  <div class="container">

    <form class="form-signin" action="/thinkphp/Home/Login/index.html" method="post">
      <h2 class="form-signin-heading text-center ">请登录后使用</h2>
      <label for="account" class="sr-only">帐号</label>
      <input type="text" id="account" name="username" class="form-control" placeholder="帐号" required autofocus>
      <label for="inputPassword" class="sr-only">密码</label>
      <input type="password" id="inputPassword" name="password" class="form-control" placeholder="密码" required>
      <div class="checkbox">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit">登&nbsp;&nbsp;录</button>
    </form>

  </div>







  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/thinkphp/Public/jquery-1.12.1.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/thinkphp/Public/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>