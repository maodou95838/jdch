<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String header = request.getRequestURI();
if(header!=null){
	header = header.substring(header.lastIndexOf("/")+1);
	header = header.substring(0,header.lastIndexOf("."));
}
String menuId = request.getParameter("menuId");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<%=basePath %>chineseschool/css2/base.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=basePath %>chineseschool/js/jquery-1.9.1.min.js"></script>
</head>
<body>
	<script type="text/javascript">
		$(function(){
			findAllMean1();
			if('home_page'=='<%=header%>'){
				$("#home").hide();
			}
		})
		function findAllMean1(){
			$.post('<%=basePath%>menu_findAllMean.action?languages=1',function(date){
				var index=0;
				var str1 = '';
				for(var i=0;i<date.length;i++){
					//导航栏
					if(date[i].parentId==0){
						str1 += '<div><span><a style="color: #fff" href="<%=basePath%>'+date[i].menuUrl+'?menuId='+date[i].menuId+'">'+date[i].menuName+'</a></span><ul class="navList">';	
							for(var j=0;j<date.length;j++){
								if(date[j].parentId==date[i].menuId){
									str1+='<li  style="list-style:none" ><a href="<%=basePath%>'+date[j].menuUrl+'?menuId='+date[i].menuId+','+date[j].menuId+'">'+date[j].menuName+'</a></li>';
								}
							}
						str1 += '</ul></div>';
						index++;
					}
				}
				//暂时去掉视频功能
				//str1 += '<div><span><a style="color: #fff" href="<%=basePath%>chineseschool/vido.jsp">视频</a></span></div>';
				$('.stuMenu').html(str1);
				dhonload();
			},'json');
		}
		function search(){
			var a = $('#search').val();
			var str='<%=basePath %>chineseschool/search.jsp?content='+a;
			window.location.href=str;
		}
	</script>
	<div class="stuTopCont">
		<i><input name="" id="search" type="text" /><input id="" class="submitbtn" onclick="javascript:search();"/>&nbsp;&nbsp;
<!--		<a href="<%=basePath %>image_getXiangCeByUp.action" target="_blank"><img src="<%=basePath %>chineseschool/images/english.png"/></a>-->
		</i>
		<!-- 快速链接 -->
<!--        <span id="qlink">-->
<!--        	<ul class="linkcont">-->
<!--                <li><a href="<%=basePath %>chineseschool/particulars.jsp?menuId=248">关于我们</a></li>-->
<!--                <li><a href="<%=basePath %>chineseschool/particulars.jsp?menuId=249">招生</a></li>-->
<!--                <li><a href="<%=basePath %>chineseschool/particulars.jsp?menuId=250">学习在XHIS </a></li>-->
<!--                <li><a href="<%=basePath %>chineseschool/particulars.jsp?menuId=251">生活在XHIS </a></li>-->
<!--                <li><a href="<%=basePath %>chineseschool/particulars.jsp?menuId=252">PTA活动</a></li>-->
<!--                <li><a href="<%=basePath %>chineseschool/particulars.jsp?menuId=253">在XHIS工作</a></li>-->
<!--            </ul>-->
<!--        </span>-->
        <span id="home" onclick="window.location='<%=basePath%>image_getXiangCeByUp.action?languages=1'"></span>
	</div>
	<div class="stuMainCont">
	
		<div class="stuMenu stuSubMenu">
        
                                                               
		</div>
		
</body>
</html>

