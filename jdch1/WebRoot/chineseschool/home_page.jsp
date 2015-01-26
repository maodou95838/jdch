<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/chineseschool/common.jsp" %>

<!DOCTYPE html>
<head>

</head>

	<script type="text/javascript">
		$(function(){
			$.post('<%=basePath%>image_getShowTime.action',function(data){
				var times=3000;
				if(data!='null'){
					times=data+"000";
				}
				jQuery(function ($) {
				    if ($(".slide-pic").length > 0) {
				        var defaultOpts = { interval: times, fadeInTime: 300, fadeOutTime: 200 };
				        var _titles = $("ul.slide-txt li");
				        var _titles_bg = $("ul.op li");
				        var _bodies = $("ul.slide-pic li");
				        var _count = _titles.length;
				        var _current = 0;
				        var _intervalID = null;
				        var stop = function () { window.clearInterval(_intervalID); };
				        var slide = function (opts) {
				            if (opts) {
				                _current = opts.current || 0;
				            } else {
				                _current = (_current >= (_count - 1)) ? 0 : (++_current);
				            };
				            _bodies.filter(":visible").fadeOut(defaultOpts.fadeOutTime, function () {
				                _bodies.eq(_current).fadeIn(defaultOpts.fadeInTime);
				                _bodies.removeClass("cur").eq(_current).addClass("cur");
				            });
				            _titles.removeClass("cur").eq(_current).addClass("cur");
				            _titles_bg.removeClass("cur").eq(_current).addClass("cur");
				        };
				        var go = function () {
				            stop();
				            _intervalID = window.setInterval(function () { slide(); }, defaultOpts.interval);
				        };
				        var itemMouseOver = function (target, items) {
				            stop();
				            var i = $.inArray(target, items);
				            slide({ current: i });
				        };
				        _titles.hover(function () { if ($(this).attr('class') != 'cur') { itemMouseOver(this, _titles); } else { stop(); } }, go);
				        _bodies.hover(stop, go);
				        go();
				    }
				});
			});
		});
	</script>


<body>
<div class="stuWarp">
		<!-- 头部 -->
		<jsp:include page="top.jsp"  flush="false"></jsp:include>	
		
    	<!-- 代码 开始 -->
        <div class="slides">
            <ul class="slide-pic">
                <c:forEach items="${imgList}" var="img">
	   				<!-- <li class="cur"><img src="<%=basePath%>upfile/${img.imgPath}" /></li> -->
	   				<li class="cur"><img src="<%=basePath%>upfile/${img.imgPath}" /></li>
	    		 </c:forEach>
            </ul>
            
            <ul class="slide-li op">
                <li class="cur"></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
            
            <ul class="slide-li slide-txt">
            	 <c:forEach items="${imgList}" var="img">
	                <li><a href="#"></a></li>
	    		 </c:forEach>
            </ul>
        </div>
    	<!-- 代码 结束 -->

        <div class="stuLogo"></div>	
        	
	</div>
	
	<div class="stuList">
    <script type="text/javascript">
		$(function(){
			$.post("<%=basePath%>article_getArtListByRollsHome.action?languages=1", function(data){
				if(data!=''){
					var str='';
					for ( var i = 0; i < data.length; i++) {
						str+='<li><a href="<%=basePath%>'+data[i].menuUrl+'?menuId='+data[i].menuId+'">'+data[i].articleTitle+'</a></li>';
					}
					$('#news').html(str);
				}
 			},'json');
		
		
		});    
    
    </script>
    
    <div id="scrollid">
        <ul id=news>
        </ul>
    </div>
    
	</div>
	<!-- 底部 -->
		<jsp:include page="bottom.jsp"  flush="false"></jsp:include>
</div>
</body>
</html>

