<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/chineseschool/common.jsp" %>

<!DOCTYPE html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath }/chineseschool/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/chineseschool/js/jquery.1.4.2-min.js"></script>
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



<!-- 页面开始 -->   	
 <div class="headers">
 	<div class="header_k">
    	<div class="logo"></div>
        <div class="search">
        	<div class="tephone">400-026-88888</div>
        	<div class="seachk">        	
            	<input type="text" name="user"  style=" width:203px; height:28px; border: solid 1px #8B6946; float:left;"/>
				<input type="submit" value="搜索" style=" width:50px; height:30px; background:#666; color:#FFF; float:right;"/>				
            </div>
        </div>
        <div class="clear"></div>
    </div>
 </div>
 
 <div class="dh">
	<div class="dh_k">
    	<ul>
        	<a href="#"><li style="background:#C5A787;">首页</li></a>
           	<a href="#"> <li>公司概况</li></a>
            <a href="#"><li>测绘资讯</li></a>
            <a href="#"><li>案例展示</li></a>
            <a href="#"><li>科研设备</li></a>
            <a href="#"><li>联系我们</li></a>
      </ul>   
    </div>
</div> 

<div class="bannerss">
	
    <div class="main">
	<div class="pro-switch">
		<div class="slider">
			<div class="flexslider">
				<ul class="slides">
					<li>
						<div class="img"><img src="${pageContext.request.contextPath }/chineseschool/images2/banner11.jpg" height="346" width="1240" alt="" /></div>
					</li>
					<li>
						<div class="img"><img src="${pageContext.request.contextPath }/chineseschool/images2/banner22.jpg" height="346" width="1240" alt="" /></div>
					</li>
					<li>
						<div class="img"><img src="${pageContext.request.contextPath }/chineseschool/images2/banner33.jpg" height="346" width="1240" alt="" /></div>
					</li>				
				</ul>
			</div>
		</div>
	</div>	
</div>
<script defer src="${pageContext.request.contextPath }/chineseschool/js/lanrenzhijia.js"></script> 
<script type="text/javascript">
    $(function(){
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });
  </script>
    
</div>

<div class="mainss">
	<div class="mainss_k">
    	<div class="notice">
           <div class="notice_bt"><div class="notice_bts"><span class="cfs"><span class="daz">N</span>otice</span>/ 通知公告</div></div>
           <div class="notice_nr">
           		<ul>
                	<li>
                    	<div class="ntisk">1.</div> 
                        <div class="ntiwz"><span class="sbfg">遥感技术应用研究</span><br />利用多源遥感影像研发热变迁.....</div> 
                        <div class="clear"></div>   
                    </li>
                    <li>
                    	<div class="ntisk">2.</div> 
                        <div class="ntiwz"><span class="sbfg">遥感技术应用研究</span><br />利用多源遥感发的影像研变迁.....</div> 
                        <div class="clear"></div>   
                    </li>
                    <li>
                    	<div class="ntisk">2.</div> 
                        <div class="ntiwz"><span class="sbfg">遥感技术应用研究</span><br />利用多源遥感发的影像研变迁.....</div> 
                        <div class="clear"></div>   
                    </li>
                    <div class="clear"></div> 
                </ul>
           </div>
        </div>
        <div class="about">
          <div class="notice_bt">
          <div class="notice_bts"><span class="cfs"><span class="daz">N</span>ynamic</span>/公司动态</div>
           <div class="more">more+</div> 
          </div>
          <div class="notice_nr">
           		<div class="about_ll"><img src="${pageContext.request.contextPath }/chineseschool/images2/huiyi.jpg"/></div>
                <div class="about_rr">
                	<ul>
                    	<li>开展学位与研究生教育工作较早，在....</li>
                        <li>开展学位与研究生教育工作较早，在....</li>
                        <li>开展学位与研究生教育工作较早，在....</li>
                        <li>开展学位与研究生教育工作较早，在....</li>
                        <li>开展学位与研究生教育工作较早，在....</li>
                    </ul>
                </div>
                <div class="clear"></div> 
          </div>
        </div>
        <div class="dongt">
           <div class="notice_bt">
           <div class="notice_bts" ><span class="cfs"><span class="daz">A</span>bout</span>/关于我们</div>
            <div class="more" style="margin-right:10px;">more+</div>     
           </div>
           <div class="notice_nr"><div class="dongt_kk">  <p>西安建筑科技大学建筑勘测研究所是一个以测量专业专家、教授和工程技术人员为主，综合其它院、系的工程地质、建筑结构等关专业。</p><p>该所自创建以来，经过学校和本所全体人员努力奋斗，研究所在科研水、人员为主，综合其它院、系的工程地质、建筑结构等相关专业科研人员，集教学、科研、生，集教学、科研、体的专业技术。，经过学校和本所全体人员努力奋斗</p> </div>  </div>
        </div>
    </div>
</div>


<div class="mainss">
	<div class="mainss_k">
   	  <div class="contatss">
        	<div class="contatss_bt"><img src="${pageContext.request.contextPath }/chineseschool/images2/contabt.jpg"/></div>
            <div class="contatss_nr">
            	<ul>
                	<li>
                    	<div class="cont_zz"><img src="${pageContext.request.contextPath }/chineseschool/images2/tub11.png"/></div>
                        <div class="cont_yy">电话：029-82205813</div>    
                                      
                  </li>
                    <li>
                    	<div class="cont_zz"><img src="${pageContext.request.contextPath }/chineseschool/images2/tub22.png"/></div>
                        <div class="cont_yy">传真：029-82205813</div>  
                      
                    </li>	
                    <li style=" border:none;">
                    	<div class="cont_zz"><img src="${pageContext.request.contextPath }/chineseschool/images2/tub33.png"/></div>
                        <div class="cont_yy">地址：西安市雁塔路13号</div> 
                     
                    </li>
                </ul>
            </div>
      </div>
      <div class="casess">
        	 <div class="notice_bt">
             	<div class="notice_bts">                  
           		  <span class="cfs"><span class="daz">N</span>otice</span>/ 通知公告
                 </div>
                 <div class="more">more+</div>     
              </div>
             <div class="casess_nr">
             	
                <script type="text/javascript">
//js无缝滚动代码
function marquee(i, direction){
	var obj = document.getElementById("marquee" + i);
	var obj1 = document.getElementById("marquee" + i + "_1");
	var obj2 = document.getElementById("marquee" + i + "_2");
	if (direction == "up"){
		if (obj2.offsetTop - obj.scrollTop <= 0){
			obj.scrollTop -= (obj1.offsetHeight + 20);
		}else{
			var tmp = obj.scrollTop;
			obj.scrollTop++;
			if (obj.scrollTop == tmp){
				obj.scrollTop = 1;
			}
		}
	}else{
		if (obj2.offsetWidth - obj.scrollLeft <= 0){
			obj.scrollLeft -= obj1.offsetWidth;
		}else{
			obj.scrollLeft++;
		}
	}
}

function marqueeStart(i, direction){
	var obj = document.getElementById("marquee" + i);
	var obj1 = document.getElementById("marquee" + i + "_1");
	var obj2 = document.getElementById("marquee" + i + "_2");

	obj2.innerHTML = obj1.innerHTML;
	var marqueeVar = window.setInterval("marquee("+ i +", '"+ direction +"')", 20);
	obj.onmouseover = function(){
		window.clearInterval(marqueeVar);
	}
	obj.onmouseout = function(){
		marqueeVar = window.setInterval("marquee("+ i +", '"+ direction +"')", 20);
	}
}
</script>

<div id="marquee1" class="marqueeleft">
	<div style="width:8000px;">
		<ul id="marquee1_1">
			<li>
				<a class="pic" href="#"><img src="${pageContext.request.contextPath }/chineseschool/images2/tt1.jpg"/></a>
				<div class="txt"><a href="#">新科研项目</a></div>
			</li>
			<li>
				<a class="pic" href="#"><img src="${pageContext.request.contextPath }/chineseschool/images2/tt2.jpg"/></a>
				<div class="txt"><a href="#">南方国际大厦</a></div>
			</li>
			<li>
				<a class="pic" href="#"><img src="${pageContext.request.contextPath }/chineseschool/images2/tt1.jpg"/></a>
				<div class="txt"><a href="#">南方国际大厦</a></div>
			</li>
			<li>
				<a class="pic" href="#"><img src="${pageContext.request.contextPath }/chineseschool/images2/tt2.jpg"/></a>
				<div class="txt"><a href="#">南方国际大厦</a></div>
			</li>
            <li>
				<a class="pic" href="#"><img src="${pageContext.request.contextPath }/chineseschool/images2/tt1.jpg"/></a>
				<div class="txt"><a href="#">新科研项目</a></div>
			</li>
			<li>
				<a class="pic" href="#"><img src="${pageContext.request.contextPath }/chineseschool/images2/tt2.jpg"/></a>
				<div class="txt"><a href="#">南方国际大厦</a></div>
			</li>
			<li>
				<a class="pic" href="#"><img src="${pageContext.request.contextPath }/chineseschool/images2/tt1.jpg"/></a>
				<div class="txt"><a href="#">南方国际大厦</a></div>
			</li>
			<li>
				<a class="pic" href="#"><img src="${pageContext.request.contextPath }/chineseschool/images2/tt2.jpg"/></a>
				<div class="txt"><a href="#">南方国际大厦</a></div>
			</li>
            
            
		</ul>
		<ul id="marquee1_2"></ul>
	</div>
</div><!--marqueeleft end-->
<script type="text/javascript">marqueeStart(1, "left");</script>


<!--marqueeleft end-->
<script type="text/javascript">marqueeStart(2, "up");</script>
<!--演示内容结束-->
                
           </div>
        </div>
        <div class="clear"></div> 
    </div>
</div>

<div class="yplink">
	<div class="yplink_k">
    	<div class="yplink_bt">+友情链接+</div>
        <div class="yplink_nr">
        	<ul>
            	<li>西安建筑科技大学</li>
                <li>陕西省测绘地理信息局</li>
                <li>国家测绘地理信息局</li>
                <div class="clear"></div> 
            </ul>
        </div>
    </div>
</div>

<div class="footss">
	<div class="footss_k">
    	<p>版权所有：西安建筑科技大学 | 站点维护：信息网络中心 | 联系邮箱：web@xauat.edu.cn | 陕ICP备05001615 V8.0-2014 </p>
        <p>雁塔校区 地址：西安市碑林区雁塔路中段13号      幸福校区 地址：西安市新城区幸福南路109号      草堂校区 地址：西安市草堂寺景区草寺东路 710311 </p>
        <p>网站所用照片版权归原作者,对所有图片作者和授权人表示感谢，对于个别未能联系上的，如有问题，请及时联系网站管理员  </p>
    </div>
</div>

</body>
</html>

