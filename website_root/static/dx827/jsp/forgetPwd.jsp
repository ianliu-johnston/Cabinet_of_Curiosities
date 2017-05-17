

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit">



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit">
<script type="text/javascript">
var basePath = "//www.dx878.com";
</script>

<link rel="stylesheet" type="text/css" href="https://ossm.dx878.com/site/css/main.css" />
<script type="text/javascript" src="https://ossm.dx878.com/site/js/jquery.min.js"></script>
<script type="text/javascript" src="https://ossm.dx878.com/site/js/jquery.alert.js"></script>
<script type="text/javascript" src="https://ossm.dx878.com/site/js/bg.js"></script>
<script type="text/javascript" src="https://ossm.dx878.com/site/js/base.js"></script>

<link rel="stylesheet" type="text/css" href="https://ossm.dx878.com/site/css/jalert.css" />
<link rel="stylesheet" type="text/css" href="https://ossm.dx878.com/site/css/ui-loading.css" />

<script type="text/javascript" src="https://ossm.dx878.com/site/js/forgetPwd.js"></script>
</head>
<body style="background-color: #f2f2f2;">
	<div style="height: 42px;width: 100%; background: #fafafa;z-index: 1;">找回密码
	</div>
	<div id="checknamePanel" style="height: auto;width: 980px;margin-left: auto; margin-right: auto;">
		<div style="min-height: 500px;height: auto;margin-left: 70px; width: 910px;">
			<ul style="height: 34px;background: url(https://ossm.dx878.com/site/img/mod_sub_nav.png) no-repeat 0 0;margin: 30px 0 30px;line-height: 34px;color: #666;font-size: 16px;">
				<li style="list-style-type:none;background: url(https://ossm.dx878.com/site/img/sub_nav_1.png) no-repeat 0 0;color: #2e82ff;float: left;padding-left: 66px;width: 175px;">确认帐号  </li>
				<li style="list-style-type:none;float: left;padding-left: 66px;width: 163px;">安全验证  </li>
				<li style="list-style-type:none;float: left;padding-left: 66px;">重置密码 </li>
			</ul>
			<div>
				<p style="font-size: 12px;padding-bottom: 10px;color: #3E3030;">请填写您需要找回的帐号</p>
				<div style="margin-bottom: 20px;position: relative;zoom: 1;display: block;height:42px;">
					<input type="text" id="loginName" value="" style="display: block; position: relative;float: left;height: 16px;width: 328px;padding: 11px 10px 11px 10px;margin-right: 10px;font-size: 14px;transition: .3s;background: #fff;"/>
				</div>
				<div style="margin-bottom: 20px;position: relative;zoom: 1;height:42px;">
					<input type="text" id="validatecode" style="height:36px;color: rgb(102, 102, 102);width: 236px;margin-right: 0;float: left;border: 1px solid #ddd;font-size: 14px;background: #fff;">
					<img id="codeimg" title="验证码图片" alt="验证码图片" src="https://www.dx878.com/validate/getd" style="display: inline;float: left;width: 100px;height: 38px;border: 1px solid #ddd;margin-left: 10px;"onclick="this.src='/validate/getd?time=' + Math.random();">
<!-- 					<a href="#" onclick="this.src='/validate/getd?time=' + Math.random();" style="padding-top: 13px;padding-left: 10px;display: block;float: left;    text-decoration: none;color: #2b78e4;">换一张</a> -->
				</div>
				<div>
<!-- 				onclick="window.npc.callCalculator();" -->
					<input  type="button" id="checkLoginName" value="下一步" name="下一步" style="background-clip: padding-box;display: block;height: 40px;font-size: 16px;font-weight: bold;cursor: pointer;color: #fff;background-image: none;border: none;background-color: #3f89ec; width: 350px;">
				</div>
			</div>
		</div>
	</div>
	
	<div id="checkphonePanel" style="height: auto;width: 980px;margin-left: auto; margin-right: auto;display:none;">
		<div style="min-height: 500px;height: auto;margin-left: 70px; width: 910px;">
			<ul style="height: 34px;background: url(https://ossm.dx878.com/site/img/mod_sub_nav.png) no-repeat 0 0;margin: 30px 0 30px;line-height: 34px;color: #666;font-size: 16px;">
				<li style="list-style-type:none;float: left;padding-left: 66px;width: 175px;margin-left:-12px;">确认帐号  </li>
				<li style="list-style-type:none;background: url(https://ossm.dx878.com/site/img/sub_nav_2.png) no-repeat 0 0;color: #2e82ff;float: left;padding-left: 78px;margin-left: -12px;width: 163px;">安全验证  </li>
				<li style="list-style-type:none;float: left;padding-left: 78px;margin-left: -12px;">重置密码 </li>
			</ul>
			<div>
				<p style="font-size: 12px;padding-bottom: 10px;">为了你的帐号安全，请完成身份验证</p>
				<div style="margin-bottom: 20px;position: relative;zoom: 1;display: block;height:32px;">
					<div style="font-weight: bold;font-size:14px;margin-bottom: 20px;">手机验证</div>
				</div>
				<div style="margin-bottom: 15px;position: relative;zoom: 1;height:42px;">
					 <label style="width: 70px;font-size: 14px;float: left;margin-right: 10px;text-align: right;line-height: 32px;">手机号：</label>
					  <div id="phonediv" style="line-height: 32px;font-size: 14px;position: relative;float: left;zoom: 1;">
					  </div> 
				</div>
				<p style="font-size: 14px;font-weight: bold;line-height: 30px;">验证码：</p>
				<div style="zoom: 1;height:62px;">
					<div style="zoom: 1;font-size: 14px;position: relative;float: left;margin-bottom: 8px;">
						<input type="text" id="smscode" style="height:36px;color: rgb(102, 102, 102);width: 212px;margin-right: 0;float: left;border: 1px solid #ddd;font-size: 14px;background: #fff;">
						<div id="sendValidCode" style="width: 120px;height: 36px;border: 1px solid #ccc;background: #f7f7f7;color: #666;line-height: 36px;margin: 0 0 0 10px;cursor: pointer;font-size: 14px;text-align: center;float: left;">获取验证码</div>
						<span style="clear: both;margin-left: 0;height: 32px;width: 420px;"></span>
					</div>
				</div>
<!-- 				<div style="margin-bottom:10px;"><a href="#">手机号不可用？</a></div> -->
				<div>
					<input type="button" id="checkSmsCode" value="下一步" name="下一步" style="background-clip: padding-box;display: block;height: 40px;font-size: 16px;font-weight: bold;cursor: pointer;color: #fff;background-image: none;border: none;background-color: #3f89ec; width: 350px;">
				</div>
			</div>
		</div>
	</div>
	
	<div id="modifyPwdPanel" style="height: auto;width: 980px;margin-left: auto; margin-right: auto;display:none;">
		<div style="min-height: 500px;height: auto;margin-left: 70px; width: 910px;">
			<ul style="height: 34px;background: url(https://ossm.dx878.com/site/img/mod_sub_nav.png) no-repeat 0 0;margin: 30px 0 30px;line-height: 34px;color: #666;font-size: 16px;">
				<li style="list-style-type:none;float: left;padding-left: 66px;width: 175px;margin-left:-12px;">确认帐号  </li>
				<li style="list-style-type:none;float: left;padding-left: 66px;width: 163px;">安全验证  </li>
				<li style="list-style-type:none;background: url(https://ossm.dx878.com/site/img/sub_nav_3.png?v=a1717ea8.png) no-repeat 0 0;color: #2e82ff;margin-left: -12px;padding-left: 78px;width: 163px;float: left;">重置密码 </li>
			</ul>
			<div>
				<p style="font-size: 12px;padding-bottom: 10px;color: #3E3030;">您正在找回的帐号是：<span id="username"></span></p>
				<div style="margin-bottom: 20px;position: relative;zoom: 1;height:42px;">
					<label style="line-height: 40px;font-size: 14px;width: 70px;padding-right: 10px;float: left;text-align: right;">新密码</label>
					<input type="password" id="newps" style="font-size: 14px;display: block;position: relative;float: left;height: 16px;width: 328px;padding: 11px 10px 11px 10px;margin-right: 10px;transition: .3s;background: #fff;" name="password" id="password" value="" autocomplete="off">
				</div>
				<div style="margin-bottom: 20px;position: relative;zoom: 1;height:42px;">
					<label style="line-height: 40px;font-size: 14px;width: 70px;padding-right: 10px;float: left;text-align: right;">确认新密码</label>
					<input type="password" id="dnewps" style="font-size: 14px;display: block;position: relative;float: left;height: 16px;width: 328px;padding: 11px 10px 11px 10px;margin-right: 10px;transition: .3s;background: #fff;" name="password" id="password" value="" autocomplete="off">
				</div>
				<div style="margin-left: 80px;">
					<input type="button" id="findPwd" value="下一步" name="下一步" style="background-clip: padding-box;display: block;height: 40px;font-size: 16px;font-weight: bold;cursor: pointer;color: #fff;background-image: none;border: none;background-color: #3f89ec; width: 350px;">
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>