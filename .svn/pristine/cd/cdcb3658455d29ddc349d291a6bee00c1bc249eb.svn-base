var RegTime = {
	starttime : 0,
	unametime : 0,
	rnametime : 0,
	numtime : 0,
	mailtime : 0,
	usextime : 0,
	unumtime : 0,
	passwordtime : 0,
	passConfimtime : 0,
	mobiletime : 0,
	verfifytime : 0,
	succverify : 0
}

/**
 * 检查用户名
 * 
 * @return
 */
function chkUsername() {
	var username = $.trim($("#unameInp").val());
	if (username == "") {
		return 0;
	} else if (/^[0-9]{1,20}$/.test(username)) {
		if (/^13\d{9}$/.test(username) | /^15\d{9}$/.test(username)
				| /^18\d{9}$/.test(username) | /^14\d{9}$/.test(username))
			return -8;

		return -7;
	} else if (/^\d.*$/.test(username)) {
		// 用户名不能以数字开头
		return -1;
	} else if (fLen(username) < 3) {
		// 用户名长度小于6个字符
		return -2;
	} else if (!/^\w+$/.test(username)) {
		// 用户名只能包含_,英文字母，数字
		return -3;
	} else if (!/^([a-z]|[A-Z])[0-9a-zA-Z_]+$/.test(username)) {
		// 用户名只能英文字母开头
		return -4;
	} else if (!(/[0-9a-zA-Z]+$/.test(username))) {
		// 用户名只能英文字母或数字结尾
		return -5;
	} else if (fLen(username) > 13) {
		// 用户名长度大于18个字符
		return -6;
	}
	return 1;
}

/**
 * 显示检查用户名是否存在结果
 */


function chkRealname() {
	var realname = $.trim($("#rnameInp").val());
	if (realname == "") {
		return 0;
	} else if (fLen(realname) < 3) {
		// 用户名长度小于3个字符
		return -2;
	} else if (fLen(realname) > 10) {
		// 用户名长度大于10个字符
		return -6;
	}
}

/**
 * 显示检查用户名是否存在结果
 */

 

function chkIdnumber() {
	var idnum = $.trim($("#idnumInp").val());
	if (idnum == "") {
		return 0;
	} else if (fLen(realname) < 18) {
		// 长度小于18个字符
		return -1;
	} else if (fLen(realname) > 18) {
		// 长度大于18个字符
		return -2;
	}
}
 
 
 
/**
 * 检查邮箱
 * 
 * @return
 */

function chkmail() {
	var mail = $.trim($("#mailInp").val());
	if (mail == "") {
		return 0;
	} else if (!/^[0-9a-zA-Z]+@[0-9a-zA-Z]+[\.]{1}[0-9a-zA-Z]+[\.]?[0-9a-zA-Z]+$/
			.test(mail)) {
		// 不是数字
		return -1;
	}

	return 1;
}

/**
 * 显示检查邮箱是否存在结果
 */

/**
 * 显示验证结果
 * 
 * @param type
 * @param text
 * @param obje
 * @returns
 */
function showNoticeMessage(type, text, obje) {
	$("p").remove(".is" + obje);
	var stylel = "";
	if (type == "success") {

		$("#" + obje)
				.append(
						"<p class=\"notice is"
								+ obje
								+ "\" ><b class=\"ico ico-succ\"></b> <span id=\"meme\" value=\"aa\" class=\"txt-succ\">"
								+ text + "</span></p>");
	} else if (type == "wrong") {
		if (obje == "serviceItmeWrap") {
			stylel = "";
		}
		$("#" + obje)
				.append(
						"<p class=\"notice is"
								+ obje
								+ "\" "
								+ stylel
								+ " ><b class=\"ico ico-warning\"></b> <span class=\"txt-err\">"
								+ text + "</span></p>");
		$("#" + obje + " input:first-child").attr("class", "g-ipt g-ipt-err");
	}
}
function showNoticeMessage1(type, text, obje) {
	$("p").remove(".is" + obje);
	var stylel = "";
	if (type == "success") {

		$("#" + obje)
				.append(
						"<p class=\"notice is"
								+ obje
								+ "\" ><b class=\"ico ico-succ\"></b> <span class=\"txt-succ\">"
								+ text + "</span></p>");
	} else if (type == "wrong") {
		if (obje == "serviceItmeWrap") {
			stylel = "";
		}
		$("#" + obje)
				.append(
						"<p class=\"notice is"
								+ obje
								+ "\" "
								+ stylel
								+ " ><b class=\"ico ico-warning\"></b> <span class=\"txt-err\">"
								+ text + "</span></p>");

	}
}

function deleteNoticeMessage(obje) {
	$("p").remove(".is" + obje);
}

/**
 * 计算字符数，一个中文2个字符
 */
function fLen(Obj) {
	var nCNLenth = 0;
	var nLenth = Obj.length;
	for ( var i = 0; i < nLenth; i += 1) {
		if (Obj.charCodeAt(i) > 255) {
			nCNLenth += 2;
		} else {
			nCNLenth += 1;
		}
	}
	return nCNLenth;
}
/**
 * 检查密码格式
 * 
 * @returns {Number}
 */
function chkPassword() {
	var password = $.trim($("#passwInp").val());

	if (password == "")
		return 0;

	var len;
	var i;
	var isPassword = true;
	len = 0;
	for (i = 0; i < password.length; i += 1) {
		if (password.charCodeAt(i) > 255)
			isPassword = false;
	}
	if (!isPassword || password.length < 6)
		return -1;
	if (password.length > 16)
		return -2;

	return 1;
}

function CharMode(iN) {
	if (iN >= 48 && iN <= 57) // 数字
		return 1;
	if (iN >= 65 && iN <= 90) // 大写字母
		return 2;
	if (iN >= 97 && iN <= 122) // 小写
		return 4;
	else
		return 8; // 特殊字符
}

function chkpassConfim() {
	var passConfim = $.trim($("#passConfimInp").val());
	var password = $.trim($("#passwInp").val());
	if (passConfim == "") {
		return 0;
	} else if (passConfim != password) {
		// 长度小于6个字符或者大于18个字符
		return -20;
	}

	return 1;
}

// bitTotal函数
// 计算出当前密码当中一共有多少种模式
function bitTotal(num) {
	modes = 0;
	for (i = 0; i < 4; i += 1) {
		if (num & 1)
			modes += 1;
		num >>>= 1;
	}
	return modes;
}

/**
 * 显示密码强度
 */
function showPasswordStrong() {
	var pwd = $.trim($("#passwInp").val());
	if (pwd == "") {
		$("#passStrong").attr("class", "notice pswState pswState-empty");
		return;
	}
	if (fLen(pwd) < 6) {
		$("#passStrong").attr("class", "notice pswState pswState-empty");
		showNoticeMessage("wrong", "密码长度太短", "passwWrap");
		return;
	}

	if (fLen(pwd) > 16) {
		$("#passStrong").hide();
		showNoticeMessage("wrong", "密码长度太长", "passwWrap");
		return;
	} else {
		$("#passStrong").show();
		deleteNoticeMessage("passwWrap");
	}
	var box = checkStrong(pwd);
	if (box == 1 || box == 0 || box == -1) {
		$("#passStrong").attr("class", "notice pswState pswState-poor");
	} else if (box == 2) {
		$("#passStrong").attr("class", "notice pswState pswState-normal");
	} else if (box == 3 || box == 4) {
		$("#passStrong").attr("class", "notice pswState pswState-strong");
	}
}
// checkStrong函数
// 返回密码的强度级别
function checkStrong(sPW) {
	if (sPW == "")
		return -1;
	Modes = 0;
	for (i = 0; i < sPW.length; i += 1) {
		// 测试每一个字符的类别并统计一共有多少种模式.
		Modes |= CharMode(sPW.charCodeAt(i));
	}
	return bitTotal(Modes);
}
/**
 * 自定义问题改变时触发
 */

/**
 * 获取事件
 * 
 * @param e
 * @return
 */
function fGetEvent(e) {
	// 考虑浏览器的兼容性
	var ev = e || window.event;

	if (!ev) {
		var aCaller = [];
		var c = fGetEvent.caller;
		while (c) {
			ev = c.arguments[0];
			if (ev && Event == ev.constructor) {
				break;
			}

			var b = false;
			for ( var i = 0; i < aCaller.length; i += 1) {
				if (c == aCaller[i]) {
					b = true;
					break;
				}
			}
			if (b) {
				break;
			} else {
				aCaller.push(c);
			}
			c = c.caller;
		}
	}

	return ev;
}

/**
 * 检查手机号码
 * 
 * @returns {Number}
 */
function chkMobile() {
	mobile = $.trim($("#mobileInp").val());
	if (mobile == "")
		return 0;
	if (/^13\d{9}$/.test(mobile) | /^15\d{9}$/.test(mobile)
			| /^18\d{9}$/.test(mobile) | /^14\d{9}$/.test(mobile))
		return 1;
	return -1;
}
/**
 * 检查验证码
 * 
 * @returns {Number}
 */
function chkAuthcode() {
	var authcode = $.trim($("#verifyInp").val());
	if (authcode == "")
		return 0;
	else
		return 1;
}

/** -------------一下是每一个字段的条件复核检查------------------ */
function checkunamedata() {

	$("#unameInp").attr("class", "g-ipt");
	$("#unameNot").attr("class", "txt-info");
	deleteNoticeMessage("unameWrap");
	var ok = true;
	var ret = chkUsername();

	if (ret == 0) {
		// 用户名输入框为空,显示规则
		$("#unameInp").attr("class", "g-ipt");
		ok = false;
	} else if (ret == -1) { // 当用户填写用户名为数字开头时
		$("#unameInp").attr("class", "g-ipt g-ipt-err");
		showNoticeMessage("wrong", "不能以数字开头", "unameWrap");
		ok = false;
	} else if (ret == -7) { // 全部以数字
		$("#unameInp").attr("class", "g-ipt g-ipt-err");
		showNoticeMessage("wrong", "用户名不能全是数字", "unameWrap");
		ok = false;
	} else if (ret == -2) { // 当用户名少于3个字符
		$("#unameInp").attr("class", "g-ipt g-ipt-err");
		showNoticeMessage("wrong", "输入字符不能少于3个", "unameWrap");
		ok = false;

	} else if (ret == -6) {
		$("#unameInp").attr("class", "g-ipt g-ipt-err");
		showNoticeMessage("wrong", "只能输入3~13个字符", "unameWrap");
		ok = false;
	} else if (ret == -3) {
		$("#unameInp").attr("class", "g-ipt g-ipt-err");
		showNoticeMessage("wrong", "只能输入字母、数字和下划线", "unameWrap");
		ok = false;
	} else if (ret == -5) {
		$("#unameInp").attr("class", "g-ipt g-ipt-err");
		showNoticeMessage("wrong", "请以字母或数字结尾", "unameWrap");
		ok = false;
	} else if (ret == -4) {
		$("#unameInp").attr("class", "g-ipt g-ipt-err");
		showNoticeMessage("wrong", "请以字母开头", "unameWrap");
		ok = false;
	} else {
		showNoticeMessage("success", "", "unameWrap");
		ok = true;
	}
	return ok;
}

// 检查用户名的合法性
function checkrnamedata() {

	$("#rnameInp").attr("class", "g-ipt");
	$("#rnameNot").attr("class", "txt-info");
	deleteNoticeMessage("rnameWrap");
	var ok = true;
	var ret = chkRealname();

	if (ret == 0) {
		// 用户名输入框为空,显示规则
		$("#rnameInp").attr("class", "g-ipt");
		ok = false;
	} else if (ret == -20) { // 当用户真实名不是汉字
		$("#rnameInp").attr("class", "g-ipt g-ipt-err");
		showNoticeMessage("wrong", "请输入汉字", "rnameWrap");
		ok = false;
	} else if (ret == -2) { // 当用户真实名少于2个字符
		$("#rnameInp").attr("class", "g-ipt g-ipt-err");
		showNoticeMessage("wrong", "输入字符不能少于3个", "rnameWrap");
		ok = false;
	} else if (ret == -6) {
		showNoticeMessage("wrong", "输入字符不能超过10个", "rnameWrap");
		ok = false;
	} else {
		showNoticeMessage("success", "用户名格式合法", "rnameWrap");
		ok = true;
	}
	return ok;
}

function checkidnumdata() {

	$("#idnumInp").attr("class", "g-ipt");
	$("#idnumNot").attr("class", "txt-info");
	deleteNoticeMessage("idnumWrap");
	var ok = true;
	var ret = chkIdnumber();

	if (ret == 0) {
		// 输入框为空,显示规则
		$("#idnumInp").attr("class", "g-ipt");
		ok = false;
	} else if (ret == -1) {
		$("#idnumInp").attr("class", "g-ipt g-ipt-err");
		showNoticeMessage("wrong", "请输入合法的身份证号", "rnameWrap");
		ok = false;
	} else if (ret == -2) {
		$("#idnumInp").attr("class", "g-ipt g-ipt-err");
		showNoticeMessage("wrong", "请输入合法的身份证号", "rnameWrap");
		ok = false;
	} else {
		showNoticeMessage("success", "身份证号格式合法", "rnameWrap");
		ok = true;
	}
	return ok;
}

function checknumdata() {

	$("#numInp").attr("class", "g-ipt");
	$("#numNot").attr("class", "txt-info");
	deleteNoticeMessage("numWrap");
	var ok = false;
	var ret = chkNum();
	var num = $.trim($("#numInp").val());
	if (num == "") {
		return;
	}
	if (ret == 0) {
		// 学号输入框为空,显示规则
		$("#numInp").attr("class", "g-ipt");
	} else if (ret == -20) { // 字符数少于6个或者大于18个
		$("#numInp").attr("class", "g-ipt g-ipt-err");
		showNoticeMessage("wrong", "输入字符不能少于6个或者大于13个", "numWrap");
	} else if (ret == -1) {
		$("#numInp").attr("class", "g-ipt g-ipt-err");
		showNoticeMessage("wrong", "请输入数字", "numWrap");
	} else {
		showNoticeMessage("success", "", "numWrap");
		ok = true;
	}
	return ok;
}

// 检查邮件的合法性
function checkmaildata() {

	$("#mailInp").attr("class", "g-ipt");
	$("#mailNot").attr("class", "txt-info");
	deleteNoticeMessage("mailWrap");
	var ok = false;
	var ret = chkmail();
	var mail = $.trim($("#mailInp").val());
	if (mail == "") {
		return;
	}
	if (ret == 0) {
		// 用户名输入框为空,显示规则
		$("#mailInp").attr("class", "g-ipt");
	} else if (ret == -1) {
		$("#mailInp").attr("class", "g-ipt g-ipt-err");
		showNoticeMessage("wrong", "请输入正确的邮箱地址", "mailWrap");
	} else {
		showNoticeMessage("success", "", "mailWrap");
		ok = true;
	}
	return ok;
}

// 检查密码
function checkpasswddata() {
	$("#passwInp").attr("class", "g-ipt");
	$("#passwNot").attr("class", "txt-info");
	$("#passwWrap").attr("class", "ipt-wraper");
	$("#passStrong").hide();

	var unmaea = $.trim($("#unameInp").val());
	var pawwordc = $.trim($("#passwInp").val());

	var ok = false;
	var pare = chkPassword();
	if (pare == -1) {
		showNoticeMessage("wrong", "密码长度应为6~16个字符", "passwWrap");
	} else if (pare == 0) {
		return;
	} else if (pare == -2) {
		showNoticeMessage("wrong", "密码长度应为6~16个字符", "passwWrap");
	} else if (pare == -3) {
		showNoticeMessage("wrong", "只能输入字母、数字、特殊字符", "passwWrap");
	} else {
		var pwd = $.trim($("#passwInp").val());
		var box = checkStrong(pwd);
		var tex;
		if (box == 1) {
			tex = "密码强度：弱";
		} else if (box == 2) {
			tex = "密码强度：中";
		} else if (box == 3 || box == 4) {
			tex = "密码强度：强";
		}
		showNoticeMessage("success", tex, "passwWrap");
		ok = true;
	}

	var passc = $.trim($("#passConfim").val());
	if (passc != "") {
		$("#passConfim").blur();
	} else {
		deleteNoticeMessage("passconfimWrap");
	}

	return ok;
}

// 检查重复密码的合法性

function passconfimdata() {

	$("#passConfimInp").attr("class", "g-ipt");
	$("#passConfimNot").attr("class", "txt-info");
	deleteNoticeMessage("passConfimWrap");
	var ok = false;
	var ret = chkpassConfim();
	var passConfim = $.trim($("#passConfimInp").val());
	if (passConfim == "") {
		return;
	}
	if (ret == 0) {
		$("#passConfimInp").attr("class", "g-ipt");
	} else if (ret == -20) { // 字符数少于6个或者大于18个
		$("#passConfimInp").attr("class", "g-ipt g-ipt-err");
		showNoticeMessage("wrong", "两次密码不相符", "passConfimWrap");
	} else {
		showNoticeMessage("success", "重复密码正确", "passConfimWrap");
		ok = true;
	}
	return ok;
}

function checkverifydata() {

	var myDate = new Date();
	var usertime = (myDate.getTime() - RegTime.verfifytime) / 500;

	$("#verifyInp").attr("class", "g-ipt");
	$("#verifyCodeNot").attr("class", "txt-info");
	var ok = false;
	ret = chkAuthcode();
	if (ret == 0) {
		// 验证码输入框为空
		deleteNoticeMessage("verifycodeWrap");
		ok = false;
	} else {
		// 如果不为空，就得检测一下是否数据符合
		checkVerycode();
	}
	return ok;
}

// 检查手机的合法性
function checkmobiledata() {

	$("#mobileInp").attr("class", "g-ipt");
	deleteNoticeMessage("mobileWrap");
	$("#mobileNot").attr("class", "txt-info");
	$("#mobileNot").attr("style", "");
	$("#mobileInp").attr("style", "");
	var ok = false;
	var ret = chkMobile();
	if (ret == 0) {
		return false;
	} else if (ret == -1) {
		showNoticeMessage("wrong", "请输入有效的手机号", "mobileWrap");
	} else {
		showNoticeMessage("success", "", "mobileWrap");
		ok = true;
	}
	return ok;
}

/** ----------------------------检查字段的信息---------------------------------- */
function checkFields() {
	/** ----------- 用户名事件 ----------- */
	/**
	 * 用户名输入框激活
	 */
	$("#unameInp").bind("focus", function() {

		nowfocus = "uname";
		deleteNoticeMessage("unameWrap");
		$("#unameShowbox").hide();

		var ret = chkUsername();// 返回值是数字！

			$("#unameInp").attr("class", "g-ipt g-ipt-active");
			$("#unameNot").attr("class", "txt-info txt-infoNotice");
			return false;
		});

	$("#unameInp").bind("mouseover", function() {
		$("#unameNot").attr("class", "txt-info txt-infoNotice");
		return false;
	});
	$("#unameInp").bind("mouseout", function() {
		$("#unameNot").attr("class", "txt-info");
		return false;
	});

	$("#unameInp").bind("keyup", function(event) {
		if (event.keyCode == 13) {
			// 按下回车键
			$("#unameInp").blur();
			return false;
		}
		var val = $.trim($("#unameInp").val());
		if (val == "") {
			deleteNoticeMessage("unameWrap");
		}

		return false;
	});
	/**
	 * 用户名输入框失去焦点
	 */
	$("#unameInp").bind("blur", checkunamedata);

	/** ----------- 真实姓名事件 ----------- */

	/**
	 * 用户真实名输入框激活
	 */
	$("#rnameInp").bind("focus", function() {
		nowfocus = "rname";

		deleteNoticeMessage("rnameWrap");
		$("#rnameShowbox").hide();
		var ret = chkRealname();

		$("#rnameInp").attr("class", "g-ipt g-ipt-active");
		$("#rnameNot").attr("class", "txt-info txt-infoNotice");
		return false;
	});

	$("#rnameInp").bind("mouseover", function() {
		$("#rnameNot").attr("class", "txt-info txt-infoNotice");
		return false;
	});
	$("#rnameInp").bind("mouseout", function() {
		$("#rnameNot").attr("class", "txt-info");
		return false;
	});

	$("#rnameInp").bind("keyup", function(event) {
		if (event.keyCode == 13) {
			$("#rnameInp").blur();
			return false;
		}
		var val = $.trim($("#rnameInp").val());
		if (val == "") {
			deleteNoticeMessage("rnameWrap");
		}

		return false;
	});
	/**
	 * 用户真实名输入框失去焦点
	 */
	$("#rnameInp").bind("blur", checkrnamedata);

	
	/** ----------- 真实姓名事件 ----------- */

	/**
	 * 用户身份证号输入框激活
	 */
	$("#idnumInp").bind("focus", function() {
		nowfocus = "rname";

		deleteNoticeMessage("idnumWrap");
		$("#rnameShowbox").hide();
		var ret = chkRealname();

		$("#idnumInp").attr("class", "g-ipt g-ipt-active");
		$("#rnameNot").attr("class", "txt-info txt-infoNotice");
		return false;
	});

	$("#idnumInp").bind("mouseover", function() {
		$("#rnameNot").attr("class", "txt-info txt-infoNotice");
		return false;
	});
	$("#idnumInp").bind("mouseout", function() {
		$("#rnameNot").attr("class", "txt-info");
		return false;
	});

	$("#idnumInp").bind("keyup", function(event) {
		if (event.keyCode == 13) {
			$("#idnumInp").blur();
			return false;
		}
		var val = $.trim($("#idnumInp").val());
		if (val == "") {
			deleteNoticeMessage("idnumWrap");
		}

		return false;
	});
	/**
	 * 用户身份证号输入框失去焦点
	 */
	$("#idnumInp").bind("blur", checkrnamedata);

	/** ----------- 邮箱事件 ----------- */
	/**
	 * 邮箱输入框激活
	 */
	$("#mailInp").bind("focus", function() {
		nowfocus = "mail";

		deleteNoticeMessage("mailWrap");
		$("#mailShowbox").hide();
		var ret = chkmail();

		$("#mailInp").attr("class", "g-ipt g-ipt-active");
		$("#mailNot").attr("class", "txt-info txt-infoNotice");
		return false;
	});

	$("#mailInp").bind("mouseover", function() {
		$("#mailNot").attr("class", "txt-info txt-infoNotice");
		return false;
	});
	$("#mailInp").bind("mouseout", function() {
		$("#mailNot").attr("class", "txt-info");
		return false;
	});

	$("#mailInp").bind("keyup", function(event) {
		if (event.keyCode == 13) {
			$("#mailInp").blur();
			return false;
		}
		var val = $.trim($("#mailInp").val());
		if (val == "") {
			deleteNoticeMessage("mailWrap");
		}

		return false;
	});
	/**
	 * 失去焦点
	 */
	$("#mailInp").bind("blur", checkmaildata);

	/** ----------- 密码事件 ----------- */

	/**
	 * 密码输入框获得焦点
	 */
	$("#passwInp").bind("focus", function() {
		nowfocus = "password";

		deleteNoticeMessage("passwWrap");
		showPasswordStrong();
		$("#passwInp").attr("class", "g-ipt g-ipt-active");
		$("#passwWrap").attr("class", "ipt-wraper ipt-wraper-active");
		$("#passwNot").attr("class", "txt-info txt-infoNotice");
		deleteNoticeMessage("passwWrap");
		$("#passStrong").show();
		return false;
	});

	$("#passwInp").bind("mouseover", function() {
		$("#passwNot").attr("class", "txt-info txt-infoNotice");
		return false;
	});
	$("#passwInp").bind("mouseout", function() {
		$("#passwNot").attr("class", "txt-info");
		return false;
	});

	/**
	 * 密码输入框失去焦点
	 */
	$("#passwInp").bind("blur", checkpasswddata);

	/**
	 * 按键结束，主要实时检查密码强度
	 */
	$("#passwInp").bind("keyup", function(event) {
		if (event.keyCode == 13) {
			$("#passwInp").blur();
			return false;
		}
		var pwd = $.trim($("#passwInp").val());

		showPasswordStrong();
		return false;
	});

	/** ----------- 密码确定事件 ----------- */
	/**
	 * 密码确定框激活
	 */
	$("#passConfimInp").bind("focus", function() {
		nowfocus = "passConfim";

		deleteNoticeMessage("passConfimWrap");
		$("#passConfimShowbox").hide();
		var ret = chkpassConfim();

		$("#passConfimInp").attr("class", "g-ipt g-ipt-active");
		$("#passConfimNot").attr("class", "txt-info txt-infoNotice");
		return false;
	});

	$("#passConfimInp").bind("mouseover", function() {
		$("#passConfimNot").attr("class", "txt-info txt-infoNotice");
		return false;
	});
	$("#passConfimInp").bind("mouseout", function() {
		$("#passConfimNot").attr("class", "txt-info");
		return false;
	});

	$("#passConfimInp").bind("keyup", function(event) {
		if (event.keyCode == 13) {
			$("#passConfimInp").blur();
			return false;
		}
		var val = $.trim($("#passConfimInp").val());
		if (val == "") {
			deleteNoticeMessage("passConfimWrap");
		}

		return false;
	});
	/**
	 * 失去焦点
	 */
	$("#passConfimInp").bind("blur", passconfimdata);

	/** ----------- 手机号码事件 ----------- */
	$("#mobileInp").bind("focus", function() {
		nowfocus = "mobile";

		deleteNoticeMessage("mobileWrap");
		deleteNoticeMessage("mobileWrap");
		$("#mobileInp").attr("class", "g-ipt g-ipt-active");

		$("#mobileNot").attr("class", "txt-info txt-infoNotice");
		$("#mobileNot").attr("style", "color:#ffa200");
		return false;
	});
	$("#mobileInp").bind("keyup", function(event) {
		if (event.keyCode == 13) {
			$("#mobileInp").blur();
			return false;
		}
		return false;
	});

	$("#mobileInp").bind("mouseover", function() {

		$("#mobileNot").attr("class", "txt-info txt-infoNotice");
		$("#mobileNot").attr("style", "color:#ffa200");
		return false;
	});
	$("#mobileInp").bind("mouseout", function() {

		$("#mobileNot").attr("class", "txt-info");
		$("#mobileNot").attr("style", "");
		return false;
	});

	$("#mobileInp").bind("blur", checkmobiledata);

	$("#verifyInp").bind("blur", checkverifydata);

	$("#verifyInp").bind("mouseover", function() {

		$("#verifyCodeNot").attr("class", "txt-info txt-infoNotice");
		return false;
	});
	$("#verifyInp").bind("mouseout", function() {

		$("#verifyCodeNot").attr("class", "txt-info");
		return false;
	});

	$("#verifyInp").bind("focus", function() {
		nowfocus = "verifycode";
		var myDate = new Date();
		var hh = myDate.getTime();
		RegTime.verfifytime = hh;

		deleteNoticeMessage("verifycodeWrap");
		$("#verifyInp").attr("class", "g-ipt g-ipt-active");
		$("#verifyCodeNot").attr("class", "txt-info txt-infoNotice");
		$("#veryinfo").html("");

	});

}

/** ---------验证码输入是否正确判断 ------------ */

var verycode = true;// 此处必须设置为全局变量！！
function checkVerycode() {

	// 1，获取节点的数值
	var verifyCode = $("#verifyInp").val();
	// 2.将文本框中的数据发送给服务,的action
	$.ajax( {
		type : "POST", // http请求方式
		url : "check", // 服务器端check.action地址
		data : {
			"str" : verifyCode
		}, // 发送给服务器段的数据，通过domainmodel接收！！
		dataType : "html", // 告诉JQuery返回的数据格式
		success : function(data) {
			// 定义交互完成，并且服务器正确返回数据时调用的回调函数
		verycode = true;
		showNoticeMessage("success", "验证码正确", "verifycodeWrap");
	},
	error : function() {
		// $("#veryinfo").html("<font color=red size=2>验证码输入有误，重新输入！</font>");
		verycode = false;
		showNoticeMessage("wrong", "验证码输入有误", "verifycodeWrap");
	}
	});

	return verycode;

}


/** -----处理操控事件-------- */
// 1,先进行写入时检测
$(document).ready(checkFields);
$("#upload").bind("click",ajaxFileUpload);
// 2，提交时检测
$("#regBtn").bind("click", check);

function check() {

	var datas = checkdata();// 检查是否有空字段
	var fulldata = checkalldatas();// 检查是否数据合格
	var very = checkVerycode();// 检查验证码
	if (datas == true) {
		// 检查各个字段不为空
		if (fulldata == true) {
			// 检查是否各个字段符合条件
			if (very == true) {
				// 验证码输入正确
				var ok = postdata();

			}
		}
	}
}
/** ----END--------- */


// ------------点击按钮时检测表单项是否符合条件-----------------
function checkalldatas() {
	var ok = true;
	var uname = checkunamedata();
	var rname = checkrnamedata();
	var num = checknumdata();
	var idnum = checkidnumdata();
	var mail = checkmaildata();
	var pass = checkpasswddata();
	var passcon = passconfimdata();
	var mobile = checkmobiledata();

	if (uname == true && rname == true && num == true && mail == true
			&& pass == true && passcon == true && mobile == true) {
		ok = true;
	} else {
		ok = false;
	}
	return ok;
}

/* 点击按钮时验证表单项是否为空 */
function checkdata() {

	nowfocus = "regBtn";
	var myDate = new Date();
	var usertime = (myDate.getTime() - RegTime.starttime) / 500;
	var logdata = {
		field : "regBtn",
		usetime : usertime + ""
	};
	var ok = true;
	var wavawrap = "";
	var focusinp = "";

	/*
	// 用户名
	var uname = $.trim($("#unameInp").val());
	if (uname == ""||uname==null) {
		showNoticeMessage("wrong", "请输入用户名", "unameWrap");
		ok = false;
	}
	*/

	// 真名
	var rname = $.trim($("#rnameInp").val());
	if (rname == "") {
		showNoticeMessage("wrong", "请输入用户真实名", "rnameWrap");
		ok = false;
	}


	var mail = $.trim($("#idnumInp").val());
	if (mail == "") {
		showNoticeMessage("wrong", "请输入身份证号", "idnumWrap");
		ok = false;
	}
	
	
	// 邮箱

	var mail = $.trim($("#mailInp").val());
	if (mail == "") {
		showNoticeMessage("wrong", "请输入邮箱", "mailWrap");
		ok = false;
	}

	// 密码
	var passw = $.trim($("#passwInp").val());
	if (passw == "") {
		showNoticeMessage("wrong", "请输入密码", "passwWrap");
		ok = false;
	}

	// 确认密码
	var passwc = $.trim($("#passConfimInp").val());
	if (passwc == "") {
		showNoticeMessage("wrong", "请再次输入密码", "passConfimWrap");
		ok = false;
	}

	// 验证码

	var vcode = $.trim($("#verifyInp").val());
	if (vcode == "") {
		showNoticeMessage("wrong", "请输入验证码", "verifycodeWrap");
		ok = false;
	}

	// 手机
	var passwc = $.trim($("#mobileInp").val());
	if (passwc == "") {
		showNoticeMessage("wrong", "请输入手机号", "mobileWrap");
		ok = false;
	}

	return ok;

}
