<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String applyId = request.getParameter("applyId").trim();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
  </head>
  
  <body>
  	<script type="text/javascript">
  		$(function(){
  			$.post('<%=basePath%>apply_getApplyById.action?applyId=<%=applyId%>',function(date){
  				$('#sqform').form('load',date);
  				$("#value").html(date.value);
  			},'json');
  		})
		function closesq(){
			closeMyWindow('myWindow');
		}
	</script>
  	<div>
  	<div style="margin: 15px;">
  	<form id="sqform">
  		用户名称：<input id="userName" name="userName" readonly="readonly"><br/><br/>
  		产品名称：<input id="articleTitle" name="articleTitle" readonly="readonly" style="width: 300px;"><br/><br/>
  		申请时间：<input id="applyDate" name="applyDate" readonly="readonly" style="width: 150px;"><br/><br/>
  		申请备注：<textarea rows="8" cols="40" id="value" readonly="readonly"></textarea><br/>
  		<div align="center" style="margin-top: 20px;"><a href="javascript:closesq();" class="easyui-linkbutton" onclick="">关闭</a></div>
  	</form>
  	</div>
  	</div>
  </body>
</html>
