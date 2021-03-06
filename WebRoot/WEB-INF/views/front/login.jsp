<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<base href="<%=basePath%>">
		<title>图书馆管理系统 - 用户登录</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description" content="Place your description here" />
		<meta name="keywords" content="put, your, keyword, here" />
		<meta name="author"
			content="cssMoban.com - website templates provider" />
		<link href="style.css" rel="stylesheet" type="text/css" />
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
	<body id="page1">
		<div class="tail-top-left"></div>
		<div class="tail-top">
			<!-- header -->
			<div id="header">
				<div class="row-1">
					<div class="fleft">
						<a href="index.html"><img src="images/logo.gif" alt="" />
						</a>
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
						</ul>
					</div>
				</div>
				<div class="row-2">
					<span><b><img src="images/slogan.gif" alt="" />
					</b> <a href="#"><img src="images/button.gif" alt="" />
					</a>
					</span>
				</div>
			</div>
			<!-- content -->
			<div id="content">
				<div class="row-1">
					<div class="inside">
						<div class="container">
							<div class="aside">
						<h3>读者服务</h3>
						<ul style="font-family:微软雅黑">
							<li>
								<img src="images/pic1.gif" alt="" /><div class="extra-wrap"><span>科技查新</span>查证文档新颖性的科学技术内容</div>
							</li>
							<li>
								<img src="images/pic2.gif" alt="" /><div class="extra-wrap"><span>文献查证</span>查证文献收录引用情况</div>
							</li>
							<li>
								<img src="images/pic3.gif" alt="" /><div class="extra-wrap"><span>科技咨询</span>提供及时、准确的科技信息服务</div>
							</li>
							<li>
								<img src="images/pic4.gif" alt="" /><div class="extra-wrap"><span>文献提供</span>提供各类文献资料的检索</div>
							</li>
							<li>
								<img src="images/pic5.gif" alt="" /><div class="extra-wrap"><span>翻译服务</span>提供文献的多国语言翻译服务</div>
							</li>
						</ul>
						<div class="wrapper"><a href="login" class="link1"><em><b>更多服务..</b></em></a></div>
					</div>
							<div class="content">
								<div id="opi" class="page-wrapper clearfix">
									<div class="full-page-holder">
										<div class="full-page">

											<div class="login-page clearfix">
												<div class="full-login">
													<div class="shadow">
														<div class="login-panel">
															<form method="post" id="loginForm" action="login"
																focus="email">
																<p class="clearfix">
																	<label for="email">
																		用户名:
																	</label>

																	<input type="text" name="name" tabindex="1" value=""
																		id="email" class="input-text">
																</p>
																<p class="clearfix">
																	<label for="password">
																		密码:
																	</label>
																	<input type="password" id="password" name="password"
																		class="input-text" tabindex="2" />
																</p>
																<p class="right">
																	<input type="submit" id="login" tabindex="4"
																		name="submit" class="input-submit large" value="登录" />
																</p>
																<div class="separator"></div>
																<p class="no-account">
																	没有图书馆服务系统帐号？
																	<a href="registryInput" class="reg-now">立即注册</a>
																</p>
															</form>
														</div>
													</div>
												</div>

											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
				<div class="tail-middle">
			<div class="row-2">
				<div class="inside">
					<h3>近期资讯</h3>
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
																		<h4>全国古籍保护工作会议</h4>
																		<p>8月25日，由文化部主办，国家古籍保护中心承办的全国古籍保护工作会议在北京召开。国家图书馆馆长周和平，国家古籍保护中心副主任张志清出席了会议。全国古籍保护工作专家委员会成员参加会议。</p>
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
																			<h4>《中华医藏》编纂工作</h4>
																			<p class="extra">8月24日，由文化部、国家中医药管理局主办的《中华医藏》编纂工作会议在京召开。文化部党组副书记赵少华，卫生部副部长王国强，国家古籍保护中心主任周和平出席会议并讲话。</p>
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
																			<h4>民国时期文献普查工作</h4>
																			<p>为推进民国时期文献普查工作，确保民国时期文献联合目录数据的规范化与标准化，8月20日至24日，“民国时期文献普查工作培训班”在北京举办。国家图书馆副馆长陈力出席培训班并讲话。</p>
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