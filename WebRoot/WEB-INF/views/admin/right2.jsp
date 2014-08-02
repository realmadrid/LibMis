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
<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/style-right.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/invalid.css" type="text/css" media="screen" />	
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/simpla.jquery.configuration.js"></script>
<script type="text/javascript" src="js/facebox.js"></script>
<script type="text/javascript" src="js/jquery.wysiwyg.js"></script>
<script type="text/javascript" src="js/jquery.datePicker.js"></script>
<script type="text/javascript" src="js/jquery.date.js"></script>
</head>
	<body><div id="body-wrapper"> <!-- Wrapper for the radial gradient background --><!-- End #sidebar -->
		
  <div id="main-content"> <!-- Main Content Section with everything -->
			
			<noscript> <!-- Show a notification if the user has disabled javascript -->
				<div class="notification error png_bg">
					<div>
						Javascript is disabled or is not supported by your browser. Please <a href="http://browsehappy.com/" title="Upgrade to a better browser">upgrade</a> your browser or <a href="http://www.google.com/support/bin/answer.py?answer=23852" title="Enable Javascript in your browser">enable</a> Javascript to navigate the interface properly.
					</div>
				</div>
			</noscript>
			
			<h2>欢迎使用图书管理系统</h2>
			
			<ul class="shortcut-buttons-set">
				
				<li><a class="shortcut-button" href="45455"><span>
					<img src="images/icons/pencil_48.png" alt="icon" /><br />
					借书
				</span></a></li>
				
				<li><a class="shortcut-button" href="#"><span>
					<img src="images/icons/paper_content_pencil_48.png" alt="icon" /><br />
					还书
				</span></a></li>
				
			</ul><!-- End .shortcut-buttons-set -->
			
			<div class="clear"></div> <!-- End .clear -->
			
            <div class="content-box"><!-- Start Content Box -->
				    <div class="content-box-header">
					
					<h3>借书</h3>
					
					<div class="clear"></div>
					
				    </div> <!-- End .content-box-header -->
                    
                    <div class="content-box-content">
                    
					<div class="tab-content default-tab">
                    
                    		<form action="" method="post">
												
							<fieldset> <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
								
								<p>
									<label>Small form input</label>
										<input class="text-input small-input" type="text" id="small-input" name="small-input" /> <span class="input-notification success png_bg">Successful message</span> <!-- Classes for input-notification: success, error, information, attention -->
										<br /><small>A small description of the field</small>
								</p>
								
								<p>
									<label>Medium form input</label>
									<input class="text-input medium-input datepicker" type="text" id="medium-input" name="medium-input" /> <span class="input-notification error png_bg">Error message</span>
								</p>
								
								<p>
									<label>Large form input</label>
									<input class="text-input large-input" type="text" id="large-input" name="large-input" />
								</p>
								
								<p>
									<label>Checkboxes</label>
									<input type="checkbox" name="checkbox1" /> This is a checkbox <input type="checkbox" name="checkbox2" /> And this is another checkbox
								</p>
								
								<p>
									<label>Radio buttons</label>
									<input type="radio" name="radio1" /> This is a radio button<br />
									<input type="radio" name="radio2" /> This is another radio button
								</p>
								
								<p>
									<label>This is a drop down list</label>              
									<select name="dropdown" class="small-input">
										<option value="option1">Option 1</option>
										<option value="option2">Option 2</option>
										<option value="option3">Option 3</option>
										<option value="option4">Option 4</option>
									</select> 
								</p>
								
								<p>
									<label>Textarea with WYSIWYG</label>
									<textarea class="text-input textarea wysiwyg" id="textarea" name="textfield" cols="79" rows="15"></textarea>
								</p>
								
								<p>
									<input class="button" type="submit" value="Submit" />
								</p>
								
							</fieldset>
                            
                            </form>
							
							<div class="clear"></div><!-- End .clear -->
                            
                         </div>
					
				</div> <!-- End .content-box-content -->
				
			</div> <!-- End .content-box -->

			<div id="footer">
				<small> <!-- Remove this notice or replace it with whatever you want -->
						&#169; Copyright 2009 Your Company | Powered by | <a href="#">Top</a>
				</small>
			</div><!-- End #footer -->
			
		</div> <!-- End #main-content -->
	</div></body>
</html>
