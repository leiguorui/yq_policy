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
<div class="row-fluid">
<div class="span6">
<div class="innerLR ">
<form:form commandName="policy" id="id_policyForm" name="policyForm">
<form:input path="id" type="hidden" value="${policy.id }"/>
	<div class="alert alert-primary">
		<button type="button" class="close" data-dismiss="alert">&times;</button>
		 欢迎使用,信号标记为必填项.
	</div>
	
	<div class="widget">
		<div class="widget-head">
			<h4 class="heading glyphicons calendar">保单信息</h4>
		</div>
		<div class="widget-body">
			<table class="table table-bordered table-striped">
				<tbody>
					<tr>
						<td class="center">保单类型</td>
						<td>
						<div class="input-append">
							<form:input path="type" style="width:80px" type="text"/>
							<div class="btn-group dropup">
								<button class="btn dropdown-toggle" data-toggle="dropdown">
									请选择 <span class="caret"></span>
								</button>
								<ul class="dropdown-menu pull-right">
									<li><a href="#">新车销售</a></li>
									<li><a href="#">续保</a></li>
									<li class="divider"></li>
									<li><a href="#">其他</a></li>
								</ul>
							</div>
						</div>	
						</td>
					</tr>
					<tr>
						<td class="center">贷款年限</td>
						<td>
						<div class="input-append">
							<form:input path="loan_years" style="width:50px" type="text" placeholder="100,000,000" /> 
							<span class="add-on">年</span>
						</div>
						</td>
					</tr>
					<tr>
						<td class="center">保单年限</td>
						<td>
						<div class="input-append">
							<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
							<form:input path="from" id="id_from" style="width:80px" type="text" onClick="WdatePicker()"/>
							<span class="add-on">至</span>
							<form:input path="to" id="id_to" style="width:80px" type="text" onClick="WdatePicker()"/>
							<span class="add-on">共计</span>
							<form:input path="years" id="id_years" style="width:20px" type="text" />
							<span class="add-on">天</span>
						</div>
						</td>
					</tr>
					<tr>
						<td class="center">业务途径</td>
						<td>
						<div class="input-append">
							<form:input path="service" style="width:80px" type="text" />
							<div class="btn-group dropup">
								<button class="btn dropdown-toggle" data-toggle="dropdown">
									请选择 <span class="caret"></span>
								</button>
								<ul class="dropdown-menu pull-right">
									<li><a href="#">本年新销售</a></li>
									<li><a href="#">上年联保转入</a></li>
									<li><a href="#">上年赠送转入</a></li>
									<li><a href="#">本年集团拨入</a></li>
									<li><a href="#">本年外委拨入</a></li>
									<li class="divider"></li>
									<li><a href="#">其他</a></li>
								</ul>
							</div>
						</div>
						</td>
					</tr>
					<tr>
						<td class="center">保险公司</td>
						<td>
						<div class="input-append">
							<form:input path="insuer_comp" style="width:80px" type="text" />
							<div class="btn-group dropup">
								<button class="btn dropdown-toggle" data-toggle="dropdown">
									请选择 <span class="caret"></span>
								</button>
								<ul class="dropdown-menu pull-right">
									<li><a href="#">中保</a></li>
									<li><a href="#">平安</a></li>
									<li><a href="#">太平洋</a></li>
									<li class="divider"></li>
									<li><a href="#">其他</a></li>
								</ul>
							</div>
						</div>						
						</td>
					</tr>
					<tr>
						<td class="center">交强险保单号</td>
						<td><form:input path="jiaoqiangxian_no" style="width:80px" type="text" /></td>
					</tr>
					<tr>
						<td class="center">商业险保单号</td>
						<td><form:input path="shangyexian_no" style="width:80px" type="text" /></td>
					</tr>
					<tr>
						<td class="center">本年交强险金额</td>
						<td>
						<div class="input-prepend">
							<span class="add-on">&yen;</span>
							<form:input path="jiaoqiangxian_sum" style="width:80px" type="text" placeholder="100,000,000" /> 
						</div>						
						</td>
					</tr>
					<tr>
						<td class="center">本年商业险金额</td>
						<td>
						<div class="input-prepend">
							<span class="add-on">&yen;</span>
							<form:input path="shangyexian_sum" style="width:80px" type="text" placeholder="100,000,000" /> 
						</div>	
						</td>
					</tr>
					<tr>
						<td class="center">首年交强险折扣率</td>
						<td>
						<div class="input-append">
							<form:input path="jiao_discount" style="width:80px" type="text" placeholder="100,000,000" /> 
							<span class="add-on">.00</span>
						</div>
						</td>
					</tr>
					<tr>
						<td class="center">首年商业险折扣率</td>
						<td>
						<div class="input-append">
							<form:input path="shang_discount" style="width:80px" type="text" placeholder="100,000,000" /> 
							<span class="add-on">.00</span>
						</div>					
						</td>
					</tr>
					<tr>
						<td class="center">赠送礼包面值</td>
						<td>
							<div class="input-prepend">
							<span class="add-on">&yen;</span>
							<form:input path="present_sum" style="width:80px" type="text" placeholder="100,000,000" /> 
							</div>	
						</td>
					</tr>
					<tr>
						<td class="center">成交类型</td>
						<td>
						<div class="input-append">
							<form:input path="channel" style="width:80px" type="text" />
							<div class="btn-group dropup">
								<button class="btn dropdown-toggle" data-toggle="dropdown">
									请选择 <span class="caret"></span>
								</button>
								<ul class="dropdown-menu pull-right">
									<li><a href="#">销售</a></li>
									<li><a href="#">赠送</a></li>
									<li class="divider"></li>
									<li><a href="#">其他</a></li>
								</ul>
							</div>
						</div>
						</td>
					</tr>
					<tr>
						<td class="center">备注</td>
						<td><form:input path="note" style="width:80px" type="text" /></td>
					</tr>
				</tbody>
				
			</table>
		</div>
	</div>
</form:form>
</div>	

<div class="innerLR ">
<form:form commandName="saler"  id="id_salerForm">
<input name="policyid" type="hidden" value="${policy.id }"/>
	<div class="widget">
		<div class="widget-head"><h4 class="heading glyphicons calendar">销售人员</h4></div>
		<div class="widget-body">
			<table class="table table-bordered table-striped">
				<tbody>
					<tr>
						<td class="center">姓名</td>
						<td>
						<div class="input-prepend">
							<span class="add-on"></span>
							<form:input path="name" style="width:80px" type="text" />
						</div>
						</td>
					</tr>
					<tr>
						<td class="center">所属门店</td>
						<td>
						<div class="input-prepend">
							<span class="add-on"></span>
							<form:input path="store" style="width:80px" type="text" />
						</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</form:form>
</div>
</div>

<div class="span6">
<div class="innerLR ">
<form:form commandName="policy" id="id_shangForm">
<form:input path="id" type="hidden" value="${policy.id }"/>
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
						<td>
						<div class="input-prepend">
							<span class="add-on">&yen;</span>
							<form:input path="shangbao_2" style="width:100px" type="text" placeholder="100,000,000" /> 
						</div>	
						</td>
						<td class="center">2</td>
						<td>
						<div class="input-prepend">
							<span class="add-on">&yen;</span>
							<form:input path="shanglv_2" style="width:100px" type="text" placeholder="100,000,000" /> 
						</div>
						</td>
					</tr>
					<tr>
						<td class="center">3</td>
						<td><div class="input-prepend">
							<span class="add-on">&yen;</span>
							<form:input path="shangbao_3" style="width:100px" type="text" placeholder="100,000,000" /> 
						</div></td>
						<td class="center">3</td>
						<td><div class="input-prepend">
							<span class="add-on">&yen;</span>
							<form:input path="shanglv_3" style="width:100px" type="text" placeholder="100,000,000" /> 
						</div></td>
					</tr>
					<tr>
						<td class="center">4</td>
						<td><div class="input-prepend">
							<span class="add-on">&yen;</span>
							<form:input path="shangbao_4" style="width:100px" type="text" placeholder="100,000,000" /> 
						</div></td>
						<td class="center">4</td>
						<td><div class="input-prepend">
							<span class="add-on">&yen;</span>
							<form:input path="shanglv_4" style="width:100px" type="text" placeholder="100,000,000" /> 
						</div></td>
					</tr>
					<tr>
						<td class="center">5</td>
						<td><div class="input-prepend">
							<span class="add-on">&yen;</span>
							<form:input path="shangbao_5" style="width:100px" type="text" placeholder="100,000,000" /> 
						</div></td>
						<td class="center">5</td>
						<td><div class="input-prepend">
							<span class="add-on">&yen;</span>
							<form:input path="shanglv_5" style="width:100px" type="text" placeholder="100,000,000" /> 
						</div></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</form:form>
</div>

<div class="innerLR ">
<form:form commandName="aoto" id="id_aotoForm">
<input type="hidden" name="policyid" value="${policy.id }"/>
	<div class="widget">
		<div class="widget-head"><h4 class="heading glyphicons calendar">车辆信息</h4></div>
		<div class="widget-body">
			<table class="table table-bordered table-striped">
				<tbody>
					<tr>
						<td class="center">车牌</td>
						<td>
						<div class="input-prepend">
							<span class="add-on">No.</span>
							<form:input path="number" style="width:80px" type="text" placeholder="辽A10000" /> 
						</div>
						</td>
					</tr>
					<tr>
						<td class="center">VIN码后七位</td>
						<td>
						<div class="input-prepend">
							<span class="add-on">No.</span>
							<form:input path="vin" style="width:80px" type="text" placeholder="1000000" />
						</div>
						</td>
					</tr>
					<tr>
						<td class="center">发动机号</td>
						<td>
						<div class="input-prepend">
							<span class="add-on">No.</span>
							<form:input path="engine_no" style="width:80px" type="text" placeholder="1000000" />
						</div>
						</td>
					</tr>
					<tr>
						<td class="center">品牌车型</td>
						<td>
						<div class="input-prepend">
							<span class="add-on">Car</span>
							<form:input path="model" style="width:80px" type="text" placeholder="1000000" />
						</div>
						</td>
					</tr>
					<tr>
						<td class="center">保险到期时间</td>
						<td>
						<div class="input-prepend">
							<span class="add-on"></span>
							<form:input path="limit"  style="width:80px" type="text" onClick="WdatePicker()"/>
						</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</form:form>
</div>	

<div class="innerLR ">
<form:form commandName="customer" id="id_customerForm">
<input name="policyid" type="hidden" value="${policy.id }"/>
	<div class="widget">
		<div class="widget-head"><h4 class="heading glyphicons calendar">客户信息</h4></div>
		<div class="widget-body">
			<table class="table table-bordered table-striped">
				<tbody>
					<tr>
						<td class="center">性别</td>
						<td>
						<div class="input-prepend">
							<span class="add-on"></span>
							<form:input path="gender" style="width:80px" type="text" />
						</div>
						</td>
					</tr>
					<tr>
						<td class="center">姓名</td>
						<td>
						<div class="input-prepend">
							<span class="add-on"></span>
							<form:input path="name" style="width:80px" type="text" />
						</div>
						</td>
					</tr>
					<tr>
						<td class="center">手机</td>
						<td>
						<div class="input-prepend">
							<span class="add-on"></span>
							<form:input path="phone" style="width:80px" type="text" />
						</div>
						</td>
					</tr>
					<tr>
						<td class="center">住址</td>
						<td>
						<div class="input-prepend">
							<span class="add-on"></span>
							<form:input path="address" style="width:80px" type="text" />
						</div>
						</td>
					</tr>
					<tr>
						<td class="center">出生日期</td>
						<td>
						<div class="input-prepend">
							<span class="add-on"></span>
							<form:input path="birthday"  style="width:80px" type="text" onClick="WdatePicker()"/>
						</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	
	</div>
</form:form>
</div>
	<div class="form-actions pull-right">
		<button type="submit" id="id_submit" class="btn btn-icon btn-primary glyphicons circle_ok"><i></i>保存</button>
		<button type="button" class="btn btn-icon btn-default glyphicons circle_remove"><i></i>取消</button>
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
<script src="scripts/CalculateDays.js"></script>
<script src="scripts/jquery.form.js"></script>
<script>
$(function(){
	if ($('.prettyprint').length)
		prettyPrint();
});

$("#id_to").blur(function(){
	$("#id_years").val(dateDiff($("#id_from").val(),$("#id_to").val()));
});


$(".input-append li").click(function(){
	$(this).parent().parent().parent().find("input").val($(this).text());
});

$('#id_submit').click(function(){
    $('#id_policyForm').ajaxSubmit({ 
        url:'add.html', //提交给哪个执行
        type:'POST', 
        success: function(){alert("1");} //显示操作提示
        }); 
    $('#id_aotoForm').ajaxSubmit({ 
        url:'addAoto.html', //提交给哪个执行
        type:'POST', 
        success: function(){ alert("2");} //显示操作提示
        });
    $('#id_shangForm').ajaxSubmit({ 
        url:'updateShang.html', //提交给哪个执行
        type:'POST', 
        success: function(){alert("3");} //显示操作提示
        }); 
    $('#id_customerForm').ajaxSubmit({ 
        url:'addCustomer.html', //提交给哪个执行
        type:'POST', 
        success: function(){alert("4");} //显示操作提示
        });
    $('#id_salerForm').ajaxSubmit({ 
        url:'addSaler.html', //提交给哪个执行
        type:'POST', 
        success: function(){ alert("5");} //显示操作提示
        }); 
    return false; //为了不刷新页面,返回false，反正都已经在后台执行完了，没事！
});  
</script>
	
</body>
</html>