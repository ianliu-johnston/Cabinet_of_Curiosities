

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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


<title>大行盛开－手机绑定</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
<link href="https://www.dx878.com/css/i3.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="https://www.dx878.com/js/bindPhone.js"></script>
</head>
<body>
<input type="hidden" id="uname" value="null">
<div class="container main-container">
<div class="row signup-main">
<div class="col-md-8 col-md-offset-2">

<div id="bindphonePanel" class="panel panel-default">
<div class="panel-heading text-center">
	<h5>你好,<strong>null</strong>,首次登录请绑定手机号码:</h5>
</div>
	<div class="panel-body">
	<div class="row">
		<form class="col-md-8 col-md-offset-2 signup-action">
			<div class="form-group form-group-lg">
		      <input class="form-control" id="phone" placeholder="请输入您的手机号码">
		  	</div>
		  	<div id="phone_error" class="text-danger"></div>
		  	<div class="form-inline form-group form-group-lg">
		      <input class="form-control" id="validatecode" placeholder="请输入手机验证码" >
		      <input class="btn btn-primary btn-lg" id="sendValidCode" type="button" value="发送验证码">
		 	 </div>
		 	 <div id="smscode_error" class="text-danger"></div>
		 	 <div class="form-group form-group-lg">
		 		 <button type="button" id="bindphone" class="form-control btn btn-primary">绑定手机</button>
		  	</div>
	  </form>
	 </div>
	</div>
</div>

<div id="initpwdPanel" class="panel panel-default"   style="display:none">
<div class="panel-heading text-center">
	<h4>首次登录请重置您的<strong>登录密码:</strong></h4>
</div>
	<div class="panel-body">
	<div class="row">
		<form class="col-md-8 col-md-offset-2 signup-action">
			<div class="form-group form-group-lg">
		      <input type="password" class="form-control" id="newpwd" placeholder="请输入您的新密码">
		  	</div>
		  	<div id="newpwd_error" class="text-danger"></div>
		  	<div class="form-group form-group-lg">
		      <input type="password" class="form-control" id="doublepwd" placeholder="再次输入您的密码" >
		 	 </div>
		 	 <div id="doublepwd_error" class="text-danger"></div>
		 	 <div class="form-group form-group-lg">
		 		 <button type="button" id="initpwd" class="form-control btn btn-primary">提交</button>
		  	</div>
	  </form>
	 </div>
	</div>
</div>
</div>
</div>
</div>
</body>
</html>