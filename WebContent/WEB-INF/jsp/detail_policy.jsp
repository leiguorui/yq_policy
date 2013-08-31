<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

	<!-- DataTables -->
	<link rel="stylesheet" media="screen" href="theme/scripts/DataTables/media/css/DT_bootstrap.css" />

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
	<link rel="stylesheet" href="theme/css/style.min.css?1362656629" />
	
	<!-- LESS 2 CSS -->
	<script src="theme/scripts/less-1.3.3.min.js"></script>
	
</head>
<body>


<h3 class="glyphicons no-js list"><i></i>No. ${policy.id }</h3>

<div class="innerLR ">
	<div class="widget">
		<div class="widget-head"><h4 class="heading glyphicons calendar">保单信息</h4></div>
		<div class="widget-body">
			<table class="table table-bordered table-striped">
				<tbody>
					<tr>
						<td class="center">保单类型</td>
						<td>${policy.type }</td>
					</tr>
					<tr>
						<td class="center">贷款年限</td>
						<td>${policy.loan_years }</td>
					</tr>
					<tr>
						<td class="center">业务途径</td>
						<td>${policy.service }</td>
					</tr>
					<tr>
						<td class="center">保险公司</td>
						<td>${policy.insuer_comp }</td>
					</tr>
					<tr>
						<td class="center">交强险保单号</td>
						<td>${policy.jiaoqiangxian_no }</td>
					</tr>
					<tr>
						<td class="center">商业险保单号</td>
						<td>${policy.shangyexian_no }</td>
					</tr>
					<tr>
						<td class="center">本年交强险金额</td>
						<td>${policy.jiaoqiangxian_sum }</td>
					</tr>
					<tr>
						<td class="center">本年商业险金额</td>
						<td>${policy.shangyexian_sum }</td>
					</tr>
					<tr>
						<td class="center">首年交强险折扣率</td>
						<td>${policy.jiao_discount }</td>
					</tr>
					<tr>
						<td class="center">首年商业险折扣率</td>
						<td>${policy.shang_discount }</td>
					</tr>
					<tr>
						<td class="center">保险开始时间</td>
						<td>${policy.from }</td>
					</tr>
					<tr>
						<td class="center">保险结束时间</td>
						<td>${policy.to }</td>
					</tr>
					<tr>
						<td class="center">保单年限</td>
						<td>${policy.years }</td>
					</tr>
					<tr>
						<td class="center">赠送礼包面值</td>
						<td>${policy.present_sum }</td>
					</tr>
					<tr>
						<td class="center">成交类型</td>
						<td>${policy.channel }</td>
					</tr>
					<tr>
						<td class="center">备注</td>
						<td>${policy.note }</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>	

<div class="innerLR ">
	<div class="widget">
		<div class="widget-head"><h4 class="heading glyphicons calendar">商业险保费/折扣率</h4></div>
		<div class="widget-body">
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th class="center">保费年限</th>
						<th>金额</th>
						<th class="center">折扣率年限</th>
						<th>金额</th>
					</tr>
				</thead>			
				<tbody>
					<tr>
						<td class="center">2</td>
						<td>${policy.shangbao_2 }</td>
						<td class="center">2</td>
						<td>${policy.shanglv_2 }</td>
					</tr>
					<tr>
						<td class="center">3</td>
						<td>${policy.shangbao_3 }</td>
						<td class="center">3</td>
						<td>${policy.shanglv_3 }</td>
					</tr>
					<tr>
						<td class="center">4</td>
						<td>${policy.shangbao_4 }</td>
						<td class="center">4</td>
						<td>${policy.shanglv_4 }</td>
					</tr>
					<tr>
						<td class="center">5</td>
						<td>${policy.shangbao_5 }</td>
						<td class="center">5</td>
						<td>${policy.shanglv_5 }</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>

<div class="innerLR ">
	<div class="widget">
		<div class="widget-head"><h4 class="heading glyphicons calendar">车辆信息</h4></div>
		<div class="widget-body">
			<table class="table table-bordered table-striped">
				<tbody>
					<tr>
						<td class="center">车牌</td>
						<td>${aoto.number }</td>
					</tr>
					<tr>
						<td class="center">VIN码</td>
						<td>${aoto.vin }</td>
					</tr>
					<tr>
						<td class="center">发动机号</td>
						<td>${aoto.engine_no }</td>
					</tr>
					<tr>
						<td class="center">品牌车型</td>
						<td>${aoto.model }</td>
					</tr>
					<tr>
						<td class="center">保险到期时间</td>
						<td>${aoto.limit }</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>	

<div class="innerLR ">
	<div class="widget">
		<div class="widget-head"><h4 class="heading glyphicons calendar">客户信息</h4></div>
		<div class="widget-body">
			<table class="table table-bordered table-striped">
				<tbody>
					<tr>
						<td class="center">性别</td>
						<td>${customer.gender }</td>
					</tr>
					<tr>
						<td class="center">姓名</td>
						<td>${customer.name }</td>
					</tr>
					<tr>
						<td class="center">手机</td>
						<td>${customer.phone }</td>
					</tr>
					<tr>
						<td class="center">住址</td>
						<td>${customer.address }</td>
					</tr>
					<tr>
						<td class="center">出生年月</td>
						<td>${customer.birthday }</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>


<div class="innerLR ">
	<div class="widget">
		<div class="widget-head"><h4 class="heading glyphicons calendar">销售人员</h4></div>
		<div class="widget-body">
			<table class="table table-bordered table-striped">
				<tbody>
					<tr>
						<td class="center">姓名</td>
						<td>${saler.name }</td>
					</tr>
					<tr>
						<td class="center">账号</td>
						<td>${saler.account }</td>
					</tr>
					<tr>
						<td class="center">所属门店</td>
						<td>${saler.store }</td>
					</tr>
				</tbody>
			</table>
		</div>
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
	
	
	<!-- DataTables -->
	<script src="theme/scripts/DataTables/media/js/jquery.dataTables.min.js"></script>
	<script src="theme/scripts/DataTables/media/js/DT_bootstrap.js"></script>

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
<script>
$(function(){
	if ($('.prettyprint').length)
		prettyPrint();
});
</script>
	
</body>
</html>