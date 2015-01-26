<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>website management platform</TITLE>
<LINK rel=stylesheet type=text/css href="<%=basePath %>/css/login2.css" media=screen>
<script type="text/javascript" src="<%=basePath %>js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jquery.easyui.min.js"></script>
</HEAD>
<BODY>
<SCRIPT language=javascript>
	/*
	function changeimg()
	{
		$('#code22').attr('src','verify_code.jsp');
	}
	*/
	$(function(){ 
		document.onkeydown = function(e){ 
			var ev = document.all ? window.event : e; 
			if(ev.keyCode==13){ 
				loginsubmit();
			} 
		}
		$("#adminName").focusin(function () {
			$('#logerror').html('');
		});
		$("#adminPwd").focusin(function () {
			$('#logerror').html('');
		});
	});
	
	
	function loginsubmit(){
		var adminName = $('#adminName').val();
		var adminPwd = $('#adminPwd').val();
		var yzm = $('#yzm').val();
		if(adminName==''){
			$('#logerror').html('请输入用户名!');
			return;
		}
		if(adminPwd==''){
			$('#logerror').html('请输入密码!');
			return;
		}
		if(adminName.indexOf('\\')>-1 || adminPwd.indexOf('\\')>-1){
			$('#logerror').html('密码错误!');
			return;
		}
		/*
		if(yzm==''){
			$('#logerror').html('请输入验证码！');
			return;
		}
		*/
		$.post('<%=basePath%>login_adminLogin.action',{'adminName':adminName,'adminPwd':adminPwd},function(date){
			if(date=='true'){
				window.location.href='<%=basePath%>index.jsp';
			}
			if(date==1){
				$('#logerror').html('密码错误!');
			}
			/*
				else{
				if(date==1){
					$('#logerror').html('账号或密码错误！');
				}
				if(date==2){
					$('#logerror').html('验证码错误！');
				}
			}
			*/
		},'text');
	}
	function clears(){
		$('#adminName').val('');
		$('#adminPwd').val('');
	}
</SCRIPT>

<TABLE border=0 cellSpacing=0 cellPadding=0 width=969 align=center>
  <FORM>
  <TBODY>
  <TR>
    <TD><IMG alt="" src="images/login_01.gif" width=241 height=177></TD>
    <TD><IMG alt="" src="images/login_02.gif" width=220 height=177></TD>
    <TD><IMG alt="" src="images/login_03.gif" width=216 height=177></TD>
    <TD><IMG alt="" src="images/login_04.gif" width=292 
height=177></TD></TR>
  <TR>
    <TD vAlign=top colSpan=4><IMG src="images/login_6-10.jpg" width=969 
      height=180></TD></TR>
  <TR>
    <TD><IMG alt="" src="images/login_10.gif" width=241 height=190></TD>
    <TD class=login colSpan=2>
 	  <div style="height: 30px;MARGIN-LEFT: 30px">
       	 <div style=" padding-top:20px;MARGIN-LEFT: 30px">
       	 	<label id="logerror" style="color: red;" o></label>
       	 </div>
      </div>
      <P><LABEL>用户名：</LABEL><INPUT id="adminName" name="adminName"></P><br/>
      <P><LABEL>密　码：</LABEL><INPUT id="adminPwd" type="password" name="adminPwd"></P><br/>
      <!-- 
      &nbsp;&nbsp;<LABEL>验证编码</LABEL>&nbsp;&nbsp; 
      <INPUT type=text  id="yzm" name="yzm" style="width: 60px;">
      <img id="code22" src="<%=basePath%>verify_code.jsp">&nbsp;&nbsp;<a href="javascript:changeimg()">看不清，换一张 </a>
      <br/><br/>
       -->
      <DIV><img src="images/login1.gif" onclick="javascript:loginsubmit();">
      	<img src="images/quxiao1.gif" onclick="javascript:clears();" style="margin-left: 20px;">
      </DIV>
      <a href="<%=basePath%>image_getXiangCeByUp.action" target="_blank">网站首页</a>
      &nbsp;&nbsp;&nbsp;
      </TD>
    <TD><IMG alt="" src="images/login_12.gif" width=292 
height=190></TD></TR>
  <TR>
    <TD><IMG alt="" src="images/login_13.gif" width=241 height=123></TD>
    <TD style="COLOR: #095816; FONT-WEIGHT: bold" height=123 vAlign=bottom 
    background=images/login_14.gif colSpan=2 align=middle></TD>
    <TD><IMG alt="" src="images/login_15.gif" width=292 
  height=123></TD></TR></TBODY>
  </FORM>
</TABLE><br>
  </BODY>
</HTML>