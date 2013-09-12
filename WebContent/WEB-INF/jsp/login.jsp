<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
String realPath = "http://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();   
request.setAttribute("realPath", realPath);
%>
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html> <!--<![endif]-->
<head>
	<title>Smashing - Premium Admin Template</title>
	
	<!-- Meta -->
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	
	<!-- Bootstrap -->
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
	
	<!-- Bootstrap Extended -->
	<link href="bootstrap/extend/jasny-bootstrap/css/jasny-bootstrap.min.css" rel="stylesheet">
	<link href="bootstrap/extend/jasny-bootstrap/css/jasny-bootstrap-responsive.min.css" rel="stylesheet">
	<link href="bootstrap/extend/bootstrap-wysihtml5/css/bootstrap-wysihtml5-0.0.2.css" rel="stylesheet">
	
	<!-- JQueryUI v1.9.2 -->
	<link rel="stylesheet" href="theme/scripts/jquery-ui-1.9.2.custom/css/smoothness/jquery-ui-1.9.2.custom.min.css" />
	
	<!-- Glyphicons -->
	<link rel="stylesheet" href="theme/css/glyphicons.css" />
	
	<!-- Bootstrap Extended -->
	<link rel="stylesheet" href="bootstrap/extend/bootstrap-select/bootstrap-select.css" />
	<link rel="stylesheet" href="bootstrap/extend/bootstrap-toggle-buttons/static/stylesheets/bootstrap-toggle-buttons.css" />
	
	<!-- Uniform -->
	<link rel="stylesheet" media="screen" href="theme/scripts/pixelmatrix-uniform/css/uniform.default.css" />

	<!-- JQuery v1.8.2 -->
	<script src="theme/scripts/jquery-1.8.2.min.js"></script>
	
	<!-- Modernizr -->
	<script src="theme/scripts/modernizr.custom.76094.js"></script>
	
	<!-- MiniColors -->
	<link rel="stylesheet" media="screen" href="theme/scripts/jquery-miniColors/jquery.miniColors.css" />
	
	<!-- Notyfy -->
	<script type="text/javascript" src="theme/scripts/notyfy/jquery.notyfy.js"></script>
	<link rel="stylesheet" href="theme/scripts/notyfy/jquery.notyfy.css"/>
	<link rel="stylesheet" href="theme/scripts/notyfy/themes/default.css"/>
	
	<!-- Gritter -->
	<link rel="stylesheet" href="theme/scripts/Gritter/css/jquery.gritter.css"/>
	<script type="text/javascript" src="theme/scripts/Gritter/js/jquery.gritter.min.js"></script>
	

	<!-- google-code-prettify -->
	<link href="theme/scripts/google-code-prettify/prettify.css" type="text/css" rel="stylesheet" />
	
	<!-- Theme -->
	<link rel="stylesheet" href="theme/css/style.min.css?1362656687" />
	
	<!-- LESS 2 CSS -->
	<script src="theme/scripts/less-1.3.3.min.js"></script>
	
</head>
<body>
	
	<!-- Start Content -->
	<div class="container-fluid login">
		
		<div class="navbar main">
			<c:import url="${realPath }/header.html" charEncoding="UTF-8"></c:import>
		</div>
		
		<div id="login">
	<form class="form-signin" id="login-form" method="post" action="login.html">
		<h3 class="glyphicons unlock form-signin-heading"><i></i> 欢迎回来,请登录</h3>
		<div class="uniformjs">
			<input type="text" id="username_id" class="input-block-level" placeholder="您的账号"> 
			<input type="password" id="password_id" class="input-block-level" placeholder="登录密码"> 
			<label class="checkbox"><input type="checkbox" value="remember-me">记住密码</label>
		</div>
		<button class="btn btn-large btn-primary" type="button" id="loginId">登录</button>
	</form>
</div>		
				
	</div>
	
	<!-- JQueryUI v1.9.2 -->
	<script src="theme/scripts/jquery-ui-1.9.2.custom/js/jquery-ui-1.9.2.custom.min.js"></script>
	
	<!-- JQueryUI Touch Punch -->
	<!-- small hack that enables the use of touch events on sites using the jQuery UI user interface library -->
	<script src="theme/scripts/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
	
	<!-- MiniColors -->
	<script src="theme/scripts/jquery-miniColors/jquery.miniColors.js"></script>
	
	<!-- Themer -->
	<script>
	var themerPrimaryColor = '#47759e';
	</script>
	<script src="theme/scripts/jquery.cookie.js"></script>
	<script src="theme/scripts/themer.js"></script>
	
	
	
	<!-- Resize Script -->
	<script src="theme/scripts/jquery.ba-resize.js"></script>
	
	<!-- Uniform -->
	<script src="theme/scripts/pixelmatrix-uniform/jquery.uniform.min.js"></script>
	
	<!-- Bootstrap Script -->
	<script src="bootstrap/js/bootstrap.min.js"></script>
	
	<!-- Bootstrap Extended -->
	<script src="bootstrap/extend/bootstrap-select/bootstrap-select.js"></script>
	<script src="bootstrap/extend/bootstrap-toggle-buttons/static/js/jquery.toggle.buttons.js"></script>
	<script src="bootstrap/extend/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js"></script>
	<script src="bootstrap/extend/jasny-bootstrap/js/jasny-bootstrap.min.js" type="text/javascript"></script>
	<script src="bootstrap/extend/jasny-bootstrap/js/bootstrap-fileupload.js" type="text/javascript"></script>
	<script src="bootstrap/extend/bootbox.js" type="text/javascript"></script>
	<script src="bootstrap/extend/bootstrap-wysihtml5/js/wysihtml5-0.3.0_rc2.min.js" type="text/javascript"></script>
	<script src="bootstrap/extend/bootstrap-wysihtml5/js/bootstrap-wysihtml5-0.0.2.js" type="text/javascript"></script>
	
	<!-- Custom Onload Script -->
	<script src="theme/scripts/load.js"></script>
	
	

<!-- google-code-prettify -->
<script src="theme/scripts/google-code-prettify/prettify.js"></script>
<script src="scripts/jquery.form.js"></script>
<script>
$(function(){
	if ($('.prettyprint').length)
		prettyPrint();
});

$("#loginId").click(function(){
	  $.post("login.html",
	  {
	    username:$("#username_id").val(),
	    password:$("#password_id").val()
	  },
	  function(data,status){
		  if(data == "nobody"){
			  alert("用户名错误!");
		  }else if(data == "false"){
			  alert("密码错误!");
		  }else if(data == "0"){
			  location = "systemManage.html";
		  }else{
			  location = "managePolicy.html";
		  }
	  });
	});
</script>
	
</body>
</html>