<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>超级理财师-后台管理</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />    
    
    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <link href="./css/bootstrap-responsive.min.css" rel="stylesheet" />
    
 <!--    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet" /> -->
    <link href="./css/font-awesome.css" rel="stylesheet" />
    
    <link href="./css/adminia.css" rel="stylesheet" /> 
    <link href="./css/adminia-responsive.css" rel="stylesheet" /> 
    
    <link href="./css/pages/login.css" rel="stylesheet" /> 

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
	
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

<body>
	
<div class="navbar navbar-fixed-top">
	
	<div class="navbar-inner">
		
		<div class="container">
			
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 				
			</a>
			
			<a class="brand" href="./loginPer.shtml">超级理财师管理后台</a>
			
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->


<div id="login-container">
	
	
	<div id="login-header">
		
		<h3>用户登录</h3>
		
	</div> <!-- /login-header -->
	
	<div id="login-content" class="clearfix">
	
	<form action="./login.shtml"  method="post">
				<fieldset>
					<div class="control-group">
						<label class="control-label" for="username">用户名:</label>
						<div class="controls">
							<input type="text" id="userNickname" name="userNickname"/>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="password">密码:</label>
						<div class="controls">
							<input type="password"   id="password" name="password" />
						</div>
					</div>
					<!-- <div class="control-group">
						<label class="control-label" for="code">验证码:<img alt="验证码" src="./viewVerifyCode.shtml"></label>
						<div class="controls">
							<input type="text" id="code" name="code" />
						</div> 
					</div> -->
				</fieldset>
				
				<div class="pull-right">
					<button type="submit" class="btn btn-warning btn-large">
						登录
					</button>
				</div>
			</form>
			
		</div> <!-- /login-content -->
		
</div> <!-- /login-wrapper -->

    

<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="./js/jquery-1.7.2.min.js"></script>


<script src="./js/bootstrap.js"></script>

  </body>
</html>
