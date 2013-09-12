<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<span class="profile">
	<a class="img" href="my_account.html?lang=en"><img src="images/logo.jpg" /></a>
	<span>
		<strong>
		${user.account }
		</strong>
		<a >${user.name }</a>
	</span>
</span>
<div>
<p>
</p>
</div>
<ul>
	
	<c:choose>
		<c:when test="${user.name == 'admin' }">
			<li class="glyphicons home active">
				<a href="systemManage.html"><i></i><span>控制面板</span></a>
			</li>		
			<li class="glyphicons calendar"><a href="#" class="has_no_power"><i></i><span>整车销售</span></a></li>		
			<li class="glyphicons calendar"><a href="#" class="has_no_power"><i></i><span>二手车</span></a></li>
			<li class="glyphicons picture"><a href="#" class="has_no_power"><i></i><span>售后服务</span></a></li>
			<li class="hasSubmenu glyphicons inbox_plus">
				<a href="#" class="has_no_power"><i></i><span>衍生业务</span></a>
			</li>		
		</c:when>
		<c:otherwise>
			<li class="glyphicons home">
				<a href="#" class="has_no_power"><i></i><span>控制面板</span></a>
			</li>		
			<li class="glyphicons calendar"><a href="#" class="has_no_power"><i></i><span>整车销售</span></a></li>		
			<li class="glyphicons calendar"><a href="#" class="has_no_power"><i></i><span>二手车</span></a></li>
			<li class="glyphicons picture"><a href="#" class="has_no_power"><i></i><span>售后服务</span></a></li>
			<li class="hasSubmenu glyphicons inbox_plus active">
				<a href="managePolicy.html"><i></i><span>衍生业务</span></a>
			</li>			
		</c:otherwise>
	</c:choose>
</ul>
<script>
$(function(){
	$(".has_no_power").click(function(){
		alert("您的权限不能操作!");
		return false;
	});
});
</script>