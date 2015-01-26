<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/chineseschool/common.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<script type="text/javascript">
	$(function(){
		findAllMean();
		findArticleById();
	})
	function findAllMean(){
		var menu = '<%=menuId%>';
		var menuId = menu.split(',');
		$.post('<%=basePath%>menu_findAllMean.action?languages=1',function(date){
			var index=0;
			var str1 = '';
			var str2 = '<ul>';
			var dh1 = '';
			var dh2 = '';
			var dh3 = '';
			for(var i=0;i<date.length;i++){
				if(date[i].menuId==menuId[0]){
					str2 = '<h2 class="stuLeftTit">'+date[i].menuName+'</h2>';
				}
			}
			for(var i=0;i<date.length;i++){
				//导航栏
				if(date[i].parentId==0){
					str1 += '<div style="width:90px" onmousemove="move('+index+')" onmouseout="out('+index+')"><a style="color: #fff" href="<%=basePath%>'+date[i].menuUrl+'?menuId='+date[i].menuId+'">'+date[i].menuName+'</a><ul class="navList">';
						for(var j=0;j<date.length;j++){
							if(date[j].parentId==date[i].menuId){
								str1+='<li><a href="<%=basePath%>'+date[j].menuUrl+'?menuId='+date[i].menuId+','+date[j].menuId+'">'+date[j].menuName+'</a></li>';
							}
						}
					str1 += '</ul></div>';
					index++;
				}

				//文章左上角链接
				if(date[i].menuId==menuId[0] && menuId.length==1){
					dh1 = '&nbsp;>&nbsp;'+date[i].menuName;
				}
				else if(date[i].menuId==menuId[0] && menuId.length==2){
					dh1 = '&nbsp;>&nbsp;<a style="color: #513414;text-decoration:underline;" href="<%=basePath%>'+date[i].menuUrl+'?menuId='+date[i].menuId+'">'+date[i].menuName+'</a>';
				}
				else if(date[i].menuId==menuId[0] && menuId.length==3){
					dh1 = '&nbsp;>&nbsp;<a style="color: #513414;text-decoration:underline;" href="<%=basePath%>'+date[i].menuUrl+'?menuId='+date[i].menuId+'">'+date[i].menuName+'</a>';
				}
				//点击一级菜单，所展示的页面左侧二级导航
				if(menuId.length==1 && date[i].parentId==menuId[0]){
					str2 += '<li><a href="<%=basePath%>'+date[i].menuUrl+'?menuId='+menuId[0]+','+date[i].menuId+'">'+date[i].menuName+'</a></li>';
				}else if(menuId.length!=1 && date[i].parentId==menuId[0]){
					if(date[i].menuId==menuId[1]){
						str2 += '<li class="stuTreeSelected"><a href="<%=basePath%>'+date[i].menuUrl+'?menuId='+menuId[0]+','+date[i].menuId+'"';
					}else{
						str2 += '<li ><a href="<%=basePath%>'+date[i].menuUrl+'?menuId='+menuId[0]+','+date[i].menuId+'"';
					}
					
					if(date[i].menuId==menuId[1] && menuId.length==2){
					//	str2 +=' class="stuTreeSelected" ';
						dh2 = '&nbsp;>&nbsp;'+date[i].menuName;
					}else if(date[i].menuId==menuId[1] && menuId.length==3){
						dh2 = '&nbsp;>&nbsp;<a style="color: #694a28;text-decoration:underline;" href="<%=basePath%>'+date[i].menuUrl+'?menuId='+menuId[0]+','+date[i].menuId+'">'+date[i].menuName+'</a>';
					}
					str2 += '>'+date[i].menuName+'</a></li>';
					if(date[i].menuId==menuId[1]){
						str2 += '<div class="stuSubNavList">';
						for(var j=0;j<date.length;j++){
							if(date[j].parentId==menuId[1]){
								str2 += '<a href="<%=basePath%>'+date[j].menuUrl+'?menuId='+menuId[0]+','+date[i].menuId+','+date[j].menuId+'"';
								if(date[j].menuId==menuId[2] && menuId.length==3){
									str2 +=' class="subNavSelect" ';
									dh3 = '&nbsp;>&nbsp;'+date[j].menuName;
								}
								str2 += '>'+date[j].menuName+'</a>';
							}
						}
						str2 += '</div>';
					}
				}
			}
			//$('#nav').html(str1);
			$('.stuSubTree').html(str2);
			var lujing= '<h6 class="subNav"><a href="<%=basePath%>image_getXiangCeByUp.action?languages=1"><img src="images2/hier_home.gif"/></a>'+dh1+dh2+dh3+'</h6>';
			$('#lujing').html(lujing);
		},'json');
	}
	function findArticleById(){
		var menu = '<%=menuId%>';
		var menuId = menu.split(',');
		$.post('<%=basePath%>article_findArticleById.action?menuId='+menuId[menuId.length-1],function(date){
			var str='';
			var page = '';
						var contents = '';
						if (date != null) {
							$('#title')
									.html(
											'<h3 class="subTitle">' + date.articleTitle + '</h3>');
							contents = date.articleContent.split('$*$');
							page = contents.length;
							if (page > 1) {
								$('#content')
										.html(
												contents[0]
														+ "<div style='height:50px;'></div><div><div style=' color:#0000FF;width:50%;float:left;text-align:right; '><input id='hf001' type='hidden' /> <input style=' color:#0000FF ;' onclick='pagejian()'  type='button' value='上一页'/></div><div style='color:blue;width:50%;float:left;'><input id='hf002' type='hidden'  />&nbsp;&nbsp;&nbsp;&nbsp; <input style=' color:#0000FF ;' onclick='pagejia()'  type='button' value='下一页'/></div></div>");
								var hf001 = document.getElementById("hf001");
								var hf002 = document.getElementById("hf002");
								hf001.value = 1;
								hf002.value = 1;

							}
							if (page == 1) {

								$('#content').html(date.articleContent);
							}
				if(date.articleImg!=''){
					$('#imgdiv').html('<img src="<%=basePath%>upfile/'+date.articleImg+'" style="width:240px;height:180px;"></img>');
					$('#imgdiv').show();
				}
			}
		},'json');
	}
	function pagejia() {
	var menu = '<%=menuId%>';
	var menuId = menu.split(',');
	$
			.post(
					'<%=basePath%>article_findArticleById.action?menuId=' + menuId[menuId.length - 1],
					function f1(date) {
						var str = '';
						var page = '';
						var nnmm = 0;
						var contents = '';
						if (date != null) {
							$('#title')
									.html(
											'<h3 class="subTitle">' + date.articleTitle + '</h3>');
							contents = date.articleContent.split('$*$');
							page = contents.length;
							if (page > 1) {
								nnmm = document.getElementById("hf002").value;
								if (nnmm == page) {
									$('#content')
											.html(
													contents[nnmm - 1]
															+ "<div style='height:50px;'></div><div><div style='color:blue; width:50%;float:left;text-align:right; '><input id='hf001' type='hidden' /> <input style=' color:#0000FF ;' onclick='pagejian()'  type='button' value='上一页'/></div><div style='color:blue;width:50%;float:left;'><input id='hf002' type='hidden'  />&nbsp;&nbsp;&nbsp;&nbsp; <input style=' color:#0000FF ;' onclick='pagejia()'  type='button' value='下一页'</div></div>");
								}
								if (nnmm < page) {
									$('#content')
											.html(
													contents[nnmm]
															+ "<div style='height:50px;'></div><div><div style='color:blue; width:50%;float:left;text-align:right; '><input id='hf001' type='hidden' /> <input style=' color:#0000FF ;' onclick='pagejian()'  type='button' value='上一页'/></div><div style='color:blue;width:50%;float:left;'><input id='hf002' type='hidden'  />&nbsp;&nbsp;&nbsp;&nbsp; <input style=' color:#0000FF ;' onclick='pagejia()'  type='button' value='下一页'</div></div>");
								}
								var hf001 = document.getElementById("hf001");
								var hf002 = document.getElementById("hf002");
								if (nnmm <= page) {
									hf001.value = ++nnmm;
									hf002.value = nnmm++;
								}
								if (nnmm > page) {
									hf001.value = page;
									hf002.value = page;
								}
							}
							if (page == 1) {

								$('#content').html(date.articleContent);
							}

							if (date.articleImg != '') {
								$('#imgdiv')
										.html(
												'<img src="<%=basePath%>upfile/' + date.articleImg + '" style="width:240px;height:180px;"></img>');
								$('#imgdiv').show();
							}
						}
					}, 'json');
}
function pagejian() {
	var menu = '<%=menuId%>';
	var menuId = menu.split(',');
	$
			.post(
					'<%=basePath%>article_findArticleById.action?menuId=' + menuId[menuId.length - 1],
					function f1(date) {
						var str = '';
						var page = '';
						var nnmm = 0;
						var contents = '';
						if (date != null) {
							$('#title')
									.html(
											'<h3 class="subTitle">' + date.articleTitle + '</h3>');
							contents = date.articleContent.split('$*$');
							page = contents.length;
							if (page > 1) {
								nnmm = document.getElementById("hf002").value;
								if (nnmm - 2 < 0) {
									$('#content')
											.html(
													contents[0]
															+ "<div style='height:50px;'></div><div><div style='color:blue; width:50%;float:left;text-align:right; '><input id='hf001' type='hidden' /><input style=' color:#0000FF ;' onclick='pagejian()'  type='button' value='上一页'/></div><div style='color:blue;width:50%;float:left;'><input id='hf002' type='hidden'  />&nbsp;&nbsp;&nbsp;&nbsp; <input style=' color:#0000FF ;' onclick='pagejia()'  type='button' value='下一页'</div></div>");
								}
								if (nnmm - 2 >= 0) {

									$('#content')
											.html(
													contents[nnmm - 2]
															+ "<div style='height:50px;'></div><div><div style='color:blue; width:50%;float:left;text-align:right; '><input id='hf001' type='hidden' /> <input style=' color:#0000FF ;' onclick='pagejian()'  type='button' value='上一页'/></div><div style='color:blue;width:50%;float:left;'><input id='hf002' type='hidden'  />&nbsp;&nbsp;&nbsp;&nbsp; <input style=' color:#0000FF ;' onclick='pagejia()'  type='button' value='下一页'</div></div>");
								}
								var hf001 = document.getElementById("hf001");
								var hf002 = document.getElementById("hf002");
								if ((nnmm - 1) <= 1) {
									hf001.value = 1;
									hf002.value = 1;
								}
								if ((nnmm - 1) > 1) {
									hf001.value = nnmm - 1;
									hf002.value = nnmm - 1;
								}
							}
							if (page == 1) {

								$('#content').html(date.articleContent);
							}

							if (date.articleImg != '') {
								$('#imgdiv')
										.html(
												'<img src="<%=basePath%>upfile/' + date.articleImg + '" style="width:240px;height:180px;"></img>');
								$('#imgdiv').show();
							}
						}
					}, 'json');
}
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
	    	<div id="imgdiv" style="display: none;"></div>
	    	<ul class="stuSubTree">
	       		<!-- 
	       		<h2 class="stuLeftTit">About Us</h2>
	            <li><a href="javascript:void()">Head of School</a></li>
	                <div class="stuSubNavList">
	                    <a href="javascript:void(0)">dfdfdf</a>
	                    <a href="javascript:void(0)">fdfdfdf</a>
	                    <a href="javascript:void(0)">dfdfdfd</a>
	                </div>
	            <li><a href="javascript:void()">ISP Today</a></li>
	                <div class="stuSubNavList">
	                    <a href="javascript:void(0)">aaa</a>
	                    <a href="javascript:void(0)">bbb</a>
	                    <a href="javascript:void(0)">bbbbb</a>
	                </div>
	            <li><a href="javascript:void()">Board of Trustees</a></li>
	            <li><a href="javascript:void()">History & Mission</a></li>
	          	<li><a href="javascript:void()">Contact Information & Directory</a></li>
	            <li><a href="javascript:void()">Facilities</a></li>
	            <li><a href="javascript:void()">Virtual Campus Tour</a></li>
	             -->
	        </ul>
	        
	        <div></div>
	        
	    </div>
	    
	    <div class="stuSubCont">
	    
	    	<div class="stuSubBox">
	        	<div id="lujing"></div>
	            <div id="title"></div>
	            <div id="content" style="width: 680px; margin-left: 15px;"></div>
	        </div>
	        
	    </div>
    
	</div>
    
	<jsp:include page="bottom.jsp"  flush="false"></jsp:include>	
</div>
</body>
</html>
