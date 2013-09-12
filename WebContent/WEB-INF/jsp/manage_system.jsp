<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<link rel="stylesheet" href="theme/css/style.min.css?1362656594" />
	
	<!-- LESS 2 CSS -->
	<script src="theme/scripts/less-1.3.3.min.js"></script>
	
	<!-- 弹出层 -->
	<link rel="stylesheet" href="superbox/jquery.superbox.css" type="text/css" media="all" />
	<script type="text/javascript" src="superbox/jquery.superbox.js"></script>
	<style type="text/css">
		/* Custom Theme */
		#superbox-overlay{background:#e0e4cc;}
		#superbox-container .loading{width:32px;height:32px;margin:0 auto;text-indent:-9999px;background:url(superbox/styles/loader.gif) no-repeat 0 0;}
		#superbox .close a{float:right;padding:0 5px;line-height:20px;background:#333;cursor:pointer;}
		#superbox .close a span{color:#fff;}
		#superbox .nextprev a{float:left;margin-right:5px;padding:0 5px;line-height:20px;background:#333;cursor:pointer;color:#fff;}
		#superbox .nextprev .disabled{background:#ccc;cursor:default;}
	</style>	
	<script type="text/javascript">
		$(function(){
			$.superbox.settings = {
				closeTxt: "X",
			};
			$.superbox();
		});
	</script>	
	<!--[if IE]><script type="text/javascript" src="theme/scripts/excanvas/excanvas.js"></script><![endif]-->
	<!--[if lt IE 8]><script type="text/javascript" src="theme/scripts/json2.js"></script><![endif]-->
</head>
<body>
	
	<!-- Start Content -->
	<div class="container-fluid">
		
		<div class="navbar main">
			<c:import url="/header.html" charEncoding="UTF-8"></c:import>
		</div>
		
	<div id="wrapper">
		<div id="menu" class="hidden-phone">
			<c:import url="/left_menu.html" charEncoding="UTF-8" >
				<c:param name="type" value="manage"></c:param>
				<c:param name="userid" value="${sessionScope.USER_CONTEXT.id}"></c:param>
			</c:import>
			<div class="clearfix" style="clear: both"></div>
		</div>
		<div id="content">
		<ul class="breadcrumb">
			<c:import url="${realPath }/breadcrumb.html" charEncoding="UTF-8"></c:import>
		</ul>
<div class="separator bottom"></div>

<div class="innerLR">
	
	<div class="row-fluid">
	<div class="span9">
	
		<div class="row-fluid">
			<div class="span2">
				<a href="addUser.html" rel="superbox[iframe][500x200]" class="widget-stats">
					<span class="glyphicons user_add"><i></i></span>
					<span class="txt">用户添加</span>
					<div class="clearfix"></div>
					<span class="count label label-warning"></span>
				</a>
			</div>
			
			<div class="span2">
				<a href="manageUser.html" rel="superbox[iframe][450x800]" class="widget-stats">
					<span class="glyphicons old_man"><i></i></span>
					<span class="txt">用户管理</span>
					<div class="clearfix"></div>
					<span class="count label label-warning">${userSum-1 }</span>
				</a>
			</div>
			
			<div class="span2">
				<a href="manageCustomer.html" rel="superbox[iframe][760x500]" class="widget-stats">
					<span class="glyphicons parents"><i></i></span>
					<span class="txt">客户管理</span>
					<div class="clearfix"></div>
					<span class="count label label-warning">${cusSum }</span>
				</a>
			</div>
			
			<div class="span2">
				<a href="manageCar.html" rel="superbox[iframe][780x900]" class="widget-stats">
					<span class="glyphicons car"><i></i></span>
					<span class="txt">车辆管理</span>
					<div class="clearfix"></div>
					<span class="count label label-warning">${carSum }</span>
				</a>
			</div>
			
			<div class="span2">
				<a href="addStore.html" rel="superbox[iframe][400x150]" class="widget-stats">
					<span class="glyphicons temple_buddhist"><i></i></span>
					<span class="txt">添加门店</span>
					<div class="clearfix"></div>
					<span class="count label label-warning">${carSum }</span>
				</a>
			</div>
			
			<div class="span2">
				<a href="manageStore.html" rel="superbox[iframe][780x900]" class="widget-stats">
					<span class="glyphicons bank"><i></i></span>
					<span class="txt">门店管理</span>
					<div class="clearfix"></div>
					<span class="count label label-warning">${carSum }</span>
				</a>
			</div>
		</div>
		
		<div class="row-fluid">
			
		</div>
	
	</div>
	</div>
	
</div>
<div class="separator bottom"></div>
				<!-- End Content -->
		</div>
		<!-- End Wrapper -->
		</div>
				
	</div>

</body>
</html>