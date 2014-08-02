<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.libmis.model.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<base href="<%=basePath%>">
<title>图书馆管理系统 - 检索结果</title>
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
<body id="page2">
<div class="tail-top-left"></div>
<div class="tail-top">
<!-- header -->
	<div id="header">
		<div class="row-1">
			<div class="fleft"><a href="index.html"><img src="images/logo.gif" alt="" /></a></div>
			<div class="fright">
				<ul style="font-family:微软雅黑">
					<li><a href="index.html" class="active">首页</a></li>
					<li><a href="bookquery.html">书刊检索</a></li>
					<li><a href="articles.html">特别专题</a></li>
					<li><a href="contact-us.html">联系我们</a></li>
					<li><a href="userCenter">个人中心</a></li>
				</ul>
			</div>
		</div>
		<div class="row-2"><span><b><img src="images/slogan.gif" alt="" /></b><a href="#"><img src="images/button.gif" alt="" /></a></span></div>
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
										<img src="images/pic1.gif" alt="" />
										<div class="extra-wrap">
											<span><a href="myBorrow?user.username=<s:property value="user.username"/>">我的借阅</a> </span>查看我正在借阅的书刊
										</div>
									</li>
									<li>
										<img src="images/pic2.gif" alt="" />
										<div class="extra-wrap">
											<span><a href="userInfo?user.username=<s:property value="user.username" />">证件信息</a> </span>修改个人信息、修改密码
										</div>
									</li>
									<li>
										<img src="images/pic3.gif" alt="" />
										<div class="extra-wrap">
											<span><a href="historyBorrow?user.username=<s:property value="user.username" />">历史借阅</a> </span>我借阅过的书刊
										</div>
									</li>
									<li>
										<img src="images/pic4.gif" alt="" />
										<div class="extra-wrap">
											<span><a href="userFault?user.username=<s:property value="user.username" />">违章记录</a> </span>我的图书违章记录
										</div>
									</li>
									<li>
										<img src="images/pic5.gif" alt="" />
										<div class="extra-wrap">
											<span><a href="searchHistory?user.username=<s:property value="user.username" />">检索历史</a> </span>我检索过的书刊
										</div>
									</li>
								</ul>
						<div class="wrapper"><a href="#" class="link1"><em><b>更多服务..</b></em></a></div>
					</div>
					<div class="content"><div class="inner_copy">More <a href="http://www.cssmoban.com/">Website Templates</a> at TemplateMonster.com!</div>
						<h3>在线书刊检索结果</h3>
						
						<%
							int i=0;
							List<Book> list=(List<Book>)request.getAttribute("books");
							
							Book b;
						%>
						
						<s:iterator value="books" var="b">
							<h4 align="center"><a href="bookInfo?book.id=<s:property value="#b.id" />"><s:property value="#b.name" escapeHtml="false" /></a></h4><br/>
							<table>
								<tr>
									<td>作者：<s:property value="#b.author" escapeHtml="false"  /><br/></td>
									<td>馆藏复本：<s:property value="#b.copys.size" escapeHtml="false" /></td>
								</tr>
								<%	
								int canBorrow=0;
								b=list.get(i);
								for(Copy c:b.getCopys()){
									if(!c.isBorrowed())
										canBorrow++;
								}
								i++;
								%>
								<tr>
									<td>出版社：<s:property value="#b.publisher" escapeHtml="false" /><br/></td>
									<td>可借复本：<%=canBorrow %></td>
								</tr>
							</table>
<%--							<s:property value="#b.author" escapeHtml="false" /><br/>--%>
<%--							<s:property value="#b.publisher" escapeHtml="false" /><br/>--%>
<%--							馆藏复本：<s:property value="#b.copys.size" escapeHtml="false" /><br/>--%>
							
							
<%--							<%	--%>
<%--								int canBorrow=0;--%>
<%--								b=list.get(i);--%>
<%--								for(Copy c:b.getCopys()){--%>
<%--									if(!c.isBorrowed())--%>
<%--										canBorrow++;--%>
<%--								}--%>
<%--								--%>
<%--								i++;--%>
<%--							%>--%>
<%--							可借复本：<%=canBorrow %>--%>
							
							<hr size=2 style="color: green;border-style:dashed ;width:100%"><br/>
						</s:iterator>
						
						<div align="right">
							<a href="bookSearch?page.pageNo=<s:property value="page.prePage"/>&page.pageSize=<s:property value="page.pageSize"/>&query=<s:property value="query" />">上一页</a>
							<b><font color=red><s:property value="page.pageNo" /></font> / <font color=black><s:property value="page.totalPages" /></font></b>
							<a href="bookSearch?page.pageNo=<s:property value="page.nextPage"/>&page.pageSize=<s:property value="page.pageSize"/>&query=<s:property value="query" />">下一页</a>					
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
		<div class="footer">Copyright - 608宿舍<br />
		</div>
	</div>
</div>
<script type="text/javascript"> Cufon.now(); </script>
</body>
</html>