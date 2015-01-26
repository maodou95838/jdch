<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/chineseschool/common.jsp" %>

<%
	String content = request.getParameter("content")==null?"":request.getParameter("content").trim();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript">
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
	    
	    <div class="stuSubCont" style="height: 410px;">
	    	<div>
	            <div id="content" align="center" style="width:722px;">
	            	<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="722" height="400">
						<param name="movie" value="<%=basePath %>vido/movie.swf">
						<param name="quality" value="high">
						<embed src="<%=basePath %>vido/movie.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="722" height="400">
						</embed>
					</object>         
            	</div>
	        </div>
	    </div>
	</div>
    
	<jsp:include page="bottom.jsp"  flush="false"></jsp:include>	
</div>
</body>
</html>
