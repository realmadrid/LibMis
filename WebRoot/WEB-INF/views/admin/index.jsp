﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
			<title>图书管理系统</title>
	</head>

	<frameset rows="*" cols="230,*" framespacing="0" frameborder="no"
		border="0" id="frame" name="father">
		 <frame src="admin/left" name="left"
		noresize="noresize" marginwidth="0" marginheight="0" frameborder="0"
		scrolling="no" target="main" />
		 <frame src="admin/main" name="main"
		noresize="noresize" marginwidth="0" marginheight="0" frameborder="0"
		target="_self" /> </frameset>
	<noframes></noframes>
</html>
