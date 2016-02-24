<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="/thinkphp/Public/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="container-fluid table-responsive">
			<table class="table table-hover table-striped table-condensed">
				<tr class="success">
					<td>id</td><td>姓名</td><td>年龄</td><td>性别</td>
				</tr>
				<tr>
					<td>1</td><td>张三</td><td>25</td><td>男</td>
				</tr>
				<tr>
					<td>2</td><td>李四</td><td>30</td><td>女</td>
				</tr>
			</table>
	</div>
	<div class="container">
		<div class="col-md-4">
			
		</div>
		<div class="col-md-4">
			<form class="form-inline">
				<div class="form-group">
					<label>用户名</label>
				<input class="form-control focus" placeholder="请在这里输入用户名">
				</div>
				<div class="form-group">
					<label>密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
				<input class="form-control" name="用户名" type="password">
				</div>
				<div>
				<button type="submit" class="btn btn-default disabled center-block">Submit</button>
				</div>
				<a class="sr-only sr-only-focusable" href="#content">Skip to main content</a>
			</form>
		</div>
		<div class="col-md-4">
		</div>
		
	</div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/thinkphp/Public/jquery-1.12.1.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/thinkphp/Public/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>