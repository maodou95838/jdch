<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	String menuId = request.getParameter("id");
	String menuName = request.getParameter("name");
%>
<html>
	<head>
		<title>My JSP 'tree_list.jsp' starting page</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/style.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>js/themes/default/easyui.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>js/themes/icon.css">
		<script type="text/javascript" src="<%=basePath%>js/json2.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.0.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/jquery.easyui.min.js"></script>
	</head>
	<body>
		<script type="text/javascript">
  		$(function(){
			getshopfrontlist();
		});
		function getshopfrontlist(){
			$('#ss').datagrid({
			 	url:'<%=path%>/article_articleList.action?menuId='+<%=menuId%>,
			 	rownumbers:true,	//行号
			 	striped: true,		//隔行变色
			 	fit:true,			//是否自动适应容器大小
			 	pagination:true,
				sortOrder: 'asc',
				remoteSort:false,
				singleSelect:'true',
				columns:[[
					{field:'ck',checkbox:true},
					{field:'articleId',title:'导航',width:100,align:'center',formatter: function(value,row,index){
						return '<%=menuName%>';
					}},
					{field:'articleTitle',title:'文章标题',width:280,align:'center'},
					{field:'articleDate',title:'创建日期',width:170,align:'center'},
					{field:'shows',title:'是否显示',width:150,align:'center',formatter: function(value,row,index){
						var zt='';
						if(value==1){
							zt='已显示';
						}
						else{
							zt='<a href="javascript:updateShows('+row.articleId+','+row.menuId+',\'shows\');">显示</a>';
						}
						return zt;
					}},
					{field:'rolls',title:'是否滚动',width:150,align:'center',formatter: function(value,row,index){
						var zt='';
						if(value==1){
							zt='已滚动 ';
						}
						else{
							zt='<a href="javascript:updateShows('+row.articleId+','+row.menuId+',\'rolls\');">滚动</a>';
						}
						return zt;
					}}
				]],
				toolbar:'#aa',
				onLoadSuccess:function(data){
					$('#ss').datagrid('autoSizeColumn', 'articleId');
				}
			});
		}
		function updateShows(articleId,menuId,setCloumn){
			var dates = {
				articleId:articleId,
				menuId:menuId,
				setCloumn:setCloumn
			};
			$.post('<%=path%>/article_updateByColumn.action',dates,function (data){
				if(data){
					$.messager.alert('warm tips', 'The success of the operation!');
					reloadDataGrids();
				}else{
					$.messager.alert('warm tips', 'The operation failed, please contact the administrator!');
				}
			 },'json');
		}
		//刷新列表
	  	function reloadDataGrids(){
		 	$('#ss').datagrid('reload');
	 	}
	 	
	 	//打开窗口
	 	function showMyWindow2(title, href, width, height, modal, minimizable, maximizable) {
	      $('#myWindow2').window({
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
	          loadingMessage: '加载数据, 请等待....'  
	      });  
	  	}
	  	
	  	//关闭窗口
	  	function closeMyWindow(winName) {
	  	   $('#' + winName + '').window('close');
	  	}
		function sear(value,name){
			var queryParams = $('#ss').datagrid('options').queryParams;
		    if(name=='articleTitle'){
			    $('#ss').datagrid('options').queryParams = {
                    'articleTitle':value
                 };
		    }
		     if(name=='articleDate'){
			    $('#ss').datagrid('options').queryParams = {
                    'articleDate':value
                 };
		    }
       	   // 刷新列表数据
       	   $('#ss').datagrid('getPager').pagination('select',1);
       	   $('#ss').datagrid('reload');
		}
		function del(){
			var rows = $('#ss').datagrid('getSelections');
			if(rows == ''){
				$.messager.alert("operation tips",'请选择文章','warning');
				return;
			}
			$.messager.confirm("operation tips", "确认删除？", function (r) {
				 if (r) {
				     getSelections();
				  }   
			});
		}
		function addart(){
			var menuName=encodeURI('<%=menuName%>');
			var height=$(document).height()>600?$(document).height()-50:$(document).height()-50;
	  	 	var height=$(document).height()-50;
	  	 	if($(document).height()>750){
	  	 		height=650;
	  	 	}
			showMyWindow2('Add Article','<%=basePath%>cmspage/article_add.jsp?id=<%=menuId%>&name='+menuName+'&jsp=list',850,height);
		}
		function update(){
			var ids = [];
			var rows = $('#ss').datagrid('getSelections');
			if(rows.length < 1){
				$.messager.alert('warm tips', '请选择要修改的文章','warning');
				return;
			}
			if(rows.length > 1){
				$.messager.alert('warm tips', '只能选中一篇文章','warning');
			}else{
				var articleId = rows[0].articleId;
				var menuName=encodeURI('<%=menuName%>');
				var height=$(document).height()-50;
		  	 	if($(document).height()>750){
		  	 		height=650;
		  	 	}
				showMyWindow2('文章修改','<%=path%>/cmspage/article_update.jsp?articleId='+articleId+'&menuName='+menuName+'&menuId=<%=menuId%>',850,height);
			}
		}
		function view(){
			var ids = [];
			var rows = $('#ss').datagrid('getSelections');
			if(rows.length < 1){
				$.messager.alert('warm tips', '请选择文章!','warning');
				return;
			}
			if(rows.length > 1){
				$.messager.alert('warm tips', '预览只能选择一片文章','warning');
			}else{
				var articleId = rows[0].articleId;
				var menuName=encodeURI('<%=menuName%>');
				var height=$(document).height()>600?$(document).height()-50:$(document).height()-50;
		  	 	if($(document).height()>750){
		  	 		height=650;
		  	 	}
				showMyWindow2('文章预览','<%=basePath%>cmspage/article_xq.jsp?articleId='+articleId+'&menuName='+menuName,850,height);
			}
		}
		//删除所选中的行
		function getSelections(){
			var ids = [];
			var rows = $('#ss').datagrid('getSelections');
			for(var i=0;i<rows.length;i++){
				ids.push(rows[i].articleId);
				ids.join("','");
			}
			var url = "<%=path%>/article_deleteArticle.action";
			var datas={
				ids:ids+""
			};
			$.post(url,datas,function (data){
				if(data){
					$.messager.alert('warm tips', '删除成功!');
					reloadDataGrids();
				}else{
					$.messager.alert('warm tips', '操作失败，请联系管理员!');
				}
			 });
		}
</script>
		<div class="easyui-layout" style="width: 95%; height: 95%;" fit="true">
			<div region="center" style="background: #fafafa; height: 60%;" title="文章列表">
				<table id="ss"></table>
			</div>
		</div>
		<div id="aa">
			<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="addart();">增加</a> 
			<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-tip" plain="true" onclick="view();">预览</a> 
			<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="update();">修改</a> 
			<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cut" plain="true" onclick="del();">删除</a> 
			<input id="texts" class="easyui-searchbox" style="width: 300px;" data-options="searcher:sear,prompt:'请输入查询内容',menu:'#searchs'" />
		</div>
   		<div id="searchs" style="width: 120px;">
			<div data-options="name:'articleTitle',iconCls:'icon-ok'">标题</div>
			<div data-options="name:'articleDate'">创建时间</div>
		</div>
	</body>
</html>