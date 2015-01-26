<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String commentId = request.getParameter("commentId").trim();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
  </head>
  
  <body>
  	<script type="text/javascript">
  		$(function(){
  			$.post('<%=basePath%>comment_getCommentById.action?commentId=<%=commentId%>',function(date){
  				$('#xqform').form('load',date);
  				$('#commentContent').html(date.commentContent);
  			},'json');
  		})
		function closexq(){
			closeMyWindow('myWindow');
		}
	</script>
  	<div>
  	<div style="margin: 15px;">
  	<form id="xqform">
  		用户名称：<input id="userName" name="userName" readonly="readonly"><br/><br/>
  		评论时间：<input id="commentDate" name="commentDate" readonly="readonly"><br/><br/>
  		内&nbsp;&nbsp;&nbsp;&nbsp;容：<textarea rows="8" cols="40" id="commentContent" readonly="readonly"></textarea><br/>
  		<div align="center" style="margin-top: 20px;"><a href="javascript:closexq();" class="easyui-linkbutton" onclick="">关闭</a></div>
  	</form>
  	</div>
  	</div>
  </body>
</html>
