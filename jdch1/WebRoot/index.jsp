<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>网站后台</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/default.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>js/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>js/themes/icon.css">
    <script type="text/javascript" src="<%=basePath%>js/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/locale/easyui-lang-en.js"></script>
   
<script>
	function timer(){ 
		day = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
        var time=new Date();  
        var hours = time.getHours();
        var minutes = time.getMinutes();
        var secibds = time.getSeconds();
        var fullyear = time.getFullYear();
        var month = time.getMonth()+1;
        var date = time.getDate();
        if(hours<10){
        	hours="0"+hours;
        }
        if(minutes<10){
        	minutes="0"+minutes;
        }
        if(secibds<10){
        	secibds="0"+secibds;
        }
        if(month<10){
        	month="0"+month;
        }
        if(date<10){
        	date="0"+date;
        }
        var ytime = day[time.getDay()]+" "+hours + ":" + minutes + ":" + secibds+"  "+ fullyear + "-" +month + "-" + date;
        document.getElementById('times').innerHTML=(ytime);  
    }  
    setInterval("timer()", 1000);
	
	$(function(){
	  $.post('<%=basePath%>left_findLeftTree.action',function(date){
	  		var ca='';
	  		for(var i=0;i<date.length;i++){
	  			ca+='<li><div><span class=\"icon icon-sys\">&nbsp;</span><a href="javascript:Open(\''+date[i].name+'\',\''+date[i].url+'\')">'+date[i].name+'</a></div></li>';
	  		}
	  		$('#navlist').html(ca);
	  },'json')
	  
	  //绑定tabs的右键菜单
	  $("#tabs").tabs({
	    onContextMenu:function(e,title){
	      e.preventDefault();
	      $('#tabsMenu').menu('show', {  
	        left: e.pageX,  
	        top: e.pageY  
	      }).data("tabTitle",title);
	    }
	  });
	  
	  //实例化menu的onClick事件
	  $("#tabsMenu").menu({
	    onClick:function(item){
	      CloseTab(this,item.name);
	    }
	  });
	  
	  //几个关闭事件的实现
	  function CloseTab(menu,type){
	    var curTabTitle = $(menu).data("tabTitle");
	    var tabs = $("#tabs");
	  
	    if(type === "close"){
	       tabs.tabs("close",curTabTitle);
	      return;
	    }
	    
	    var allTabs = tabs.tabs("tabs");
	    var closeTabsTitle = [];
	    
	    $.each(allTabs,function(){
	      var opt = $(this).panel("options");
	      if(opt.closable && opt.title != curTabTitle && type === "Other"){
	        closeTabsTitle.push(opt.title);
	      }else if(opt.closable && type === "All"){
	        closeTabsTitle.push(opt.title);
	      }
	    });
	    
	    for(var i = 0;i<closeTabsTitle.length;i++){
	      tabs.tabs("close",closeTabsTitle[i]);
	    }
	   }
	/*   $('#tabs').tabs({
			tools:[{
				iconCls:'icon-add',
				handler: function(){
					addTab();
				}
			},{
				iconCls:'icon-save',
				handler: function(){
					alert('save');
				}
			}]
		});
		var index = 0;
	  	function addTab(){
			index++;
			$('#tabs').tabs('add',{
				title:'New Tab ' + index,
				content:'Tab Body ' + index,
				iconCls:'icon-add',
				closable:true
			});
		}*/
	});
	 
	  //在右边center区域打开菜单，新增tab
	  function Open(text,url){
	  	var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
	    if($("#tabs").tabs('exists',text)){
	    	$('#tabs').tabs('select', text);
	    	var current_tab = $('#tabs').tabs('getSelected');
	    	$('#tabs').tabs('update',{  
			     tab:current_tab,  
			     options : {
			     	  title:text,
			     	  closable:true,
			          content : content
			     }
			});
	    }else{
	      $('#tabs').tabs('add', {
	        title:text,
	        closable:true,   //tabs上的关闭按钮
	        content:content  //不加此属性，子窗口不会加载JS/CSS
	      });
	    }
	  }
	  function tuichu(){
	  	   $.messager.defaults = { ok: "log off", cancel: "cancel" };
	  	   $.messager.confirm('prompted', 'Are you exit?', function(r) {
       	       if (r) {
                   location.href = '<%=basePath%>login_tuichu.action';
               }
           });
	  }
</script>
  </head>
  
  <body style="margin: 1px; height:100%;">

	<div class="easyui-layout" data-options="fit:true">
		<div region="north" style="overflow:hidden;height:40px;padding-top:10px;padding-right: 15px;" >
			<div id="top" align="right">
				<label id="times"></label>
				&nbsp;
				<c:if test="${sessionScope.cmsAdminUser.adminName==null}">
					<label>please login</label>
				</c:if>
				<c:if test="${sessionScope.cmsAdminUser.adminName!=null}">
					欢迎！<label style="color: red;">${sessionScope.cmsAdminUser.adminName}</label>
				</c:if>
				
				<a href="javascript:void(0)" onclick="tuichu()">【退出】</a>
			</div>
		</div>
		<div region="west" split="true" title="功能区" style="width:200px;">
			<ul id="navlist" class="navlist" data-options="fit:true"></ul>
		</div>
		
		<div region="center" style="background:#fafafa;">
			<div id="tabs" data-options="fit:true">
				<div title="工作区">
					欢迎！！！！
				</div>
			</div>
		</div>
	<div id="tabsMenu" class="easyui-menu" style="width:120px;">  
	    <div name="close">off</div>  
	    <div name="Other">off other</div>  
	    <div name="All">off all</div>
 	</div>
  </body>
</html>
