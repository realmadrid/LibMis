<%@ page language="java" contentType="text/html; charset=UTF-8"
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

				<ul class="shortcut-buttons-set">

					<li>
						<a class="shortcut-button" href="admin/borrowInput"><span>
								<img src="images/icons/pencil_48.png" alt="icon" /> <br /> 借书
						</span> </a>
					</li>

					<li>
						<a class="shortcut-button" href="admin/returnInput"><span>
								<img src="images/icons/paper_content_pencil_48.png" alt="icon" />
								<br /> 还书 </span> </a>
					</li>

				</ul>
				<!-- End .shortcut-buttons-set -->

				<div class="clear"></div>
				<!-- End .clear -->

				<div class="content-box">
					<!-- Start Content Box -->

					<div class="content-box-header">

						<h3>
							<s:property value="username" />
							所借书籍
						</h3>

						<div class="clear"></div>

					</div>
					<!-- End .content-box-header -->

					<div class="content-box-content">

						<div class="tab-content default-tab" id="tab1">
							<!-- This is the target div. id must match the href of this div's tab -->

							<form action="admin/lose" method="post">

								<table>

									<thead>
										<tr>

											<th>
												书名
											</th>

											<th>
												操作
											</th>
										</tr>

									</thead>

									<tbody>

										<s:iterator value="borrows" var="b">
											<tr>

												<td>
													<s:property value="#b.copy.book.name" />
													
												</td>
												<td>
													<!-- Icons -->
													 <a href="admin/lose?borrow.id=<s:property value="#b.id" />" title="丢失"><img src="images/icons/hammer_screwdriver.png" alt="Edit Meta" /></a>

												</td>
											</tr>
										</s:iterator>
									</tbody>

								</table>

							</form>

						</div>
						<!-- End #tab1 -->
					</div>

				</div>
				<!-- End .content-box -->

				<div id="footer">
					<small> <!-- Remove this notice or replace it with whatever you want -->
						&#169; Copyright 2012 | <a href="javascript:void(0)"
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
