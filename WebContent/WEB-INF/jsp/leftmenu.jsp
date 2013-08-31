<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<span class="profile">
	<a class="img" href="my_account.html?lang=en"><img src="images/logo.jpg" /></a>
	<span>
		<strong>
		${user }
		</strong>
		<a href="my_account.html?lang=en">新龙业</a>
	</span>
</span>
<div id="search">
	<input type="text" placeholder="快速查找 ..." />
	<button class="glyphicons search"><i></i></button>
</div>
<ul>
	
	<c:if test="${user == '管理员' }">

	</c:if>
	
	<c:choose>
		<c:when test="${user == '管理员' }">
			<li class="glyphicons home active">
				<a href="systemManage.html"><i></i><span>控制面板</span></a>
			</li>		
			<li class="glyphicons calendar"><a href="calendar.html?lang=en"><i></i><span>整车销售</span></a></li>		
			<li class="glyphicons calendar"><a href="calendar.html?lang=en"><i></i><span>二手车</span></a></li>
			<li class="glyphicons picture"><a href="gallery.html?lang=en"><i></i><span>售后服务</span></a></li>
			<li class="hasSubmenu glyphicons inbox_plus">
				<a href="managePolicy.html"><i></i><span>衍生业务</span></a>
			</li>		
		</c:when>
		<c:otherwise>
			<li class="glyphicons home">
				<a href="systemManage.html"><i></i><span>控制面板</span></a>
			</li>		
			<li class="glyphicons calendar"><a href="calendar.html?lang=en"><i></i><span>整车销售</span></a></li>		
			<li class="glyphicons calendar"><a href="calendar.html?lang=en"><i></i><span>二手车</span></a></li>
			<li class="glyphicons picture"><a href="gallery.html?lang=en"><i></i><span>售后服务</span></a></li>
			<li class="hasSubmenu glyphicons inbox_plus active">
				<a href="managePolicy.html"><i></i><span>衍生业务</span></a>
			</li>			
		</c:otherwise>
	</c:choose>
</ul>