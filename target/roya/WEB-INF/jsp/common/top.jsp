<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8" />
    <title>超级理财师-后台管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />    
    
    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <link href="./css/bootstrap-responsive.min.css" rel="stylesheet" />
    
    <!-- <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet" /> -->
    <link href="./css/font-awesome.css" rel="stylesheet" />
    
    <link href="./css/adminia.css" rel="stylesheet" /> 
    <link href="./css/adminia-responsive.css" rel="stylesheet" /> 
    <link href="./css/jquery-ui.css" rel="stylesheet" /> 
    <link href="./css/timepicker-addon.css" rel="stylesheet" /> 
     
    
    <link href="./css/pages/dashboard.css" rel="stylesheet" /> 
    <script src="./js/jquery-1.7.2.min.js"></script>
    <script src="./js/jquery-ui.js"></script>
	<script src="./js/jquery-ui-slide.min.js"></script>
	<script src="./js/jquery-ui-timepicker-addon.js"></script>
	<script src="./js/jquery-html5Validate.js"></script>
	<script src="./js/jquery.colorpicker.js"></script>
	
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
			
			<a class="brand" href="./index.shtml">超级理财师管理后台</a>
			
			<div class="nav-collapse">
			
				<ul class="nav pull-right">
					
					<li class="divider-vertical"></li>
					
					<li class="dropdown">
						
						<a data-toggle="dropdown" class="dropdown-toggle " href="#">
						<c:out value="${sessionScope.USER.userNickname }"></c:out>	 <b class="caret"></b>							
						</a>
						
						<ul class="dropdown-menu">
							<li>
								<a href="./queryUserInfo.shtml?userId=${sessionScope.USER.userId }"><i class="icon-user"></i> 账号设置 </a>
							</li>
							
							<li>
								<a href="./change_password.shtml"><i class="icon-lock"></i> 修改密码</a>
							</li>
							
							<li class="divider"></li>
							
							<li>
								<a href="./logout.shtml"><i class="icon-off"></i> 退出</a>
							</li>
						</ul>
					</li>
				</ul>
				
			</div> <!-- /nav-collapse -->
			
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->




<div id="content">
	
	<div class="container">
		
		<div class="row">
			
			<div class="span3">
				
				<div class="account-container">
				
					<div class="account-avatar">
						<img src="./img/headshot.jpg" alt="" class="thumbnail" />
					</div> <!-- /account-avatar -->
				
					<div class="account-details">
					
						<span class="account-name"><c:out value="${sessionScope.USER.userNickname }"></c:out></span>
						
						<span class="account-actions">
							<a href="./queryUserInfo.shtml?userId=${sessionScope.USER.userId }">编辑设置</a>
						</span>
					
					</div> <!-- /account-details -->
				
				</div> <!-- /account-container -->
				
				<hr />