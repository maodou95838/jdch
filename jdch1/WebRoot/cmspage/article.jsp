<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'tree_list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/style.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>js/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>js/themes/icon.css">
	<link rel="stylesheet" href="<%=basePath%>js/kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="<%=basePath%>js/kindeditor/plugins/code/prettify.css" />
	<script type="text/javascript"  src="<%=basePath%>js/kindeditor/kindeditor.js"></script>
	<script type="text/javascript"  src="<%=basePath%>js/kindeditor/lang/en.js"></script>
	<script type="text/javascript"  src="<%=basePath%>js/kindeditor/plugins/code/prettify.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/jquery.uploadPreview.js"></script>
  </head>
  	
  <body>
  <script type="text/javascript">
  	$(function(){
  		$('body').append('<div id="myWindow" class="easyui-dialog" closed="true"></div>');
  		$('body').append('<div id="myWindow2" class="easyui-dialog" closed="true"></div>');
  		$('#tt').treegrid({
  			iconCls:'icon-save',
  			url:'<%=path%>/article_showMenuList.action',
  			striped: true,		//隔行变色
			fit:true,			//是否自动适应容器大小
		    pagination:false,
			sortOrder: 'asc',
			remoteSort:false,
  			treeField:'menuName',
  			rownumbers: true,
			idField: 'menuId',
  			columns:[[ 
  				//{field:'ck',checkbox:true},
				{field:'menuName',title:'导航名称',width:200,align:'left'}, 
				{field:'articleList',title:'文章',width:150,align:'center',formatter: function(value,row,index){
					var menuName=encodeURI(encodeURI(row.menuName));
					return '<a href="javascript:open(\'文章分类-'+row.menuName+'\',\'<%=basePath%>cmspage/article_list.jsp?id='+row.menuId+'&name='+menuName+'\');">文章列表</a>'
					}
				},
				{field:'addArticle',title:'添加',width:150,align:'center',formatter: function(value,row,index){
					var menuName=encodeURI(encodeURI(row.menuName));
					return '<a href="javascript:open(\'添加文章\',\'<%=basePath%>cmspage/article_add.jsp?id='+row.menuId+'&name='+menuName+'\');">添加文章</a>'
					}
				}
			]],
			onLoadSuccess:function(data){
				$('#tt').datagrid('autoSizeColumn', 'menuName');
			}
  		});
  	})
  	 function open(str,url){
  	 	var height=$(document).height()-50;
  	 	if($(document).height()>750){
  	 		height=650;
  	 	}
		showMyWindow(str,url,850,height);
     }
 	//打开窗口
 	function showMyWindow(title, href, width, height, modal, minimizable, maximizable) {
      $('#myWindow').window({
          title: title,   
          width: width === undefined ? 600 : width,   
          height: height === undefined ? 400 : height,   
          href:href,
          modal: modal === undefined ? true : modal,  
          minimizable: minimizable === undefined ? false : minimizable,
          maximizable: maximizable === undefined ? false : maximizable,
          shadow: false,  
          cache: false,  
          closed: false,  
          collapsible: false,  
          resizable: false,  
          loadingMessage: 'Loading data, please wait for a while....'  
      });  
  	}
  	//刷新列表
	function reloadDataGrids(){
	   $('#tt').treegrid('reload');
	}
  	
  	//关闭窗口
  	function closeMyWindow(winName) {
  	   $('#' + winName + '').window('close');
  	}	
  </script>
    <table id="tt" title="文章分类" class="easyui-treegrid">
	</table>
  </body>
</html>
