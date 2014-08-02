<%@ page language="java" contentType="text/html; charset=UTF-8"
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
		<title>图书馆管理系统 - 图书信息修改</title>
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
						<a class="shortcut-button" href="admin/borrowInput"><span> <img
									src="images/icons/pencil_48.png" alt="icon" /> <br /> 借书 </span> </a>
					</li>

					<li>
						<a class="shortcut-button" href="admin/returnInput"><span> <img
									src="images/icons/paper_content_pencil_48.png" alt="icon" /> <br />
								还书 </span> </a>
					</li>

				</ul>
				<!-- End .shortcut-buttons-set -->

				<div class="clear"></div>
				<!-- End .clear -->
				<form action="admin/bookEdit" method="post">
					<div class="content-box">
						<!-- Start Content Box -->

						<div class="content-box-header">

							<h3>
								图书信息
							</h3>

							<div class="clear"></div>

						</div>
						<!-- End .content-box-header -->

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
							<div class="tab-content default-tab column-left" id="tab1">
								<!-- This is the target div. id must match the href of this div's tab -->
								<fieldset>
									<input type="hidden" name="book.id"
										value="<s:property value="book.id" />" />
									<p>
										<label>
											书名
										</label>
										<s:property value="book.name" />
									</p>
									<p>
										<label>
											分类
										</label>
										<s:property value="book.category" />
									</p>
									<p>
										<label>
											作者
										</label>
										<s:property value="book.author" />
									</p>
									<p>
										<label>
											译者
										</label>
										<s:property value="book.translator" />
									</p>
									<p>
										<label>
											语言
										</label>
										<s:property value="book.language" />
									</p>
									</fieldset>
									</div>
								
								
									<p>
										<label>
											ISBN
										</label>
										<s:property value="book.isbn" />
									</p>
									<p>
										<label>
											出版社
										</label>
										<s:property value="book.publisher" />
									</p>
									<p>
										<label>
											出版年份
										</label>
										<s:property value="book.pubtime" />
									</p>
									<p>
										<label>
											价格
										</label>
										<s:property value="book.price" />
									</p>
									<p>
										<label>
											备注
										</label>
										<s:property value="book.remark" />
									</p>
									
										
									
							
							<!-- End #tab1 -->
						</div>
					</div>
					<!-- End .content-box -->
				</form>

				<form action="admin/copyEdit" method="post">
					<div class="content-box">
						<!-- Start Content Box -->
						<div class="content-box-header">
							<h3>
								副本信息
							</h3>
							<div class="clear"></div>
						</div>
						<!-- End .content-box-header -->

						<div class="content-box-content">
							<div class="tab-content default-tab" id="tab2">
								<!-- This is the target div. id must match the href of this div's tab -->
								<table>
									<thead>
										<tr>
											<th>
												条码号
											</th>
											<th>
												所在书架
											</th>
											<th>
												副本状况
											</th>
											<th>
												入库时间
											</th>
											<th>
												是否注销
											</th>
											<th>
												是否借出
											</th>
										</tr>
									</thead>

									<tbody>
										<s:iterator value="copys" var="c" status="st">
											<tr>
												<td align="center">
													<s:property value="#c.barcode" />
												</td>
												<td align="center">
													<s:property value="#c.bookshelf" />
												</td>
												<td align="center">
													<s:property value="#c.status" />
												</td>
												<td align="center">
													<s:date name="#c.entertime" format="yyyy-MM-dd" />
												</td>
												<td align="center">
													<s:if test="#c.logoff">是</s:if>
													<s:else>否</s:else>
												</td>
												<td align="center">
													<s:if test="#c.borrowed">是</s:if>
													<s:else>否</s:else>
												</td>
											</tr>
										</s:iterator>
									</tbody>

								</table>
								<P>
									<a class="button"
										href="admin/bookEditInput?book.id=<s:property value="book.id"/>">编辑</a>
								</P>
							</div>
							<!-- End #tab1 -->
						</div>
					</div>
					<!-- End .content-box -->
				</form>


				<div id="footer">
					<small> <!-- Remove this notice or replace it with whatever you want -->
						&#169; Copyright 608宿舍 | <a href="javascript:void(0)"
						onclick=document.getElementById('view').scrollIntoView();;
>回到顶部</a>
					</small>
				</div>
				<!-- End #footer -->

			</div>
			<!-- End #main-content -->
		</div>
	</body>
</html>
