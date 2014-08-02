<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>注册图书馆读者服务系统</title>
<script type="text/javascript"  src="js/jquery-1.4.2.min.js"></script>

<style type="text/css">
.chose-list .recommend a{ color:#000; text-decoration:none;zoom:1}
.chose-list .recommend a:hover{ text-decoration:underline}
.chose-list .recommend label{ cursor:default}
</style>
<link rel="stylesheet" href="css/register.css" type="text/css"></link>
<link rel="stylesheet" href="css/class.css" type="text/css"></link>
</head>

<body>

<div id="Rpage" class="Rpage-main">
  
  <div id="Rbody">
    <div class="title">
      <b class="crl" style="top: 0px; height: 47px;"></b>
      <b class="crr"></b>
      <a href="contact-us.html" target="_blank" class="ext">了解详情&raquo;</a>
      <h1>欢迎注册图书馆读者服务系统，请您认真填写以下内容：</h1>
    </div>
    <div class="content">
      <div class="g-collection collection-main">
      <center style="font:22px bolder '幼圆';"><font color="#FF8080"><s:property value="#session.error"/></font></center>
      <form method="post" id="registerForm" action="register">

            <noscript><div class="noscript">提示：您的浏览器不支持或禁止了网页脚本，无法正常注册。 <a href="http://help.163.com/09/1216/16/5QLUL0H500753VB8.html" target="_blank">解除脚本限制&raquo;</a></div></noscript>
          
          <div class="g-collection-item">
              <label class="g-collection-label"><span class="txt-impt">*</span>&nbsp;用户名&nbsp;</label>
              <div id="unameWrap" class="ipt-wraper ">
                <input id="unameInp" name="user.username" type="text" class="g-ipt" value="" style="ime-mode:disabled"   tabindex="1"/>
                <input id="unameInp1" type="text" style="opacity:0;filter:alpha(opacity=0)" /> 
              </div>
               <div id="unameNot" class="txt-info" >3~13个字符，包括字母、数字、下划线，以字母开头，字母或数字结尾</div>
            </div>
            
            
			<div class="g-collection-item">
              <label class="g-collection-label"><span class="txt-impt">*</span>&nbsp;密码&nbsp;</label>
              <div id="passwWrap" class="ipt-wraper ">
                <input id="passwInp" name="user.password" type="password" value="" class="g-ipt" style="ime-mode:disabled"  tabindex="2" /><input id="passwInp1" type="text" style="opacity:0;filter:alpha(opacity=0)" /> 
                <p id="passStrong" style="display:none" class="notice pswState pswState-poor">强度：<em class="st1">弱</em><b class="ico"></b><em class="st2">强</em></p>
              </div>
              <div id="passwNot" class="txt-info">6~16个字符，包括字母、数字、特殊符号，区分大小写</div>
            </div>
            
            
            <div   class="g-collection-item">
              <label class="g-collection-label"><span class="txt-impt">*</span>&nbsp;确认密码&nbsp;</label>
              <div id="passConfimWrap"  class="ipt-wraper">
                <input id="passConfimInp" name="confirmPassword" type="password" class="g-ipt" style="ime-mode:disabled"  tabindex="3"/><input id="passConfimInp1" type="text" style="opacity:0;filter:alpha(opacity=0)" /> 
              </div>
              <div id="passConfimNot" class="txt-info">请再次输入密码</div>
            </div>
			
			<div class="g-collection-item">
              <label class="g-collection-label"><span class="txt-impt">*</span>&nbsp;真实姓名&nbsp;</label>
              <div id="rnameWrap" class="ipt-wraper ">
                <input id="rnameInp" name="user.realname" type="text" class="g-ipt" value=""   tabindex="1"/>
                <input id="rnameInp1" type="text" style="opacity:0;filter:alpha(opacity=0)" /> 
              </div>
               <div id="rnameNot" class="txt-info" >请输入您的姓名,注册成功后不可修改</div>
              <div id="rnameShowbox" class="chose-list"  style="display:none">
                <b  class="ico arr"></b>
                <div id="rnameBoxtext" class="tit"><a href="#" class="goOn">&raquo;</a></div>
              </div>
            </div>
			
			<div class="g-collection-item">
              <label class="g-collection-label"><span class="txt-impt">*</span>&nbsp;身份证号&nbsp;</label>
              <div id="idnumWrap" class="ipt-wraper ">
                <input id="idnumInp" name="user.idnumber" type="text" class="g-ipt" value=""   tabindex="1"/>
                <input id="idnumInp1" type="text" style="opacity:0;filter:alpha(opacity=0)" /> 
              </div>
               <div id="idnumNot" class="txt-info" >请输入您的身份证号,注册成功后不可修改</div>
           </div> 
           
		   <div class="g-collection-item">
              <label class="g-collection-label"><span class="txt-impt">*</span>&nbsp;性别&nbsp;</label>
              <div id="sexWrap" class="ipt-wraper ">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="sexInp" name="user.sex" type="radio" value="男" name = "sex"  checked="checked"/>男
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="sexInp" name="user.sex" type="radio" value="女" name="sex" />女
              </div>
            </div>
           
            <div class="g-collection-item">
              <label class="g-collection-label"><span class="txt-impt">*</span>&nbsp;邮箱&nbsp;</label>
              <div id="mailWrap" class="ipt-wraper ">
                <input id="mailInp" name="user.email" type="text" class="g-ipt" value=""   tabindex="1"/>
                <input id="mailInp1" type="text" style="opacity:0;filter:alpha(opacity=0)" /> 
              </div>
               <div id="mailNot" class="txt-info" >输入有效的邮箱</div>
              <div id="mailShowbox" class="chose-list"  style="display:none">
                <b  class="ico arr"></b>
                <div id="Boxtext" class="tit"><a href="#" class="goOn">&raquo;</a></div>
              </div>
            </div>
            
			<div class="g-collection-item">
              <label class="g-collection-label"><span class="txt-impt"></span><span class="txt-impt" >*</span>&nbsp;手机号码&nbsp;</label>
              <div class="ipt-wraper" id="mobileWrap">
                <input id="mobileInp" name="user.cellphone" type="text" class="g-ipt" tabindex="7" /><input id="mobileInp1" type="text" style="opacity:0;filter:alpha(opacity=0)" /> 
              </div>
              <div id="mobileNot" class="txt-info">输入真实手机号码</div>
            </div>
            
            
            <div class="g-collection-item">
              <label class="g-collection-label"><span class="txt-impt">*</span>&nbsp;地址&nbsp;</label>
              <div id="addressWrap" class="ipt-wraper ">
                <input id="addressInp" name="user.address" type="text" class="g-ipt" value=""   tabindex="1"/>
                <input id="addressInp1" type="text" style="opacity:0;filter:alpha(opacity=0)" /> 
              </div>
               <div id="addressNot" class="txt-info" >请输入真实地址</div>
              <div id="addressShowbox" class="chose-list"  style="display:none">
                <b  class="ico arr"></b>
                <div id="addressBoxtext" class="tit"><a href="#" class="goOn">&raquo;</a></div>
              </div>
            </div>
            
            <div class="g-collection-item">
				<div class="ipt-wraper" id="serviceItmeWrap">
				</div>
				<div>
					<input type="submit" title="立即注册" value="" class="btn-reg" id="regBtn"   tabindex="9" />
				</div>
				<br>
					<div id="tip"></div>
					<div id="redirect"></div>
			</div>
		</form>
      </div>
    </div>
  
    
    <div class="bottom">
      <b class="crl"></b>
      <b class="crr"></b>
    </div>
  </div>
  <div id="Rfooter">
  <a href="contact-us.html" target="_blank" class="ext">关于图书馆管理系统</a>
   
   </div>
</div>
</body>
<script type="text/javascript" src="js/addUser.js"></script>
</html>
