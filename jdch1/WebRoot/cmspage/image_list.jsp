<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	String menuId = request.getParameter("id");
	String menuName = new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8");
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
		<script type="text/javascript" src="<%=basePath%>js/locale/easyui-lang-zh_CN.js"></script>
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
					columns:[[
						{field:'ck',checkbox:true},
						{field:'<%=menuName%>',title:'The navigation',width:100,align:'center'},
						{field:'articleTitle',title:'article title',width:100,align:'center'},
						{field:'articleDate',title:'Create Date',width:200,align:'center'}
					]],
					toolbar:'#aa'
				});
			}
			
			//刷新列表
		  	function reloadDataGrids(){
			 	$('#ss').datagrid('reload');
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
		  	
		  	//关闭窗口
		  	function closeMyWindow(winName) {
		  	   $('#' + winName + '').window('close');
		  	}
		  	$(function () {
		      	$('body').append('<div id="myWindow" class="easyui-dialog" closed="true"></div>');
		  	});

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
					$.messager.alert("operation tips",'Please select the rows to delete!','warning');
					return;
				}
				$.messager.confirm("operation tips", "Are you sure you want to delete the selected data?", function (r) {
					 if (r) {
					     getSelections();
					  }   
				});
			}
			function update(){
				var ids = [];
				var rows = $('#ss').datagrid('getSelections');
				if(rows.length < 1){
					$.messager.alert('warm tips', 'Please select the rows to be modified!','warning');
					return;
				}
				if(rows.length > 1){
					$.messager.alert('warm tips', 'Change can only choose a record!','warning');
				}else{
					var articleId = rows[0].articleId;
					showMyWindow('Update Article',"<%=path%>/cmspage/article_update.jsp?articleId="+articleId,900,650);
							}
			}
			function view(){
				alert("viow");
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
						$.messager.alert('warm tips', 'deletion succeeded!');
						reloadDataGrids();
					}else{
						$.messager.alert('warm tips', 'The operation failed, please contact the administrator!');
					}
				 });
			}
</script>
		<div class="easyui-layout" style="width: 95%; height: 95%;" fit="true">
			<div region="center" style="width: 200px;" style="width:95%;height:95%;" split="false">
				<div class="easyui-layout" style="width: 100%; height: 100%;" id="lay_01">
					<div region="center" style="background: #fafafa; height: 60%;" title="Article list">
						<table id="ss"></table>
					</div>
				</div>
			</div>
		</div>
		<div id="aa">
			<a href="javascirpt:void(0)" class="easyui-linkbutton" iconCls="icon-tip" plain="true" onclick="view();">view</a> 
			<a href="javascirpt:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="update();">modify</a> 
			<a href="javascirpt:void(0)" class="easyui-linkbutton" iconCls="icon-cut" plain="true" onclick="del();">delete</a> 
			<input id="texts" class="easyui-searchbox" style="width: 300px;" data-options="searcher:sear,prompt:'Please enter the information ',menu:'#searchs'" />
		</div>
   		<div id="searchs" style="width: 120px;">
			<div data-options="name:'articleTitle',iconCls:'icon-ok'">article title</div>
			<div data-options="name:'articleDate'">Create Date</div>
		</div>
	</body>
</html>