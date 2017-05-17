
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Asura Force Online - Account Management-Forgetpwd</title>
<meta name="keywords" content="Asura Force Online, AF, f2p mmorpg, new mmorpg, new online game, popular mmorpg, account management, change password, forget password, modify data"/>
<meta name="description" content="Asura Force Online is a free fantasy 3D MMORPG. Various game features for you to experience. In account management pages, you can change in-game password, retrieve your password if you forgot it and modify other data."/>
<link href="../css/support.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="../js/support.js"></script>
<script type="text/javascript">
function dosubmit() {

    if(document.getElementById("txtAccount").value==""){
        alert("Account can't be blank.");
        return;
    }

    if(document.getElementById("txtEmail").value==""){
        alert("Registered Email can't be blank.");
        return;
    }

    if(document.getElementById("txtVerify").value==""){
        alert("Verify Code can't be blank.");
        return;
    }

    var emailpattern = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
    if(!emailpattern.test(document.getElementById("txtEmail").value)){
        alert("Email format error.");
        return;
    }
    
    document.getElementById("form2").submit();
} 
</script>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-22875141-5']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</head>
<body bgcolor="#000000";>

<div id="wapper">
<!--top start-->
<div id="top">
<iframe src="../indexTop.html" frameborder="0" marginheight="0"  marginwidth="0"  scrolling="no" width="100%" height="450"></iframe>
 </div>
<!--top end-->

<div class="height_60"></div>
<div id="content">
<div id="content1">
<!--content left blank div-->
<div id="contentLeft">&nbsp;</div>
<!--content left navigation start-->
<div id="contentLeft1">
<iframe src="../register/registerLeft.jsp?catalog=4"  frameborder="0" marginheight="0"  marginwidth="0"  scrolling="no" width="100%" height="800" allowtransparency="true"></iframe>
</div>
<!--content left navigation end-->
<!--right content start-->
<div id="contentRight">
<div id="contentBar"><a href="../index">Home</a> &gt;Support &gt;Account Management &gt;Forgot Password<a name="top"></a></div>
<div id="contentText">
<div id="contentArea">
<div class="height_10"></div>
<div class="myScoreTitle">** Forgot Password **</div>

<div style="width:500px;height:60px;"> 
    <p class="consubTitle">
        Input Account and correct Registered Email, and you will retrieve your Password through 
        <span style="color:green;font-size:110%">Registered Email</span>.
    </p>
</div>
<div id="myScoreRecord">
  <!--account laod start-->
  <div class="height_10"></div>
  <div id="accountLoad">
  <form id="form2"  method="post" action="../support/forgetpwd">
    <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
      <tr class="mydateTitle">
        <td height="12" colspan="3"></td>
        </tr>
      <tr>
        <td colspan="3">&nbsp;</td>
        </tr>
      <tr class="lineBg">
        <td width="115" height="30"><strong>Account Name:</strong></td>
        <td width="173"><input id="txtAccount" name="txtAccount" type="text"/></td>
        <td>Please input your Account.</td>
      </tr>
      <tr>
        <td height="30"><strong>Registered Email: </strong></td>
        <td width="173"><input id="txtEmail" name="txtEmail" type="text" /></td>
        <td>Please input your Registered Email.</td>
      </tr>
      <tr  class="lineBg">
        <td height="30"><strong>Validation:</strong></td>
        <td width="173">
            <input id="txtVerify" name="txtVerify" type="text"  style="width:75px;" maxlength="4"/>
            <img src="../verifyCode.jsp" onclick="flashImg1()" id="Vcode" style="height:21px;cursor:pointer;border:0px;" align="absmiddle"/>
        </td>
        <td>Click image to flash.</td>
      </tr>
      <tr>
        <td colspan="3" ></td>
      </tr>
      <tr  class="lineBg">
        <td colspan="3" style="text-align:center;height:40px;padding-top:10px;">
            <img src="../images/register/submitBtn.jpg"  onclick="dosubmit()" style="width:99px;height:36px;cursor:pointer;" />&nbsp;&nbsp;&nbsp;
            <img src="../images/register/registerBtn.jpg" onclick="javascript:if(confirm('Do you want to clear all input text?')) {document.forms[0].reset();}" style="width:99px;height:36px;cursor:pointer;" />
        </td>
      </tr>
      <tr class="mydateTitle">
        <td height="12" colspan="3"></td>
      </tr>
    </table>
    </form>
  </div>
<div>
  <p align="left">&nbsp;</p>
  <p align="left">&nbsp;</p>
  <p align="left" style="font-style:italic;">*Please  add this mail address &ldquo;<u><a href="/cdn-cgi/l/email-protection#8de0e8e0efe8ffbccde0e4ffeceaece0e8a3eee2e0"><span style="color:red; font-style:italic;"><span class="__cf_email__" data-cfemail="a0cdc5cdc2c5d291e0cdc9d2c1c7c1cdc58ec3cfcd">[email&#160;protected]</span><script data-cfhash='f9e31' type="text/javascript">/* <![CDATA[ */!function(t,e,r,n,c,a,p){try{t=document.currentScript||function(){for(t=document.getElementsByTagName('script'),e=t.length;e--;)if(t[e].getAttribute('data-cfhash'))return t[e]}();if(t&&(c=t.previousSibling)){p=t.parentNode;if(a=c.getAttribute('data-cfemail')){for(e='',r='0x'+a.substr(0,2)|0,n=2;a.length-n;n+=2)e+='%'+('0'+('0x'+a.substr(n,2)^r).toString(16)).slice(-2);p.replaceChild(document.createTextNode(decodeURIComponent(e)),c)}p.removeChild(t)}}catch(u){}}()/* ]]> */</script></span></a>&rdquo;</u> to the white list of your mailbox, so that you  can receive password information from system mails (no-reply mails).</p>
</div>
<!--account load end -->
</div>
 

<div class="height_40"></div>
<div ></div>
<div></div>
</div>
</div>
<!--content end-->
<div id="contentBottom"></div>
</div>
<!--right content end-->
<div class="clear"></div>
</div>
<!--content bottom line-->
<div id="level6"></div>
<!--content end  -->
</div>
</div>
<div class="height_40"></div>
<!--bottom start -->
<div id="bottom1">
<iframe src="../bottom.html" frameborder="0" marginheight="0"  marginwidth="0"  scrolling="no" width="100%" height="80"></iframe>
</div>
<!--bottom end -->
<script>/* <![CDATA[ */(function(d,s,a,i,j,r,l,m,t){try{l=d.getElementsByTagName('a');t=d.createElement('textarea');for(i=0;l.length-i;i++){try{a=l[i].href;s=a.indexOf('/cdn-cgi/l/email-protection');m=a.length;if(a&&s>-1&&m>28){j=28+s;s='';if(j<m){r='0x'+a.substr(j,2)|0;for(j+=2;j<m&&a.charAt(j)!='X';j+=2)s+='%'+('0'+('0x'+a.substr(j,2)^r).toString(16)).slice(-2);j++;s=decodeURIComponent(s)+a.substr(j,m-j)}t.innerHTML=s.replace(/</g,'&lt;').replace(/\>/g,'&gt;');l[i].href='mailto:'+t.value}}catch(e){}}}catch(e){}})(document);/* ]]> */</script></body>
</html>

