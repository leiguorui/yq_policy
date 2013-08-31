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

	<!-- ColorPicker -->
	<link rel="stylesheet" media="screen" href="theme/scripts/farbtastic/farbtastic.css" />

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
	<link rel="stylesheet" href="theme/css/style.min.css?1362656647" />
	
	<!-- LESS 2 CSS -->
	<script src="theme/scripts/less-1.3.3.min.js"></script>
	
</head>
<body>
	
	<!-- Start Content -->
	<div class="container-fluid">
		
		<div class="navbar main">
			<c:import url="/header.html" charEncoding="UTF-8"></c:import>
		</div>
		
	<div id="wrapper">
		<div id="menu" class="hidden-phone">
			<c:import url="/left_menu.html" charEncoding="UTF-8">
				<c:param name="type" value="add"></c:param>
			</c:import>
			<div class="clearfix" style="clear: both"></div>
		</div>
		<div id="content">
		<ul class="breadcrumb">
			<c:import url="/breadcrumb.html" charEncoding="UTF-8"></c:import>
		</ul>
<div class="separator bottom"></div>

<div class="innerLR">
	<form:form commandName="policy" action="add.html" name="policyForm">
	<div class="widget">
		<div class="widget-head"><h3 class="heading">提示信息</h3></div>
		<div class="widget-body">
			<div class="alert alert-primary">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				 欢迎使用.
			</div>
			<div class="alert alert-success">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>提示!</strong> 添加成功.
			</div>
			<div class="alert alert-error">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>提示!</strong> 部分选项未填写.
			</div>
		</div>
	</div>
	
	<h3>续保-杂牌</h3>
	<div class="row-fluid">
		<div class="span6">
		
			<div class="widget">
				<div class="widget-head"><h4 class="heading">保单起止日期</h4></div>
				<div class="widget-body">
					<div class="row-fluid">
						<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
						<form:input path="from" id="id_from" class="span4" type="text" onClick="WdatePicker()"/> 至  
						<form:input path="to" id="id_to" class="span4" type="text" onClick="WdatePicker()"/> 共计 
						<form:input path="years" id="id_years" class="span1" type="text" /> 天
					</div>
				</div>
			</div>
			
			<div class="widget row-fluid">
				<div class="widget-head"><h4 class="heading">交强险保单号</h4></div>
				<div class="widget-body">
					<div class="row-fluid">
						<form:input path="jiaoqiangxian_no" class="span6" type="text"/>
					</div>
				</div>
			</div>
			
			<div class="widget row-fluid">
				<div class="widget-head"><h4 class="heading">商业险保单号</h4></div>
				<div class="widget-body">
					<div class="row-fluid">
						<form:input path="shangyexian_no" class="span6" type="text"/>
					</div>
				</div>
			</div>
				
			<div class="widget row-fluid">
				<div class="widget-head"><h4 class="heading">车牌号</h4></div>
				<div class="widget-body">
					<div class="row-fluid">
							<input class="span2" type="text" value="辽A" />
						<form:input path="car_id" class="span4" type="text" /> 
					</div>
				</div>
			</div>
			
			<div class="widget row-fluid">
				<div class="widget-head"><h4 class="heading">VIN(后7位)</h4></div>
				<div class="widget-body">
					<div class="row-fluid">
						<input class="span6" type="text"/>
					</div>
				</div>
			</div>
			
			<div class="widget row-fluid">
				<div class="widget-head"><h4 class="heading">发动机号</h4></div>
				<div class="widget-body">
					<div class="row-fluid">
						<input class="span6" type="text"/>
					</div>
				</div>
			</div>
			
			<div class="widget row-fluid">
				<div class="widget-head"><h4 class="heading">车型</h4></div>
				<div class="widget-body">
					<div class="input-append">
						<input class="span8" id="appendedDropdownButton" type="text" />
						<div class="btn-group dropup">
							<button class="btn dropdown-toggle" data-toggle="dropdown">
								请选择 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right">
								<li><a href="#">奔驰</a></li>
								<li><a href="#">宝马</a></li>
								<li><a href="#">奥迪</a></li>
								<li><a href="#">雪佛兰</a></li>
								<li class="divider"></li>
								<li><a href="#">其他</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>	
			
		</div>
		<div class="span4">
				
			<div class="widget row-fluid">
				<div class="widget-head"><h4 class="heading">保险公司</h4></div>
				<div class="widget-body">
					<div class="input-append">
						<form:input path="insuer_comp" class="span8" id="id_insuer_comp" type="text" />
						<div class="btn-group dropup">
							<button class="btn dropdown-toggle" data-toggle="dropdown">
								请选择 <span class="caret"></span>
							</button>
							<ul id="insuer_comp" class="dropdown-menu pull-right">
								<li><a href="#">中保</a></li>
								<li><a href="#">平安</a></li>
								<li><a href="#">太平洋</a></li>
								<li class="divider"></li>
								<li><a href="#">其他</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>	
				
			<div class="widget row-fluid">
				<div class="widget-head"><h4 class="heading">被保险人</h4></div>
				<div class="widget-body">
					<div class="row-fluid">
						<input class="span6" type="text"/>
					</div>
				</div>
			</div>
			
			<div class="widget row-fluid">
				<div class="widget-head"><h4 class="heading">本年商业险金额(实收)</h4></div>
				<div class="widget-body">
					<div class="input-prepend">
						<span class="add-on">&yen;</span>
						<form:input path="shangyexian_sum" class="span12" type="text" placeholder="100,000,000" /> 
					</div>
				</div>
			</div>
			
			<div class="widget row-fluid">
				<div class="widget-head"><h4 class="heading">本年交强险金额(实收)</h4></div>
				<div class="widget-body">
					<div class="input-prepend">
						<span class="add-on">&yen;</span>
						<form:input path="jiaoqiangxian_sum" class="span12" type="text" placeholder="100,000,000" /> 
					</div>
				</div>
			</div>
			
			<div class="widget row-fluid">
				<div class="widget-head"><h4 class="heading">保费合计(实收)</h4></div>
				<div class="widget-body">
					<div class="input-prepend">
						<span class="add-on">&yen;</span>
						<input id="id_cost_sum" class="span12" type="text" placeholder="100,000,000" /> 
					</div>
				</div>
			</div>
			
			<div class="widget row-fluid">
				<div class="widget-head"><h4 class="heading">赠送礼包面值</h4></div>
				<div class="widget-body">
					<div class="input-prepend">
						<span class="add-on">&yen;</span>
						<form:input path="present_sum" class="span12" type="text" placeholder="100,000,000" /> 
					</div>
				</div>
			</div>
			
			<div class="widget row-fluid">
				<div class="widget-head"><h4 class="heading">销售人</h4></div>
				<div class="widget-body">
					<div class="row-fluid">
						<input class="span6" type="text"/>
					</div>
				</div>
			</div>
		
		</div>
	</div>

	<div class="widget row-fluid">
		<div class="widget-head"><h4 class="heading">备注</h4></div>
		<div class="widget-body">
			<form:textarea path="note"  id="mustHaveId" class="span12" rows="5"></form:textarea>
		</div>
	</div>
	
	<hr class="separator" />
			
	<div class="form-actions">
		<button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok"><i></i>保存</button>
		<button type="button" class="btn btn-icon btn-default glyphicons circle_remove"><i></i>取消</button>
	</div>
	</form:form>
</div>		
				<!-- End Content -->
		</div>
		<!-- End Wrapper -->
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
	
	<!-- ColorPicker -->
	<script src="theme/scripts/farbtastic/farbtastic.js" type="text/javascript"></script>

	
	
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
<script src="scripts/CalculateDays.js"></script>
<script>
$(function(){
	if ($('.prettyprint').length)
		prettyPrint();
});

$("#id_to").blur(function(){
	$("#id_years").val(dateDiff($("#id_from").val(),$("#id_to").val()));
});


$("#insuer_comp li").click(function(){
	$("#id_insuer_comp").val($(this).text());
});
</script>
	
</body>
</html>