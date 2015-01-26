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
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/jquery.easyui.min.js"></script>
  </head>
  	
  <body>
  <script type="text/javascript">
  	$(function(){
  		$('body').append('<div id="myWindow" class="easyui-dialog" closed="true"></div>');
  		
  		$('#tt').treegrid({
  			iconCls:'icon-save',
  			url:'<%=path%>/menu_menuList.action',
  			striped: true,		//隔行变色
			fit:true,			//是否自动适应容器大小
		    pagination:false,
			sortOrder: 'asc',
			remoteSort:false,
  			treeField:'menuName',
  			singleSelect:'true',
  			rownumbers: true,
			idField: 'menuId',
  			columns:[[ 
  				{field:'ck',checkbox:true,hidden:true},
				{field:'menuName',title:'导航菜单名称',width:200,formatter:function(value,rowData,rowIndex){
              		  return '<input type="checkbox" id="'+rowData.menuId+'">' + rowData.menuName;
       			 }}, 
				{field:'sort',title:'顺序',width:80,align:'center'}
			]],
			toolbar:'#aa',
			onClickRow:function(index,data){
				var row=$('#tt').treegrid('getSelected');
				if(row)
				{
					var id = row.menuId;
					$('input[type="checkbox"]').attr('checked',false);
					$('#'+id).attr('checked',true);
				}else{
					$('input[type="checkbox"]').attr('checked',false);
				}
			},
			onLoadSuccess:function(data){
				$('#tt').datagrid('autoSizeColumn', 'menuName');
			}
		});
	})
  	
  	
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
          loadingMessage: '数据加载中，请等待....'  
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
  	 function add(){
		showMyWindow('添加顶级菜单', "<%=basePath%>/cmspage/menu_add.jsp",450,300);
     }
      function add2(){
      	var rows = $('#tt').treegrid('getSelections');
		if(rows[0]!=null){
			var sgin = rows[0].sgin;
	      	var menuId = rows[0].menuId;
	      	var parentId = rows[0].parentId;
			if(sgin!=null && sgin==0){             //当选择的是顶级导航
				var name =rows[0].menuName;
				encodeURI(name);
				showMyWindow('添加二级菜单', "<%=basePath%>/cmspage/menu_add2.jsp?parentId="+parentId+"&menuId="+menuId+"&sgin="+sgin+"&name="+name+"&languages="+rows[0].languages,450,300);
			}else if(sgin!=null && sgin==1){		 //当选择的是二级导航
				var aa = $('#tt').treegrid('find',parentId);
				var pName = aa.menuName;
				var mId = aa.menuId;
				var pId = aa.parentId;
				encodeURI(pName);
				showMyWindow('添加三级菜单', "<%=basePath%>/cmspage/menu_add2.jsp?parentId="+pId+"&menuId="+mId+"&sgin=0&name="+pName+"&languages="+rows[0].languages,450,300);
			}else if(sgin!=null && sgin==2){        //当选择的是三级导航
				var aa = $('#tt').treegrid('find',parentId);
				var bb = $('#tt').treegrid('find',aa.parentId);
				var pName = bb.menuName;
				var mId = bb.menuId;
				var pId = bb.parentId
				encodeURI(pName);
				showMyWindow('添加二级菜单', "<%=basePath%>/cmspage/menu_add2.jsp?parentId="+pId+"&menuId="+mId+"&sgin=0&name="+pName+"&languages="+rows[0].languages,450,300);
			}
		}else{
			showMyWindow('添加二级菜单', "<%=basePath%>/cmspage/menu_add2.jsp?",450,300);
		}
     }
     function add3(){
      	var rows = $('#tt').treegrid('getSelections');
		if(rows[0]!=null){
			var sgin = rows[0].sgin;
	      	var menuId = rows[0].menuId;
	      	var parentId = rows[0].parentId;
			var name =rows[0].menuName;
			encodeURI(name);
			if(sgin!=null && sgin==0){             //当选择的是顶级导航
				showMyWindow('添加三级导航菜单', "<%=basePath%>/cmspage/menu_add3.jsp?parentId="+parentId+"&menuId="+menuId+"&sgin="+sgin+"&name="+name+"&languages="+rows[0].languages,450,300);
			}else if(sgin!=null && sgin==1){		 //当选择的是二级导航
				var aa = $('#tt').treegrid('find',parentId);
				var pName = aa.menuName;  //单签选择的二级导航的父名称
				var mId = aa.menuId;		//...............的父id
				var pId = aa.parentId;		//...............的父导航的parentid
				encodeURI(pName);
				showMyWindow('添加三级导航菜单', "<%=basePath%>/cmspage/menu_add3.jsp?pName="+pName+"&parentId="+parentId+"&menuId="+menuId+"&sgin="+sgin+"&name="+name+"&languages="+rows[0].languages,450,300);
			}else if(sgin!=null && sgin==2){        //当选择的是三级导航
				var aa = $('#tt').treegrid('find',parentId);
				var menuId = aa.menuId;
				var name = aa.menuName;
				var parentId = aa.parentId;
				var bb = $('#tt').treegrid('find',aa.parentId);
				var pName = bb.menuName;
				var mId = bb.menuId;
				var pId = bb.parentId
				encodeURI(pName);
				showMyWindow('添加三级导航菜单', "<%=basePath%>/cmspage/menu_add3.jsp?pName="+pName+"&parentId="+parentId+"&menuId="+menuId+"&sgin="+sgin+"&name="+name+"&languages="+rows[0].languages,450,300);
			}
		}else{
			showMyWindow('添加三级导航菜单', "<%=basePath%>/cmspage/menu_add3.jsp",450,300);
		}
     }
      function update(){
  		var ids = [];
		var rows = $('#tt').treegrid('getSelections');
		if(rows.length < 1){
			$.messager.alert('warm tips', '请选择数据!','warning');
		}else{
			var menuId = rows[0].menuId;
			var parentId = rows[0].parentId;
			var menuName = rows[0].menuName;
			cont=encodeURI(menuName);
			var sgin = rows[0].sgin;
			showMyWindow('修改导航菜单',"<%=path%>/cmspage/menu_update.jsp?parentId="+parentId+"&menuId="+menuId+"&sgin="+sgin+"&menuName="+menuName,450,300);
			}
     }
      function del(){
		   var rows = $('#tt').datagrid('getSelections');
			if(rows == ''){
				$.messager.alert("operation tips",'请选择数据!','warning');
			}else{
				if(rows[0].parentId==0){
					$.messager.confirm("operation tips", "导航删除会删除所有导航，您确认删除吗?", function (r) {
						if (r) {
							var id = rows[0].menuId;
							getSelections(id);
						}   
					});
				}else{
					$.messager.confirm("operation tips", "您确认删除数据吗?", function (r) {
						if (r) {
							var id = rows[0].menuId;
							getSelections(id);
						}   
					});
				}
			}
		}
		 //删除所选中的行
      function getSelections(temp){
		var url = "<%=path%>/menu_deleteMenu.action";
		var datas={
			temp:temp
		};
		$.post(url,datas,function (data){
			if(data=='true'){
				$('#tt').treegrid('getPager').pagination('select',1);
				$.messager.alert('warm tips', '操作成功!');
				$('#tt').treegrid('clearSelections');
				reloadDataGrids();
			}else{
				$.messager.alert('warm tips', 'The operation failed, please contact the administrator!');
			}
		 });
	}
  </script>
   <div id="aa">
	<a href="javascript:add()" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加顶级菜单</a>
	<a href="javascript:add2()" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加二级菜单</a>
	<a href="javascript:add3()" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加三级菜单</a>
	<a href="javascript:del()" class="easyui-linkbutton" iconCls="icon-cut" plain="true">删除</a>
	<a href="javascript:update()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a> 
	</div>
    <table id="tt" title="导航菜单">
	</table>
  </body>
</html>
