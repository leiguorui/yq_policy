<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
String realPath = "http://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();   
request.setAttribute("realPath", realPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
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
</head>
<body>
	
	<!-- Start Content -->
	<div class="container-fluid">
		
		<div class="navbar main">
			<c:import url="${realPath }/header.html" charEncoding="UTF-8"></c:import>
		</div>
		
	<div id="wrapper">
		<div id="menu" class="hidden-phone">
			<c:import url="${realPath }/left_menu.html" charEncoding="UTF-8" >
				<c:param name="type" value="manage"></c:param>
				<c:param name="user" value="${sessionScope.USER_CONTEXT.name}"></c:param>
			</c:import>
			<div class="clearfix" style="clear: both"></div>
		</div>
		<div id="content">
		<ul class="breadcrumb">
			<c:import url="${realPath }/breadcrumb.html" charEncoding="UTF-8"></c:import>
		</ul>
<div class="separator bottom"></div>

<div class="heading-buttons">
	<h3>保单管理 </h3>
	<div class="buttons pull-right">
		<a href="addPolicyPopup.html"  rel="superbox[iframe][1200x768]"  class="btn btn-primary btn-icon glyphicons circle_plus"><i></i> 添加保单</a>
		<a href="#" id="search_id"  class="btn btn-primary btn-icon glyphicons search"><i></i> 查询</a>
		<a href="managePolicy.html"  class="btn btn-primary btn-icon glyphicons refresh"><i></i> 刷新</a>
	</div>
</div>
<div class="separator bottom"></div>

<div class="innerLR">
<form action="managePolicy.html" method="post" id="queryPolicyId">
	<div class="widget">
	保单开始日期:
		<div class="input-prepend input-append">
			<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
			<span class="add-on"><i></i>从</span>
			<input name="beginFrom" id="beginDateFrom" style="width: 80px;" type="text" onClick="WdatePicker()"/>
			<span class="add-on glyphicons calendar"><i></i></span>
		</div>
		<div class="input-append">
			<span class="add-on"><i></i>至</span>
			<input name="beginTo" id="beginDateTo" style="width: 80px;" type="text" onClick="WdatePicker()"/>
			<span class="add-on glyphicons calendar"><i></i></span>
		</div>
	</div>
	<div class="widget" style="margin-top: -20px;">
		保单结束日期:
		<div class="input-prepend input-append">
		 
			<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
			<span class="add-on"><i></i>从</span>
			<input name="endFrom" id="endDateFrom" style="width: 80px;" type="text" onClick="WdatePicker()"/>
			<span class="add-on glyphicons calendar"><i></i></span>
		</div>
		<div class="input-append">
			<span class="add-on"><i></i>至</span>
			<input name="endTo" id="beginDateTo" style="width: 80px;" type="text" onClick="WdatePicker()"/>
			<span class="add-on glyphicons calendar"><i></i></span>
		</div>
	</div>
	
	<div class="widget" style="margin-top: -20px;">
	保单号: 
	<div class="input-prepend input-append">
		<span class="add-on"><i></i>商业险</span>
		<input name="shangNo" id="shangyeNo" style="width: 80px;" type="text"/>
		<span class="add-on glyphicons pencil"><i></i></span>
	</div>
	<div class="input-append">
		<span class="add-on"><i></i>交强险</span>
		<input name="jiaoNo" id="jiangqiangNo" style="width: 80px;" type="text"/>
		<span class="add-on glyphicons pencil"><i></i></span>
	</div>
	</div>
	
	<div class="widget" style="margin-top: -20px;">
		姓名/名称: 
		<div class="input-prepend input-append">
			<span class="add-on"><i></i>顾客</span>
			<input name="cName" id="customerName" style="width: 80px;" type="text" />
			<span class="add-on glyphicons pencil"><i></i></span>
		</div>
		<div class="input-append">
			<span class="add-on"><i></i>销售</span>
			<input name="sName" id="salerName" style="width: 80px;" type="text"/>
			<span class="add-on glyphicons pencil"><i></i></span>
		</div>
		<div class="input-append">
			<span class="add-on"><i></i>车牌</span>
			<input name="cNumber" id="storeName" style="width: 80px;" type="text"/>
			<span class="add-on glyphicons pencil"><i></i></span>
		</div>
	</div>
</form>
	
	<div class="widget">
		<div class="widget-head">
		</div>
		<div class="widget-body">
			<div class="separator bottom form-inline small">
				总共记录: 26
				<span class="pull-right">
					<label class="strong">排序方式:</label>
					<select class="selectpicker" data-style="btn-default btn-small">
						<option>1</option>
						<option>2</option>
						<option>3</option>
					</select>
				</span>
			</div>
			<table class="table table-bordered table-condensed table-striped table-primary table-vertical-center checkboxs">
				<thead>
					<tr>
						<th style="width: 1%;" class="uniformjs"><input type="checkbox" /></th>
						<th class="center">id</th>
						<th class="center">商业险</th>
						<th class="center">交强险</th>
						<th class="center">车牌号</th>
						<th class="center">顾客</th>
						<th>销售</th>
						<th class="center" style="width: 160px;">操作</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${policyVo}" var="policy">
					<tr class="selectable">
						<td class="center uniformjs"><input type="checkbox" /></td>
						<td class="center">${policy.id }</td>
						<td class="center">${policy.shangyexian_no }</td>
						<td class="center">${policy.jiaoqiangxian_no }</td>
						<td class="center">No. ${policy.car_number }</td>
						<td class="center">${policy.customer_name }</td>
						<td><strong>${policy.saler_name }</strong><br/><small>${policy.saler_store }</small></td>
						<td class="center">
							<a href="detailPolicy.html?id=${policy.id }" rel="superbox[iframe][1200x768]" class="glyphicons eye_open"><i></i></a>
							<a href="updatePolicy.html?id=${policy.id }" rel="superbox[iframe][1200x768]" class="glyphicons pencil "><i></i></a>
							<a href="#" onclick="deletePolicy('${policy.id }')" class="glyphicons remove_2"><i></i></a>
						</td>
					</tr>				
				</c:forEach>
				</tbody>
			</table>
			<div class="separator top form-inline small">
				<div class="pagination pagination-small pull-right" style="margin: 0;">
					<ul>
						<li class="disabled"><a href="#">&laquo;</a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">&raquo;</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</div>
<br/>		
				<!-- End Content -->
		</div>
		<!-- End Wrapper -->
		</div>
				
	</div>
	
<script>
$(function(){
	$("#search_id").click(function(){
		$("#queryPolicyId").submit();
	});
});

function deletePolicy(field){
    if (confirm("确定删除吗?")) {
        location="deletePolicy.html?id="+field;
    }
    return false;
}
</script>
	
</body>
</html>