﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	String success = request.getParameter("success");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>图书管理系统</title>
		<link rel="stylesheet" href="css/reset.css" type="text/css"
			media="screen" />
		<link rel="stylesheet" href="css/style-right.css" type="text/css"
			media="screen" />
		<link rel="stylesheet" href="css/invalid.css" type="text/css"
			media="screen" />
		<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="js/simpla.jquery.configuration.js"></script>
		<script type="text/javascript" src="js/facebox.js"></script>
		<script type="text/javascript" src="js/jquery.wysiwyg.js"></script>
		<script type="text/javascript" src="js/jquery.datePicker.js"></script>
		<script type="text/javascript" src="js/jquery.date.js"></script>
	</head>
	<body>
		<a id="view"></a>
		<div id="body-wrapper">
			<!-- Wrapper for the radial gradient background -->
			<!-- End #sidebar -->

			<div id="main-content">
				<!-- Main Content Section with everything -->

				<noscript>
					<!-- Show a notification if the user has disabled javascript -->
					<div class="notification error png_bg">
						<div>
							Javascript is disabled or is not supported by your browser.
							Please
							<a href="http://browsehappy.com/"
								title="Upgrade to a better browser">upgrade</a> your browser or
							<a
								href="http://www.google.com/support/bin/answer.py?answer=23852"
								title="Enable Javascript in your browser">enable</a> Javascript
							to navigate the interface properly.
						</div>
					</div>
				</noscript>

				<h2>
					欢迎使用图书管理系统
				</h2>

				<ul class="shortcut-buttons-set">

					<li>
						<a class="shortcut-button" href="admin/borrowInput"><span>
								<img src="images/icons/pencil_48.png" alt="icon" />
								<br /> 借书 </span>
						</a>
					</li>

					<li>
						<a class="shortcut-button" href="admin/returnInput"><span>
								<img src="images/icons/paper_content_pencil_48.png" alt="icon" />
								<br /> 还书 </span>
						</a>
					</li>

				</ul>
				<!-- End .shortcut-buttons-set -->

				<div class="clear"></div>
				<!-- End .clear -->

				<div class="content-box">
					<!-- Start Content Box -->
					<div class="content-box-header">

						<h3>
							用户信息
						</h3>

						<div class="clear"></div>

					</div>
					<!-- End .content-box-header -->

					
					<form action="">
						<div class="content-box-content">
						<p>
						<%
							if (success != null && success.equals("true")) {
						%>
						<span class="input-notification success png_bg">操作成功</span>
						<!-- Classes for input-notification: success, error, information, attention -->
						<%
							} else if (success != null && success.equals("false")) {
						%>
						<span class="input-notification error png_bg">操作失败</span>
						<!-- Classes for input-notification: success, error, information, attention -->
						<%
							}
						%>
					</p>

							<div class="tab-content default-tab column-left">


								<fieldset>
									<!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->



									<p>
										<label>
											用户名
										</label>
										<s:property value="user.username" />
									</p>
									<p>
										<label>
											真实姓名
										</label>
										<s:property value="user.realname" />
									</p>
									<p>
										<label>
											身份证
										</label>
										<s:property value="user.idnumber" />
									</p>
									<p>
										<label>
											性别
										</label>
										<s:property value="user.sex" />
									</p>
									<p>
										<label>
											电话号
										</label>
										<s:property value="user.cellphone" />
									</p>
									
									</fieldset>
									</div>
									<p>
										<label>
											邮箱
										</label>
										<s:property value="user.email" />
									</p>
									<p>
										<label>
											地址
										</label>
										<s:property value="user.address" />
									</p>
									<p>
										<label>
											借书上限
										</label>
										<s:property value="user.limitNumber" />
									</p>
									<p>
										<label>
											已借书
										</label>
										<s:property value="user.borrowed" />
									</p>
									<p>
										<label>
											角色
										</label>
										<s:iterator value="user.roles" var="r">
											<s:property value="#r.name" />
											<br />
										</s:iterator>
									</p>
									<P>
										<a class="button"
											href="admin/userEditInput?user.id=<s:property value="user.id"/>">编辑</a>
									</P>

								

			</div></form>
			<!-- End .content-box-content -->

		</div>
		<!-- End .content-box -->

		<div id="footer">
			<small> <!-- Remove this notice or replace it with whatever you want -->
				&#169; Copyright 2012 | Powered by | <a href="javascript:void(0)"
				onclick=
	document.getElementById('view').scrollIntoView();;
>top</a>
			</small>
		</div>
		<!-- End #footer -->

		</div>
		<!-- End #main-content -->
		</div>
	</body>
</html>
