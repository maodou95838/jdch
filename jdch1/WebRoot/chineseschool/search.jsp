<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/chineseschool/common.jsp" %>

<%
	String content = request.getParameter("content")==null?"":request.getParameter("content").trim();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript">
	$(function(){
		var content = '<%=content%>';
		$.post('<%=basePath%>article_serachArticleList.action?content='+content+'&languages=1',function(date){
			var str = '';
			for(var i=0; i<date.length;i++){
				var a = date[i].articleContent.replace(/<[^>]+>/g,"");
				if(a.length>230){
					a=a.substring(0,230)+'。。。';
				}
				str += '<h2><a href="<%=basePath%>'+date[i].menuUrl+'?menuId='+date[i].menuId+'">'+date[i].articleTitle+'</a></h2><br>'+a+'<br><br>';
			}
			$('#content').html(str);
		},'json');
	})
</script>
</head>

<body class="subpage">

<div class="stuWarp">

    <jsp:include page="top.jsp"  flush="false"></jsp:include>	
	<div class="stuMainCont" style="height:155px;">
		<div class="stuSubLogo"></div>
	</div>
	<div class="stuCont">
    
	    <div class="stuSubNav">
	    	<div id="imgdiv"><img src="<%=basePath%>chineseschool/images/img.png"/></div>
	    </div>
	    
	    <div class="stuSubCont">
	    	<div>
	            <div id="content" style="width: 680px; margin-left: 15px;margin-top: 20px;"></div>
	        </div>
	        
	    </div>
    
	</div>
    
	<jsp:include page="bottom.jsp"  flush="false"></jsp:include>	
</div>
</body>
</html>
