﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.libmis.util.SpringSecurityUtils" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>图书管理系统</title>
<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/invalid.css" type="text/css" media="screen" />	
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/simpla.jquery.configuration.js"></script>
<script type="text/javascript" src="js/facebox.js"></script>
<script type="text/javascript" src="js/jquery.wysiwyg.js"></script>
<script type="text/javascript" src="js/jquery.datePicker.js"></script>
<script type="text/javascript" src="js/jquery.date.js"></script>
</head>
	<body><div id="body-wrapper"> <!-- Wrapper for the radial gradient background -->
		
		<div id="sidebar"><div id="sidebar-wrapper"> <!-- Sidebar with logo and menu -->
			
			<h1 id="sidebar-title"><a href="#">Simpla Admin</a></h1>
		  
			<!-- Logo (221px wide) -->
			<img id="logo" src="images/logo.png" alt="Simpla Admin logo" />
		  
			<!-- Sidebar Profile links -->
			<div id="profile-links">
				您好, <%=SpringSecurityUtils.getCurrentUserName()%>
				<br />
				<a href="admin/logout" title="Sign Out" target="father">退出</a>
			</div>        
			
			<ul id="main-nav">  <!-- Accordion Menu -->
				<sec:authorize ifAnyGranted="ROLE_USER">
		
				</sec:authorize>
				<sec:authorize ifAnyGranted="ROLE_BOOK.READ">
				<li> 
					<a href="#" class="nav-top-item"> <!-- Add the class "current" to current menu item -->
						书籍管理
					</a>
					<ul>
						<li><a href="admin/bookSearch" target="main">查看书籍</a></li>
						<sec:authorize ifAnyGranted="ROLE_BOOK.ADD">
						<li><a href="admin/bookAddInput"  target="main">增加书目</a></li> <!-- Add class "current" to sub menu items also -->
						</sec:authorize>
						<sec:authorize ifAnyGranted="ROLE_COPY.ADD">
						<li><a href="admin/copyAddInput" target="main">增加书目副本</a></li>
						</sec:authorize>
					</ul>
				</li>
				</sec:authorize>
				
				<sec:authorize ifAnyGranted="ROLE_BORROW,ROLE_RETURN">
				<li>
					<a href="#" class="nav-top-item">
						借阅管理
					</a>
					<ul>
						<li><a href="admin/borrowInput" target="main">借书</a></li>
						<li><a href="admin/returnInput" target="main">还书</a></li>
					</ul>
				</li>
				</sec:authorize>
				<sec:authorize ifAnyGranted="ROLE_SEARCH.READ,ROLE_FAULT.READ">
				<li>
					<a href="#" class="nav-top-item">
						其他信息管理
					</a>
					<ul>
						<li><a href="admin/faultList" target="main">违章信息</a></li>
						<li><a href="admin/searchList" target="main">查询历史</a></li>
					</ul>
				</li>
				</sec:authorize>
				<sec:authorize ifAnyGranted="ROLE_USER.READ,ROLE_USER.ADD">
				<li>
					<a href="#" class="nav-top-item">
						用户管理
					</a>
					<ul>
						<li><a href="admin/userSearch" target="main">查看用户</a></li>
						<li><a href="admin/userAddInput" target="main">增加用户</a></li>
					</ul>
				</li>
				</sec:authorize>
				
				
				<sec:authorize ifAnyGranted="ROLE_ROLE.READ,ROLE_ROLE.ADD">
				<li>
					<a href="#" class="nav-top-item">
						角色管理
					</a>
					<ul>
						<li><a href="admin/roleList" target="main">查看角色</a></li>
						<li><a href="admin/roleAddInput" target="main">增加角色</a></li>
					</ul>
				</li>   
				</sec:authorize>   
				
			</ul> <!-- End #main-nav -->
			
			
			
		</div></div> <!-- End #sidebar -->
		
	</div></body>
</html>
