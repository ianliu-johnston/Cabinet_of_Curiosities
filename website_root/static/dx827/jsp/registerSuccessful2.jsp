
<!doctype html>
<html>
<head>



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

<link rel="stylesheet" type="text/css" href="https://ossm.dx878.com/site/css/registerSuccessful2.css" />
<title>账号申请成功</title>
</head>

<body>
	<div class="boxx">
	       <header>为了您的账户安全，请在充值前完善你的账户信息。</header>
							<table>
								<tr>
									<td class="ming">姓名：</td>
									<td><input type="text" id="realname" /></td>
								</tr>
								<tr>
									<td class="ming">身份证号：</td>
									<td><input type="text" id="idcard" /></td>
								</tr>							
								<tr>
									<td class="ming">选择验证方式：</td>
									<td><form><input type="radio" checked="checked" name="verification" value="phone"/>手机
									<input type="radio" name="verification"  value="email"/>邮箱</form></td>
									<td></td>
								</tr>
								<tr>
									<td class="ming"></td>
									<td><input type="text" class="validate" id="email" /><input class="getCAPTCHA" type="button" value="获取验证码" /></td>
									<td><span id="checkemail" style="color: #966"></span></td>
								</tr>
								<tr>
									<td class="ming">验证码：</td>
									<td><input type="text" class="CAPTCHA" /></td>
									<td><span id="checkphone" style="color: #966"></span></td>
								</tr>
								<tr>
									<td class="ming">确认密码：</td>
									<td><input type="password" id="pwddle" /></td>
									<td><span id="checkpwddle" style="color: #966"></span></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td><input id="sub" class="submit" type="button"
										value="确定" /> <input id="reset" class="reset" type="button"
										value="重置" /></td>
								</tr>
							</table>  
	</div>
</body>
</html>
