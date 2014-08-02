<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<% 
    String success=request.getParameter("success");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<base href="<%=basePath%>">
		<title>图书馆管理系统 - 个人中心</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description" content="Place your description here" />
		<meta name="keywords" content="put, your, keyword, here" />
		<meta name="author"
			content="cssMoban.com - website templates provider" />
		<link href="style.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="css/style-right.css" type="text/css" media="screen" />
		
		<script src="js/jquery-1.4.2.min.js" type="text/javascript"></script>
		<script src="js/cufon-yui.js" type="text/javascript"></script>
		<script src="js/cufon-replace.js" type="text/javascript"></script>
		<script src="js/jcarousellite.js" type="text/javascript"></script>
		<script type="text/javascript">
	$(document).ready(function() {
		$("a.new_window").attr("target", "_blank");

		//carousel
		$(".carousel").jCarouselLite({
			btnNext : ".next",
			btnPrev : ".prev"
		});
	});
</script>
		<!--[if lt IE 7]>
<script type="text/javascript" src="js/ie_png.js"></script>
<script type="text/javascript">
	ie_png.fix('.png, .carousel-box .next img, .carousel-box .prev img');
</script>
<link href="ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
	</head>
	<body id="page3">
		<div class="tail-top-left"></div>
		<div class="tail-top">
			<!-- header -->
			<div id="header">
				<div class="row-1">
					<div class="fleft">
						<a href="index.html"><img src="images/logo.gif" alt="" /> </a>
					</div>
					<div class="fright">
						<ul style="font-family:微软雅黑">
							<li>
								<a href="index.html" class="active">首页</a>
							</li>
							<li>
								<a href="bookquery.html">书刊检索</a>
							</li>
							<li>
								<a href="articles.html">特别专题</a>
							</li>
							<li>
								<a href="contact-us.html">联系我们</a>
							</li>
							<li>
								<a href="logout">退出系统</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="row-2">
					<span><b><img src="images/slogan.gif" alt="" /> </b> <a
						href="#"><img src="images/button.gif" alt="" /> </a> </span>
				</div>
			</div>
			<!-- content -->
			<div id="content">
				<div class="row-1">
					<div class="inside">
						<div class="container">
							<div>
								<h3>
									我的借阅
								</h3>
								<p>
									<%if(success!=null&&success.equals("true")){
										%>
										<span class="input-notification success png_bg">操作成功</span> <!-- Classes for input-notification: success, error, information, attention -->
										<%
									}else if(success!=null&&success.equals("false")){
										%>
										<span class="input-notification error png_bg">操作失败</span> <!-- Classes for input-notification: success, error, information, attention -->
									<%} %>
								</p>
								<table>
									<thead>
										<tr class="odd">
											<th scope="col">
												条码号
											</th>
											<th scope="col">
												书名
											</th>
											<th scope="col">
												作者
											</th>
											<th scope="col">
												借阅日期
											</th>
											<th scope="col">
												应还日期
											</th>
											<th scope="col">
												续借
											</th>
										</tr>
									</thead>
									<tbody>
										<s:iterator value="borrows" var="b">
										<tr class="odd">
											<td>
												<s:property value="#b.copy.barcode"/>
											</td>
											<th scope="row" class="column1">
												<s:property value="#b.copy.book.name"/>
											</th>
											<td>
												<s:property value="#b.copy.book.author"/>
											</td>
											<td>
												<s:date name="#b.borrowTime" format="yyyy-MM-dd" />
											</td>
											<td>
												<s:date name="#b.shouldReturnTime" format="yyyy-MM-dd" />
											</td>
											<td>
												<a href="renew?borrow.id=<s:property value="#b.id"/>" class="link1"><em><b>续借</b></em></a>
											</td>
										</tr>
										</s:iterator>
									</tbody>
								</table>
								<div class="wrapper">
									<a href="userCenter?user.username=<s:property value="user.username"/>" class="link1"><em><b>返回个人中心</b>
									</em> </a>
									<!--<a href="#" onclick="document.getElementById('contacts-form').submit()" class="link1"><em><b>Send Your Message!</b></em></a>-->
								</div>
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
				<div class="tail-middle">
			<div class="row-2">
				<div class="inside">
					<h3>近期专题</h3>
					<div class="carousel-box">
						<div class="prev"><a href="#"><img src="images/prev.png" alt="" /></a></div>
						<div class="next"><a href="#"><img src="images/next.png" alt="" /></a></div>
						<div class="carousel">
							<ul>
								<li>
									<div class="box">
										<div class="border-top">
											<div class="border-bot">
												<div class="left-top-corner">
													<div class="right-top-corner">
														<div class="right-bot-corner">
															<div class="left-bot-corner">
																<div class="img-box2"><img src="images/slide-img1.jpg" alt="" />
																	<div class="inner">
																		<h4>科研参考</h4>
																		<p>（国家高技术研究发展计划）：1986年推出，最初目标是跟踪国际高技术发展，在生物技术、航天技术、信息技术、激光技术、自动化技术、能源技术、新材料等7个高技术领域缩小与国外水平的差距…… </p>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="box">
										<div class="border-top">
											<div class="border-bot">
												<div class="left-top-corner">
													<div class="right-top-corner">
														<div class="right-bot-corner">
															<div class="left-bot-corner">
																<div class="inner">
																	<div class="img-box2"><img src="images/slide-img2.jpg" alt="" />
																		<div class="inner">
																			<h4>传承文明 服务社会</h4>
																			<p class="extra">封闭与开放，是古代藏书楼与现代图书馆最根本的区别。传承文明，服务社会，是国家图书馆秉承的宗旨；为人找书，为书找人，是国家图书馆坚持的理念。从开馆初期仅提供图书阅览到今天提供全方位、多类型、深层次的图书馆服务，国家图书馆始终把读者放在第一位。</p>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="box">
										<div class="border-top">
											<div class="border-bot">
												<div class="left-top-corner">
													<div class="right-top-corner">
														<div class="right-bot-corner">
															<div class="left-bot-corner">
																<div class="inner">
																	<div class="img-box2"><img src="images/slide-img3.jpg" alt="" />
																		<div class="inner">
																			<h4>文艺的灯塔</h4>
																			<p>我们在国家图书馆举办“纪念《在延安文艺座谈会上的讲话》发表七十周年馆藏文献展”，旨在揭示馆藏文献，坚持走中国特色社会主义文化发展道路，推动社会主义文化大发展大繁荣，为建设社会主义文化强国做贡献。</p>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
			</div>
			<!-- footer -->
			<div id="footer">
				<div class="footer">
					&#169; Copyright - 608宿舍
					<br />
				</div>
			</div>
		</div>
		<script type="text/javascript">
	Cufon.now();
</script>
	</body>
</html>