<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'apply.jsp' starting page</title>
    
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
   		 //动态添加一个div
		$(function () {
	      	$('body').append('<div id="myWindow" class="easyui-dialog" closed="true"></div>');
	  	});
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
	          loadingMessage: '正在加载数据，请稍等片刻......'  
	      });  
	  	}
	  	
	  	//关闭窗口
	  	function closeMyWindow(winName) {
	  	   $('#' + winName + '').window('close');
	  	}
    	$(function(){
    		getComment();
    	})
    	function reloadApply(){
		 	$('#sq').datagrid('reload');
    	}
    	function getComment(){
    		$('#sq').datagrid({
    			title:'申请管理',
    			iconCls:'icon-save',
    			url:'<%=basePath%>apply_findAllApply.action',
    			rownumbers:true,	//行号
			 	striped: true,		//隔行变色
			 	fit:true,			//是否自动适应容器大小
			 	pagination:true,
			 	columns:[[
			 		{field:'ck',checkbox:true},
					{field:'articleTitle',title:'产品名称',width:130,align:'center'},
					{field:'userName',title:'用户名',width:120,align:'center'},
					{field:'value',title:'申请备注',width:250,align:'center'},
					{field:'applyDate',title:'申请时间',width:150,align:'center'}
				]],
				toolbar:[
					{
						id:'btnxq',
						text:'查看详情',
						iconCls:'icon-edit',
						handler:function(){
							var rows = $('#sq').datagrid('getSelections');
							if(rows.length<1){
								$.messager.alert('温馨提示', '请选择要查看的行！');
								return;
							}
							else{
								if(rows.length>1){
									$.messager.alert('温馨提示', '只能选择一条信息进行查看！');
									return;
								}
								else{
									var id = rows[0].applyId;
									showMyWindow('查看详情','<%=basePath%>hunt/apply_xq.jsp?applyId='+id,550,400);
								}
							}
						}
					},
					{
						id:'btncut',
						text:'删除',
						iconCls:'icon-cut',
						handler:function(){
							var rows = $('#sq').datagrid('getSelections');
							if(rows.length < 1){
								$.messager.alert('温馨提示', '请选择要删除的行！','warning');
								return;
							}
							$.messager.confirm("操作提示", "您确定要执行删除操作吗？",function(ts){
								if(ts){
									var str='';
									for(var i=0;i<rows.length;i++){
										str += rows[i].applyId+",";
									}
									var strid=str.substring(0,str.length-1);
									$.post('<%=basePath%>apply_deleteApply.action?id='+strid,function(date){
										if(date){
											$.messager.alert('温馨提示', '删除成功！','warning');
											reloadApply();
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
                 	if(name=='userName'){
                 	 $('#sq').datagrid('load',{userName:value});
                 	}else if(name=='articleTitle'){
                 	 $('#sq').datagrid('load',{articleTitle:value});
                 	}
                 },    
              prompt:'请输入搜索信息'  ,
              menu:'#mm'
           }); 
		}
   	</script>
  </head>
  
  <body>
    <table id="sq"></table>
    <div id="mm" style="width:120px">  
	    <div data-options="name:'userName',iconCls:'icon-ok'">用户名</div> 
	    <div data-options="name:'articleTitle'">产品名称</div>   
	</div>
  </body>
</html>
