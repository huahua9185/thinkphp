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
    <link href="/thinkphp/Public/global.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  <div class="container-fluid">
  		<div class="row">
		    <nav class="navbar navbar-inverse navbar-fixed-top">
		      <div class="container-fluid">
		        <div class="navbar-header">
		          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
		            <span class="sr-only">项目名称</span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		          </button>
		          <a class="navbar-brand" href="#">项目名称</a>
		        </div>
		        <div id="navbar" class="navbar-collapse collapse">
		          <ul class="nav navbar-nav navbar-right">
		            <li><a href="#">Dashboard</a></li>
		            <li><a href="#">Settings</a></li>
		            <li><a href="#">Profile</a></li>
		            <li><a href=<?php echo U('Login/quit');?>>退出</a></li>
		          </ul>
		          <form class="navbar-form navbar-right">
		            <input type="text" class="form-control" placeholder="Search...">
		          </form>
		        </div>
		      </div>
		    </nav>  			
  		</div>
  		<div class="row">
		        <div class="col-sm-3 col-md-2 sidebar">
		          <ul class="nav nav-sidebar">
		            <li class="active"><a href="#">Overview <span class="sr-only">(current)</span></a></li>
		            <li><a href="#">Reports</a></li>
		            <li><a href="#">Analytics</a></li>
		            <li><a href="#">Export</a></li>
		          </ul>
		          <ul class="nav nav-sidebar">
		            <li><a href="">Nav item</a></li>
		            <li><a href="">Nav item again</a></li>
		            <li><a href="">One more nav</a></li>
		            <li><a href="">Another nav item</a></li>
		            <li><a href="">More navigation</a></li>
		          </ul>
		          <ul class="nav nav-sidebar">
		            <li><a href="">Nav item again</a></li>
		            <li><a href="">One more nav</a></li>
		            <li><a href="">Another nav item</a></li>
		          </ul>
		        </div>
		        <div class="col-sm-9 col-md-10 main">
		        </div>
  		</div>
  </div>







 







    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/thinkphp/Public/jquery-1.12.1.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/thinkphp/Public/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>