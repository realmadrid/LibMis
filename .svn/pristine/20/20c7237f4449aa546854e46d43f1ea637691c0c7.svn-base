<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<base href="<%=basePath%>">
<title>图书馆管理系统 - 个人中心</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="Place your description here" />
<meta name="keywords" content="put, your, keyword, here" />
<meta name="author" content="cssMoban.com - website templates provider" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/jcarousellite.js" type="text/javascript"></script>
<script type="text/javascript">

	$(document).ready(function(){
	  $("a.new_window").attr("target", "_blank");
	  
	  //carousel
	  $(".carousel").jCarouselLite({
		  btnNext: ".next",
		  btnPrev: ".prev"
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
<br /><br /><!-- header -->
	<div id="header">
		<div class="row-1">
			<div class="fleft"><a href="index.html"><img src="images/logo.gif" alt="" /></a></div>
			<div class="fright">
				<ul style="font-family:微软雅黑">
					<li><a href="index.html" class="active">首页</a></li>
					<li><a href="bookquery.html">书刊检索</a></li>
					<li><a href="articles.html">特别专题</a></li>
					<li><a href="contact-us.html">联系我们</a></li>
					<li><a href="logout">退出系统</a></li>
				</ul>
			</div>
		</div>
		<div class="row-2"><span><b><img src="images/slogan.gif" alt="" /></b> <a href="#"><img src="images/button.gif" alt="" /></a></span></div>
	</div>
<!-- content -->
	<div id="content">
		<div class="row-1">
			<div class="inside">
				<div class="container">
					<div class="aside">
						<h3>个人中心</h3>
						<ul style="font-family:微软雅黑">
							<li>
								<img src="images/pic1.gif" alt="" /><div class="extra-wrap"><span><a href="myBorrow?user.username=<s:property value="user.username"/>">我的借阅</a></span>查看我正在借阅的书刊</div>
							</li>
							<li>
								<img src="images/pic2.gif" alt="" /><div class="extra-wrap"><span><a href="userInfo?user.username=<s:property value="user.username" />">证件信息</a></span>修改个人信息、修改密码</div>
							</li>
							<li>
								<img src="images/pic3.gif" alt="" /><div class="extra-wrap"><span><a href="historyBorrow?user.username=<s:property value="user.username" />">历史借阅</a></span>我借阅过的书刊</div>
							</li>
							<li>
								<img src="images/pic4.gif" alt="" /><div class="extra-wrap"><span><a href="userFault?user.username=<s:property value="user.username" />">违章记录</a></span>我的图书违章记录</div>
							</li>
							<li>
								<img src="images/pic5.gif" alt="" /><div class="extra-wrap"><span><a href="searchHistory?user.username=<s:property value="user.username" />">检索历史</a></span>我检索过的书刊</div>
							</li>
						</ul>
						<div class="wrapper"><a href="#" class="link1"><em><b>更多服务..</b></em></a></div>
					</div>
					<div class="content"><div class="inner_copy">More <a href="http://www.cssmoban.com/">Website Templates</a> at TemplateMonster.com!</div>
						<h3>欢迎登录图书馆服务系统！</h3>
						<div class="img-box1"><img src="images/3page-img.jpg" alt="" /><b class="txt2">请点击左侧进行相应操作</b> ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercittionem.</div>
						<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda estvero eos et accusamus et iusto odio dignissimos ducimus.</p>
						<div class="wrapper">
							<a href="#" class="link1"><em><b>Read More</b></em></a>
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
		<div class="footer">&#169; Copyright - 608宿舍<br />
		</div>
	</div>
</div>
<script type="text/javascript"> Cufon.now(); </script>
</body>
</html>