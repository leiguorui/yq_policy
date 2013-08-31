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
	<link rel="stylesheet" href="theme/css/style.min.css?1362656641" />
	
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
			<c:import url="/left_menu.html" charEncoding="UTF-8"></c:import>
			<div class="clearfix" style="clear: both"></div>
		</div>
		<div id="content">
		<ul class="breadcrumb">
			<c:import url="/breadcrumb.html" charEncoding="UTF-8"></c:import>
		</ul>
<div class="separator bottom"></div>

<h3>Form Wizard</h3>
<div class="innerLR">
	<div id="rootwizard" class="wizard">
		<div class="wizard-head">
			<ul>
				<li><a href="#tab1" data-toggle="tab">First</a></li>
				<li><a href="#tab2" data-toggle="tab">Second</a></li>
				<li><a href="#tab3" data-toggle="tab">Third</a></li>
				<li><a href="#tab4" data-toggle="tab">Fourth</a></li>
				<li><a href="#tab5" data-toggle="tab">Fifth</a></li>
				<li><a href="#tab6" data-toggle="tab">Sixth</a></li>
				<li><a href="#tab7" data-toggle="tab">Seventh</a></li>
			</ul>
		</div>
		<div class="widget">
			<div class="widget-head progress progress-primary" id="bar">
				<div class="bar">Step <strong class="step-current">1</strong> of <strong class="steps-total">3</strong> - <strong class="steps-percent">100%</strong></div>
			</div>
			<div class="widget-body">
				<div class="tab-content">
					<div class="tab-pane active" id="tab1">
						<div class="row-fluid">
							<div class="span3">
								<strong>Product title</strong>
								<p class="muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
							<div class="span9">
								<label for="inputTitle">Title</label>
								<input type="text" id="inputTitle" class="span6" value="" placeholder="Enter product title ..." />
								<div class="separator"></div>
							</div>
						</div>
					</div>
					<div class="tab-pane" id="tab2">
						<div class="row-fluid">
							<div class="span3">
								<strong>Description</strong>
								<p class="muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
							<div class="span9">
								<label for="textDescription">Description</label>
								<textarea id="textDescription" class="wysihtml5" style="width: 96%;" rows="5">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.</textarea>
							</div>
						</div>
					</div>
					<div class="tab-pane" id="tab3">
						<h4>Third tab</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices libero vel massa egestas facilisis. Mauris convallis augue nec dolor dignissim vestibulum. Praesent imperdiet elit posuere arcu posuere consectetur. Morbi dignissim eleifend nibh, eget tincidunt nibh dignissim hendrerit. Cras iaculis congue lorem, eget gravida augue vehicula sed. Nam lorem sem, consectetur ac tempus quis, consectetur ut lectus. In bibendum luctus pharetra. Morbi lacinia sem sem. Phasellus quis tellus magna.</p>
					</div>
					<div class="tab-pane" id="tab4">
						<h4>Fourth tab</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices libero vel massa egestas facilisis. Mauris convallis augue nec dolor dignissim vestibulum. Praesent imperdiet elit posuere arcu posuere consectetur. Morbi dignissim eleifend nibh, eget tincidunt nibh dignissim hendrerit. Cras iaculis congue lorem, eget gravida augue vehicula sed. Nam lorem sem, consectetur ac tempus quis, consectetur ut lectus. In bibendum luctus pharetra. Morbi lacinia sem sem. Phasellus quis tellus magna.</p>
					</div>
					<div class="tab-pane" id="tab5">
						<h4>Fifth tab</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices libero vel massa egestas facilisis. Mauris convallis augue nec dolor dignissim vestibulum. Praesent imperdiet elit posuere arcu posuere consectetur. Morbi dignissim eleifend nibh, eget tincidunt nibh dignissim hendrerit. Cras iaculis congue lorem, eget gravida augue vehicula sed. Nam lorem sem, consectetur ac tempus quis, consectetur ut lectus. In bibendum luctus pharetra. Morbi lacinia sem sem. Phasellus quis tellus magna.</p>
					</div>
					<div class="tab-pane" id="tab6">
						<h4>Sixth tab</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices libero vel massa egestas facilisis. Mauris convallis augue nec dolor dignissim vestibulum. Praesent imperdiet elit posuere arcu posuere consectetur. Morbi dignissim eleifend nibh, eget tincidunt nibh dignissim hendrerit. Cras iaculis congue lorem, eget gravida augue vehicula sed. Nam lorem sem, consectetur ac tempus quis, consectetur ut lectus. In bibendum luctus pharetra. Morbi lacinia sem sem. Phasellus quis tellus magna.</p>
					</div>
					<div class="tab-pane" id="tab7">
						<h4>Seventh tab</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices libero vel massa egestas facilisis. Mauris convallis augue nec dolor dignissim vestibulum. Praesent imperdiet elit posuere arcu posuere consectetur. Morbi dignissim eleifend nibh, eget tincidunt nibh dignissim hendrerit. Cras iaculis congue lorem, eget gravida augue vehicula sed. Nam lorem sem, consectetur ac tempus quis, consectetur ut lectus. In bibendum luctus pharetra. Morbi lacinia sem sem. Phasellus quis tellus magna.</p>
					</div>
				</div>
				<div class="pagination margin-bottom-none">
					<ul>
						<li class="primary previous first"><a href="javascript:;">First</a></li>
						<li class="primary previous"><a href="javascript:;">Previous</a></li>
						<li class="last primary"><a href="javascript:;">Last</a></li>
					  	<li class="next primary"><a href="javascript:;">Next</a></li>
						<li class="next finish primary" style="display:none;"><a href="javascript:;">Finish</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
	<div class="wizard">
		<div class="widget widget-tabs">
			<div class="widget-head">
				<ul>
					<li class="active"><a href="#tab1-1" class="glyphicons home" data-toggle="tab"><i></i>First</a></li>
					<li><a href="#tab2-1" class="glyphicons umbrella" data-toggle="tab"><i></i>Second</a></li>
					<li><a href="#tab3-1" class="glyphicons fishes" data-toggle="tab"><i></i>Third</a></li>
					<li><a href="#tab4-1" class="glyphicons car" data-toggle="tab"><i></i>Fourth</a></li>
					<li><a href="#tab5-1" class="glyphicons leaf" data-toggle="tab"><i></i>Fifth</a></li>
					<li><a href="#tab6-1" class="glyphicons cup" data-toggle="tab"><i></i>Sixth</a></li>
					<li><a href="#tab7-1" class="glyphicons tie" data-toggle="tab"><i></i>Seventh</a></li>
				</ul>
			</div>
			<div class="widget-body">
				<div class="tab-content">
					<div class="tab-pane active" id="tab1-1">
						<div class="row-fluid">
							<div class="span3">
								<strong>Product title</strong>
								<p class="muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
							<div class="span9">
								<label for="inputTitle">Title</label>
								<input type="text" id="inputTitle" class="span6" value="" placeholder="Enter product title ..." />
								<div class="separator"></div>
							</div>
						</div>
					</div>
					<div class="tab-pane" id="tab2-1">
						<div class="row-fluid">
							<div class="span3">
								<strong>Description</strong>
								<p class="muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
							<div class="span9">
								<label for="textDescription">Description</label>
								<textarea id="textDescription" class="wysihtml5" style="width: 96%;" rows="5">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.</textarea>
							</div>
						</div>
					</div>
					<div class="tab-pane" id="tab3-1">
						<h4>Third tab</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices libero vel massa egestas facilisis. Mauris convallis augue nec dolor dignissim vestibulum. Praesent imperdiet elit posuere arcu posuere consectetur. Morbi dignissim eleifend nibh, eget tincidunt nibh dignissim hendrerit. Cras iaculis congue lorem, eget gravida augue vehicula sed. Nam lorem sem, consectetur ac tempus quis, consectetur ut lectus. In bibendum luctus pharetra. Morbi lacinia sem sem. Phasellus quis tellus magna.</p>
					</div>
					<div class="tab-pane" id="tab4-1">
						<h4>Fourth tab</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices libero vel massa egestas facilisis. Mauris convallis augue nec dolor dignissim vestibulum. Praesent imperdiet elit posuere arcu posuere consectetur. Morbi dignissim eleifend nibh, eget tincidunt nibh dignissim hendrerit. Cras iaculis congue lorem, eget gravida augue vehicula sed. Nam lorem sem, consectetur ac tempus quis, consectetur ut lectus. In bibendum luctus pharetra. Morbi lacinia sem sem. Phasellus quis tellus magna.</p>
					</div>
					<div class="tab-pane" id="tab5-1">
						<h4>Fifth tab</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices libero vel massa egestas facilisis. Mauris convallis augue nec dolor dignissim vestibulum. Praesent imperdiet elit posuere arcu posuere consectetur. Morbi dignissim eleifend nibh, eget tincidunt nibh dignissim hendrerit. Cras iaculis congue lorem, eget gravida augue vehicula sed. Nam lorem sem, consectetur ac tempus quis, consectetur ut lectus. In bibendum luctus pharetra. Morbi lacinia sem sem. Phasellus quis tellus magna.</p>
					</div>
					<div class="tab-pane" id="tab6-1">
						<h4>Sixth tab</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices libero vel massa egestas facilisis. Mauris convallis augue nec dolor dignissim vestibulum. Praesent imperdiet elit posuere arcu posuere consectetur. Morbi dignissim eleifend nibh, eget tincidunt nibh dignissim hendrerit. Cras iaculis congue lorem, eget gravida augue vehicula sed. Nam lorem sem, consectetur ac tempus quis, consectetur ut lectus. In bibendum luctus pharetra. Morbi lacinia sem sem. Phasellus quis tellus magna.</p>
					</div>
					<div class="tab-pane" id="tab7-1">
						<h4>Seventh tab</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices libero vel massa egestas facilisis. Mauris convallis augue nec dolor dignissim vestibulum. Praesent imperdiet elit posuere arcu posuere consectetur. Morbi dignissim eleifend nibh, eget tincidunt nibh dignissim hendrerit. Cras iaculis congue lorem, eget gravida augue vehicula sed. Nam lorem sem, consectetur ac tempus quis, consectetur ut lectus. In bibendum luctus pharetra. Morbi lacinia sem sem. Phasellus quis tellus magna.</p>
					</div>
				</div>
				<div class="pagination margin-bottom-none">
					<ul>
						<li class="primary previous first"><a href="javascript:;">First</a></li>
						<li class="primary previous"><a href="javascript:;">Previous</a></li>
						<li class="last primary"><a href="javascript:;">Last</a></li>
					  	<li class="next primary"><a href="javascript:;">Next</a></li>
						<li class="next finish primary" style="display:none;"><a href="javascript:;">Finish</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>		
<h3>Form Wizard</h3>
<div class="innerLR">
	<div id="rootwizard" class="wizard">
		<div class="wizard-head">
			<ul>
				<li><a href="#tab1" data-toggle="tab">First</a></li>
				<li><a href="#tab2" data-toggle="tab">Second</a></li>
				<li><a href="#tab3" data-toggle="tab">Third</a></li>
				<li><a href="#tab4" data-toggle="tab">Fourth</a></li>
				<li><a href="#tab5" data-toggle="tab">Fifth</a></li>
				<li><a href="#tab6" data-toggle="tab">Sixth</a></li>
				<li><a href="#tab7" data-toggle="tab">Seventh</a></li>
			</ul>
		</div>
		<div class="widget">
			<div class="widget-head progress progress-primary" id="bar">
				<div class="bar">Step <strong class="step-current">1</strong> of <strong class="steps-total">3</strong> - <strong class="steps-percent">100%</strong></div>
			</div>
			<div class="widget-body">
				<div class="tab-content">
					<div class="tab-pane active" id="tab1">
						<div class="row-fluid">
							<div class="span3">
								<strong>Product title</strong>
								<p class="muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
							<div class="span9">
								<label for="inputTitle">Title</label>
								<input type="text" id="inputTitle" class="span6" value="" placeholder="Enter product title ..." />
								<div class="separator"></div>
							</div>
						</div>
					</div>
					<div class="tab-pane" id="tab2">
						<div class="row-fluid">
							<div class="span3">
								<strong>Description</strong>
								<p class="muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
							<div class="span9">
								<label for="textDescription">Description</label>
								<textarea id="textDescription" class="wysihtml5" style="width: 96%;" rows="5">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.</textarea>
							</div>
						</div>
					</div>
					<div class="tab-pane" id="tab3">
						<h4>Third tab</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices libero vel massa egestas facilisis. Mauris convallis augue nec dolor dignissim vestibulum. Praesent imperdiet elit posuere arcu posuere consectetur. Morbi dignissim eleifend nibh, eget tincidunt nibh dignissim hendrerit. Cras iaculis congue lorem, eget gravida augue vehicula sed. Nam lorem sem, consectetur ac tempus quis, consectetur ut lectus. In bibendum luctus pharetra. Morbi lacinia sem sem. Phasellus quis tellus magna.</p>
					</div>
					<div class="tab-pane" id="tab4">
						<h4>Fourth tab</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices libero vel massa egestas facilisis. Mauris convallis augue nec dolor dignissim vestibulum. Praesent imperdiet elit posuere arcu posuere consectetur. Morbi dignissim eleifend nibh, eget tincidunt nibh dignissim hendrerit. Cras iaculis congue lorem, eget gravida augue vehicula sed. Nam lorem sem, consectetur ac tempus quis, consectetur ut lectus. In bibendum luctus pharetra. Morbi lacinia sem sem. Phasellus quis tellus magna.</p>
					</div>
					<div class="tab-pane" id="tab5">
						<h4>Fifth tab</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices libero vel massa egestas facilisis. Mauris convallis augue nec dolor dignissim vestibulum. Praesent imperdiet elit posuere arcu posuere consectetur. Morbi dignissim eleifend nibh, eget tincidunt nibh dignissim hendrerit. Cras iaculis congue lorem, eget gravida augue vehicula sed. Nam lorem sem, consectetur ac tempus quis, consectetur ut lectus. In bibendum luctus pharetra. Morbi lacinia sem sem. Phasellus quis tellus magna.</p>
					</div>
					<div class="tab-pane" id="tab6">
						<h4>Sixth tab</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices libero vel massa egestas facilisis. Mauris convallis augue nec dolor dignissim vestibulum. Praesent imperdiet elit posuere arcu posuere consectetur. Morbi dignissim eleifend nibh, eget tincidunt nibh dignissim hendrerit. Cras iaculis congue lorem, eget gravida augue vehicula sed. Nam lorem sem, consectetur ac tempus quis, consectetur ut lectus. In bibendum luctus pharetra. Morbi lacinia sem sem. Phasellus quis tellus magna.</p>
					</div>
					<div class="tab-pane" id="tab7">
						<h4>Seventh tab</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices libero vel massa egestas facilisis. Mauris convallis augue nec dolor dignissim vestibulum. Praesent imperdiet elit posuere arcu posuere consectetur. Morbi dignissim eleifend nibh, eget tincidunt nibh dignissim hendrerit. Cras iaculis congue lorem, eget gravida augue vehicula sed. Nam lorem sem, consectetur ac tempus quis, consectetur ut lectus. In bibendum luctus pharetra. Morbi lacinia sem sem. Phasellus quis tellus magna.</p>
					</div>
				</div>
				<div class="pagination margin-bottom-none">
					<ul>
						<li class="primary previous first"><a href="javascript:;">First</a></li>
						<li class="primary previous"><a href="javascript:;">Previous</a></li>
						<li class="last primary"><a href="javascript:;">Last</a></li>
					  	<li class="next primary"><a href="javascript:;">Next</a></li>
						<li class="next finish primary" style="display:none;"><a href="javascript:;">Finish</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
	<div class="wizard">
		<div class="widget widget-tabs">
			<div class="widget-head">
				<ul>
					<li class="active"><a href="#tab1-1" class="glyphicons home" data-toggle="tab"><i></i>First</a></li>
					<li><a href="#tab2-1" class="glyphicons umbrella" data-toggle="tab"><i></i>Second</a></li>
					<li><a href="#tab3-1" class="glyphicons fishes" data-toggle="tab"><i></i>Third</a></li>
					<li><a href="#tab4-1" class="glyphicons car" data-toggle="tab"><i></i>Fourth</a></li>
					<li><a href="#tab5-1" class="glyphicons leaf" data-toggle="tab"><i></i>Fifth</a></li>
					<li><a href="#tab6-1" class="glyphicons cup" data-toggle="tab"><i></i>Sixth</a></li>
					<li><a href="#tab7-1" class="glyphicons tie" data-toggle="tab"><i></i>Seventh</a></li>
				</ul>
			</div>
			<div class="widget-body">
				<div class="tab-content">
					<div class="tab-pane active" id="tab1-1">
						<div class="row-fluid">
							<div class="span3">
								<strong>Product title</strong>
								<p class="muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
							<div class="span9">
								<label for="inputTitle">Title</label>
								<input type="text" id="inputTitle" class="span6" value="" placeholder="Enter product title ..." />
								<div class="separator"></div>
							</div>
						</div>
					</div>
					<div class="tab-pane" id="tab2-1">
						<div class="row-fluid">
							<div class="span3">
								<strong>Description</strong>
								<p class="muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
							<div class="span9">
								<label for="textDescription">Description</label>
								<textarea id="textDescription" class="wysihtml5" style="width: 96%;" rows="5">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.</textarea>
							</div>
						</div>
					</div>
					<div class="tab-pane" id="tab3-1">
						<h4>Third tab</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices libero vel massa egestas facilisis. Mauris convallis augue nec dolor dignissim vestibulum. Praesent imperdiet elit posuere arcu posuere consectetur. Morbi dignissim eleifend nibh, eget tincidunt nibh dignissim hendrerit. Cras iaculis congue lorem, eget gravida augue vehicula sed. Nam lorem sem, consectetur ac tempus quis, consectetur ut lectus. In bibendum luctus pharetra. Morbi lacinia sem sem. Phasellus quis tellus magna.</p>
					</div>
					<div class="tab-pane" id="tab4-1">
						<h4>Fourth tab</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices libero vel massa egestas facilisis. Mauris convallis augue nec dolor dignissim vestibulum. Praesent imperdiet elit posuere arcu posuere consectetur. Morbi dignissim eleifend nibh, eget tincidunt nibh dignissim hendrerit. Cras iaculis congue lorem, eget gravida augue vehicula sed. Nam lorem sem, consectetur ac tempus quis, consectetur ut lectus. In bibendum luctus pharetra. Morbi lacinia sem sem. Phasellus quis tellus magna.</p>
					</div>
					<div class="tab-pane" id="tab5-1">
						<h4>Fifth tab</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices libero vel massa egestas facilisis. Mauris convallis augue nec dolor dignissim vestibulum. Praesent imperdiet elit posuere arcu posuere consectetur. Morbi dignissim eleifend nibh, eget tincidunt nibh dignissim hendrerit. Cras iaculis congue lorem, eget gravida augue vehicula sed. Nam lorem sem, consectetur ac tempus quis, consectetur ut lectus. In bibendum luctus pharetra. Morbi lacinia sem sem. Phasellus quis tellus magna.</p>
					</div>
					<div class="tab-pane" id="tab6-1">
						<h4>Sixth tab</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices libero vel massa egestas facilisis. Mauris convallis augue nec dolor dignissim vestibulum. Praesent imperdiet elit posuere arcu posuere consectetur. Morbi dignissim eleifend nibh, eget tincidunt nibh dignissim hendrerit. Cras iaculis congue lorem, eget gravida augue vehicula sed. Nam lorem sem, consectetur ac tempus quis, consectetur ut lectus. In bibendum luctus pharetra. Morbi lacinia sem sem. Phasellus quis tellus magna.</p>
					</div>
					<div class="tab-pane" id="tab7-1">
						<h4>Seventh tab</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices libero vel massa egestas facilisis. Mauris convallis augue nec dolor dignissim vestibulum. Praesent imperdiet elit posuere arcu posuere consectetur. Morbi dignissim eleifend nibh, eget tincidunt nibh dignissim hendrerit. Cras iaculis congue lorem, eget gravida augue vehicula sed. Nam lorem sem, consectetur ac tempus quis, consectetur ut lectus. In bibendum luctus pharetra. Morbi lacinia sem sem. Phasellus quis tellus magna.</p>
					</div>
				</div>
				<div class="pagination margin-bottom-none">
					<ul>
						<li class="primary previous first"><a href="javascript:;">First</a></li>
						<li class="primary previous"><a href="javascript:;">Previous</a></li>
						<li class="last primary"><a href="javascript:;">Last</a></li>
					  	<li class="next primary"><a href="javascript:;">Next</a></li>
						<li class="next finish primary" style="display:none;"><a href="javascript:;">Finish</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
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
<script>
$(function(){
	if ($('.prettyprint').length)
		prettyPrint();
});
</script>
	
	<!-- Bootstrap Form Wizard -->
	<script src="bootstrap/extend/twitter-bootstrap-wizard/jquery.bootstrap.wizard.js"></script>
	<script type="text/javascript">
	$(function()
	{
		var bWizardTabClass = '';
		$('.wizard').each(function()
		{
			if ($(this).is('#rootwizard'))
				bWizardTabClass = 'bwizard-steps';
			else
				bWizardTabClass = '';

			var wiz = $(this);
			
			$(this).bootstrapWizard(
			{
				onNext: function(tab, navigation, index) 
				{
					if(index==1) 
					{
						// Make sure we entered the title
						if(!wiz.find('#inputTitle').val()) {
							alert('You must enter the product title');
							wiz.find('#inputTitle').focus();
							return false;
						}
					}
				}, 
				onLast: function(tab, navigation, index) 
				{
					// Make sure we entered the title
					if(!wiz.find('#inputTitle').val()) {
						alert('You must enter the product title');
						wiz.find('#inputTitle').focus();
						return false;
					}
				}, 
				onTabClick: function(tab, navigation, index) 
				{
					// Make sure we entered the title
					if(!wiz.find('#inputTitle').val()) {
						alert('You must enter the product title');
						wiz.find('#inputTitle').focus();
						return false;
					}
				},
				onTabShow: function(tab, navigation, index) 
				{
					var $total = navigation.find('li').length;
					var $current = index+1;
					var $percent = ($current/$total) * 100;
					wiz.find('.bar').css({width:$percent+'%'});

					wiz.find('.bar')
						.find('.step-current').html($current)
						.parent().find('.steps-total').html($total)
						.parent().find('.steps-percent').html(Math.round($percent) + "%");
		
					// If it's the last tab then hide the last button and show the finish instead
					if($current >= $total) {
						wiz.find('.pagination .next').hide();
						wiz.find('.pagination .finish').show();
						wiz.find('.pagination .finish').removeClass('disabled');
					} else {
						wiz.find('.pagination .next').show();
						wiz.find('.pagination .finish').hide();
					}
				},
				tabClass: bWizardTabClass,
				nextSelector: '.next', 
				previousSelector: '.previous',
				firstSelector: '.first', 
				lastSelector: '.last'
			});

			wiz.find('.finish').click(function() 
			{
				alert('Finished!, Starting over!');
				wiz.find("a[data-toggle*='tab']:first").trigger('click');
			});
		});
	});
	</script>

</body>
</html>