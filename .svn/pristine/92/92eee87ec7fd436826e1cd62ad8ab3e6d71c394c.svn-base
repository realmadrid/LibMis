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
						<a class="shortcut-button" href="admin/borrow"><span> <img
									src="images/icons/pencil_48.png" alt="icon" /> <br /> 借书 </span> </a>
					</li>

					<li>
						<a class="shortcut-button" href="admin/return"><span> <img
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

							<div class="tab-content default-tab" id="tab1">
								<!-- This is the target div. id must match the href of this div's tab -->


								<fieldset>
									<input type="hidden" name="book.id"
										value="<s:property value="book.id" />" />
									<p>
										<label>
											书名
										</label>
										<input class="text-input small-input" type="text"
											id="small-input" name="book.name"
											value="<s:property value="book.name" />" />
									</p>
									<p>
										<label>
											分类
										</label>
										<input class="text-input small-input" type="text"
											id="small-input" name="book.category"
											value="<s:property value="book.category" />" />
									</p>
									<p>
										<label>
											作者
										</label>
										<input class="text-input small-input" type="text"
											id="small-input" name="book.author"
											value="<s:property value="book.author" />" />
									</p>
									<p>
										<label>
											译者
										</label>
										<input class="text-input small-input" type="text"
											id="small-input" name="book.translator"
											value="<s:property value="book.translator" />" />
									</p>
									<p>
										<label>
											语言
										</label>
										<input class="text-input small-input" type="text"
											id="small-input" name="book.language"
											value="<s:property value="book.language" />" />
									</p>
									<p>
										<label>
											ISBN
										</label>
										<input class="text-input small-input" type="text"
											id="small-input" name="book.isbn"
											value="<s:property value="book.isbn" />" />
									</p>
									<p>
										<label>
											出版社
										</label>
										<input class="text-input small-input" type="text"
											id="small-input" name="book.publisher"
											value="<s:property value="book.publisher" />" />
									</p>
									<p>
										<label>
											出版年份
										</label>
										<input class="text-input small-input" type="text"
											id="small-input" name="book.pubtime"
											value="<s:property value="book.pubtime" />" />
									</p>
									<p>
										<label>
											价格
										</label>
										<input class="text-input small-input" type="text"
											id="small-input" name="book.price"
											value="<s:property value="book.price" />" />
									</p>
									<p>
										<label>
											备注
										</label>
										<input class="text-input large-input" type="text"
											id="large-input" name="book.remark"
											value="<s:property value="book.remark" />" />
									</p>
								</fieldset>
								<table>
									<tfoot>
										<tr>
											<td colspan="6">
												<div class="bulk-actions align-left">
													<p>
														<input class="button" type="submit" value="确认修改" />
													</p>
												</div>
												<div class="clear"></div>
											</td>
										</tr>
									</tfoot>
								</table>
							</div>
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
											<th>
												操作
											</th>
										</tr>
									</thead>

									<input type="hidden" name="bookId"
										value="<s:property value="book.id" />">
									<tbody>
										<s:iterator value="copys" var="c" status="st">
											<tr>
												<input type="hidden"
													name="copys.makeNew[<s:property value="#st.index" />].id"
													value="<s:property value="#c.id" />" />
												<input type="hidden"
													name="copys.makeNew[<s:property value="#st.index" />].book.id"
													value="<s:property value="#c.book.id" />" />
												<td align="center">
													<input type="text"
														name="copys.makeNew[<s:property value="#st.index" />].barcode"
														value="<s:property value="#c.barcode" />" />
												</td>
												<td align="center">
													<input type="text"
														name="copys.makeNew[<s:property value="#st.index" />].bookshelf"
														value="<s:property value="#c.bookshelf" />" />
												</td>
												<td align="center">
													<input type="text" readonly="readonly"
														name="copys.makeNew[<s:property value="#st.index" />].status"
														value="<s:property value="#c.status" />" />
												</td>
												<td align="center">
													<s:date name="#c.entertime" format="yyyy-MM-dd"/>
													
													<input type="hidden"
														name="copys.makeNew[<s:property value="#st.index" />].entertime"
														value="<s:property value="#c.entertime" />"
														onfocus="this.blur()" />
												</td>

												<td align="center">
													<select
														name="copys.makeNew[<s:property value="#st.index" />].logoff">
														<option value="false">
															否
														</option>
														<option value="true">
															是
														</option>
													</select>
													<%--												<input type="text" name="copys.makeNew[<s:property value="#st.index" />].logoff" value="<s:property value="#c.logoff" />" onfocus="this.blur()" />--%>
												</td>

												<td align="center">
													<input type="hidden"
														name="copys.makeNew[<s:property value="#st.index" />].borrowed}"
														value="<s:property value="#c.borrowed" />" />
													<s:if test="#c.borrowed">是</s:if>
													<s:else>否</s:else>
												</td>

												<td>
													<a
														href="admin/copyDelete?copy.id=<s:property value="#c.id" />&bookId=<s:property value="book.id" />"
														title="Delete"><img src="images/icons/cross.png"
															alt="删除" />
													</a>
												</td>
											</tr>
										</s:iterator>
									</tbody>

									<tfoot>
										<tr>
											<td colspan="6">
												<div class="bulk-actions align-left">
													<p>
														<input class="button" type="submit" value="确认修改" />
													</p>
												</div>
												<div class="clear"></div>
											</td>
										</tr>
									</tfoot>
								</table>
							</div>
							<!-- End #tab1 -->
						</div>
					</div>
					<!-- End .content-box -->
				</form>


				<div id="footer">
					<small> <!-- Remove this notice or replace it with whatever you want -->
						&#169; Copyright 608宿舍 | <a href="javascript:void(0)"
						onclick=
	document.getElementById('view').scrollIntoView();;
>回到顶部</a>
					</small>
				</div>
				<!-- End #footer -->

			</div>
			<!-- End #main-content -->
		</div>
	</body>
</html>
