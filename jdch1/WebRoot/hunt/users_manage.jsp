<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'users_manage.jsp' starting page</title>
    
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
    <script type="text/javascript" src="<%=basePath %>js/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript">
    	$(function(){
    		getUsers();
    	})
    	function reloadUsm(){
		 	$('#usm').datagrid('reload');
    	}
    	function getUsers(){
    		$('#usm').datagrid({
    			title:'会员管理',
    			iconCls:'icon-save',
    			url:'<%=basePath%>users_findAllUsers.action',
    			rownumbers:true,	//行号
			 	striped: true,		//隔行变色
			 	fit:true,			//是否自动适应容器大小
			 	pagination:true,
			 	width:'auto',
			 	columns:[[
					{field:'ck',checkbox:true},
					{field:'userName',title:'用户名',width:150,align:'center'},
					{field:'userPhone',title:'手机号',width:120,align:'center'},
					{field:'userCard',title:'身份证号',width:160,align:'center'},
					{field:'userAddress',title:'地址',width:180,align:'center'},
					{field:'userSex',title:'性别',width:80,align:'center'},
					{field:'userPic',title:'固定电话',width:120,align:'center'},
					{field:'userEmail',title:'邮箱',width:160,align:'center'}
				]],
				toolbar:[
					{
						id:'btncut',
						text:'删除',
						iconCls:'icon-cut',
						handler:function(){
							var rows = $('#usm').datagrid('getSelections');
							if(rows.length < 1){
								$.messager.alert('温馨提示', '请选择要删除的行！','warning');
								return;
							}
							$.messager.confirm("操作提示", "您确定要执行删除操作吗？",function(ts){
								if(ts){
									var str='';
									for(var i=0;i<rows.length;i++){
										str += rows[i].userId+",";
									}
									var strid=str.substring(0,str.length-1);
									$.post('<%=basePath%>users_deleteUsers.action?id='+strid,function(date){
										if(date){
											$.messager.alert('温馨提示', '删除成功！','warning');
											reloadUsm();
										}
									});
									
								}
							});
						}
					}
				]
    		})
    		getsearch();
    	}
    	function getsearch(){
			$('body').append($('<input id="txtSearch"/>'));
			$('.datagrid-toolbar').append($('#txtSearch'));
			$('#txtSearch').searchbox({   
                 width:'auto', 
                 searcher:function(value,name){
                 	if(name=='phone'){
                 	 $('#usm').datagrid('load',{phone:value});
                 	}
                 	else if(name=='userName'){
                 	 $('#usm').datagrid('load',{userName:value});
                 	}
                 	else if(name=='idCard'){
                 	 $('#usm').datagrid('load',{idCard:value});
                 	}
                 },    
              prompt:'请输入搜索信息'  ,
              menu:'#mm'
           }); 
		}
    </script>
  </head>
  <body>
    <table id="usm"></table>
    <div id="mm" style="width:120px">  
	    <div data-options="name:'phone',iconCls:'icon-ok'">手机号</div> 
	    <div data-options="name:'userName'">用户名</div>
	    <div data-options="name:'idCard'">身份证号</div>
	</div>
  </body>
</html>
