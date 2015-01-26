<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>image.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/style.css">
	<link rel="stylesheet" type="text/css" href="js/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="js/themes/icon.css">
	<link rel="stylesheet" href="<%=basePath%>js/kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="<%=basePath%>js/kindeditor/plugins/code/prettify.css" />
	<script type="text/javascript"  src="<%=basePath%>js/kindeditor/kindeditor.js"></script>
	<script type="text/javascript"  src="<%=basePath%>js/kindeditor/lang/zh_CN.js"></script>
	<script type="text/javascript"  src="<%=basePath%>js/kindeditor/plugins/code/prettify.js"></script>
	<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/jquery.uploadPreview.js"></script>
    
    
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
    		getImage();
    	})
    	function reloadImage(){
		 	$('#ly').treegrid('reload');
    	}
    	function getImage(){
    		$('#ly').treegrid({
    			title:'图片管理',
    			iconCls:'icon-save',
    			url:'<%=basePath%>image_getXiangCe.action',
			 	striped: true,		//隔行变色
			 	fit:true,			//是否自动适应容器大小
			 	pagination:false,
			 	treeField:'imgContent',
			 	singleSelect:'true',
  				rownumbers: true,
				idField: 'imgId',
			 	columns:[[
			 		{field:'ck',checkbox:true,hidden:true},
					{field:'imgId',title:'tupianbianhao',width:120,align:'center',hidden:'true'},
					{field:'parentId',title:'parentbianhao',width:120,align:'center',hidden:'true'},
					{field:'imgContent',title:'相册描述',width:300,align:'left',formatter:function(value,row,index){
              		  	return '<input type="checkbox" id="ck'+row.imgId+'">' + value;
       			 	}},
					{field:'imgPath',title:'照片<font size=2 color=green>(单击放大)</font>',width:200,align:'center',
						formatter: function(value,row,index){
							if (value!=''){
								return "<img src='upfile/"+value+"' id="+row.imgId+" style='width:25px;height:25px;' onclick='imgclick("+row.imgId+");'>";
							}else{
								return "";
							}
						}
					},
					{field:'shows',title:'功能',width:100,align:'center',
						formatter: function(value,row,index){
							if(row.imgAlbum==1 && value==0){
								return '<a href="javascript:updateShows(\''+row.imgId+'\');">显示</a>';
							}
							else if(row.imgAlbum==1 && value==1){
								return '已显示';
							}
						}
					}
				]],
				 onBeforeExpand:function(row){  
        		//动态设置展开查询的url  
       			 	var url = "<%=basePath%>image_getImageList.action?parentId="+row.imgId;
       				$("#ly").treegrid("options").url = url;
       				return true;      
   				 },
				toolbar:"#aa",
				onClickRow:function(index,data){
					var row=$('#ly').datagrid('getSelected');
					if(row)
					{
						var id = row.imgId;
						$('input[type="checkbox"]').attr('checked',false);
						$('#ck'+id).attr('checked',true);
					}else{
						$('input[type="checkbox"]').attr('checked',false);
					}
				}
    		})
    		//getsearch();
    		
    		$('#times').appendTo('.datagrid-toolbar');
    		//$('#DIV_toolbar').appendTo('.datagrid-toolbar');
    		
    	}
    	function updateShows(id){
    		$.messager.confirm('warm tips', 'Confirmation of exhibition?', function(r){
    			if (r){
					$.post('<%=basePath%>image_updateByShows.action?imgId='+id,function(data){
						if(data=='true'){
							$.messager.alert('warm tips', 'Show success!','warning');
							var rows = $('#ly').datagrid('getSelections');
							var ss = $('#ly').treegrid('getParent',rows[0].imgId);
							if(ss!=null)
								$('#ly').treegrid('reload',ss.imgId);
							else{
								getImage();
							}
						}
						else{
							$.messager.alert('warm tips', 'Display failure!','warning');
						}
					})
				}
			});
    	}
    	
    	
    	function addXC(){
    		showMyWindow('Add the album ','<%=basePath %>cmspage/image_xc_add.jsp',600,520);
    	}
    	
    	function addTP(){
    		showMyWindow('Add picture','<%=basePath %>cmspage/image_add.jsp',600,530);
    	}
    	
    	function update(){
    		var rows = $('#ly').datagrid('getSelections');
			if(rows.length<1){
				$.messager.alert('warm tips', '请选择数据!');
				return;
			}else{
				if(rows.length>1){
					$.messager.alert('warm tips', 'Only one information changes!');
					return;
				}else{
					var id = rows[0].imgId;
					var ss = $('#ly').treegrid('getParent',id);
					if(ss==null){
						showMyWindow('photo description','<%=basePath%>cmspage/image_update.jsp?imgId='+id,600,520);
					}else{
						var cont = ss.imgContent;
						cont=encodeURI(cont);
						showMyWindow('Modify the pictures ','<%=basePath%>cmspage/image_update.jsp?imgId='+id+'&content='+cont,600,520);
					}
				}
			}
    	}
    	
    	function deleteimg(){
    		var rows = $('#ly').datagrid('getSelections');
			if(rows.length < 1){
				$.messager.alert('warm tips', '请选择数据!','warning');
				return;
			}
			var pid=rows[0].parentId;
			var texts = '';
			if(pid==0)
				texts="删除相册会同时删除相册下的照片，你确定删除吗?"
			else
				texts="您确认删除这张照片吗?"
			
			$.messager.confirm("operation tips", texts,function(ts){
				if(ts){
					var str='';
					for(var i=0;i<rows.length;i++){
						str += rows[i].imgId+",";
					}
					var strid=str.substring(0,str.length-1);
					$.post('<%=basePath%>image_deleteImage.action?types=0&id='+strid,function(date){
						if(date){
							var ss = $('#ly').treegrid('getParent',rows[0].imgId);
							if(ss!=null)
								$('#ly').treegrid('reload',ss.imgId);
							else{
								//getImage();
								window.location.reload();
							}
							$.messager.alert('warm tips', '删除成功!','warning');
						}
					});
				}
			});
    	}
    	
    	
    	
    	function imgclick(a){
			var imgpath=$("#"+a).attr('src');
			var images = new Image();
			images.src = imgpath+ '?t=' + Math.random();
			images.onload = function (){
				var width=images.width;
				var height=images.height;
				if(width>700 || height>500){
					var bei=0;
					if(width>=height){
						bei = 650/width;
					}else{
						bei = 450/height;				
					}
					width = width*bei;
					height = height*bei;
				}
		     	$("#imgDivs").html('<img src='+imgpath+' width='+width+' height='+height+' />');
		     	if(width==0 || height==0){width=400;height=300;}
				$('#imgWindow').window({
			          title: 'preview picture',   
			          width: width+19,
			          height: height+38,
			          top:100,  
	            	  left:300,
			          modal:true ,
			          border:false,
			          minimizable: false,
			          maximizable: false,
			          shadow: true,  
			          cache: false,  
			          closed: false,  
			          collapsible: false,  
			          resizable: false,  
			          loadingMessage: '数据加载中，请等待....'
			      });
			}
		};
	
		$(function(){
			$.post("<%=basePath%>image_getShowTime.action", function(data){
				$('#showtime').val(data);
	 		});
		});
		
		function updatetime(){
			var times = $('#showtime').val();
			var bb = false;
			if(/^\+?[1-9][0-9]*$/.test(times)){
				if(times>=2 && times<=20){
					bb=true;
				}
			}
			if(bb){
				$.messager.confirm("operation tips","照片切换时间设置成&nbsp;<font color='red'>"+times+"</font>&nbsp;秒?",function(r){
					if(r){
						$.post('<%=basePath%>image_updataTime.action?time='+times,function(data){
							if(data=='0'){
								$.messager.alert("warm tips",'设置成功!');
							}else{
								$.messager.alert("warm tips","The operation failed");
							}
						});
					}
				});
			}else{
				$.messager.alert("warm tips","照片切换时间设置在2到20之间!");
			}
		};
		
    </script>
  </head> 
  
  <body>

	<div id="aa">
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="addXC();">添加相册</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="addTP();">添加图片</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="update();">修改信息</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-cut" plain="true" onclick="deleteimg();">删除</a>
		<a class="easyui-linkbutton"  plain="true" >图片切换时间
			<input type="text" id="showtime" name="showtime" style="width:30px;height:18px;text-align:center"/>秒
		</a>
		<a href="javascript:void(0)" iconCls="icon-ok" class="easyui-linkbutton" plain="true"  id="updatetime" name="updatetime" onclick="updatetime();">确定</a>
	</div>
	
    <table id="ly"></table>

	<div id="imgWindow" class="easyui-dialog" closed="true" noheader="false" style="background-color:#E8E8E8;">
		<div id="imgDivs"></div>
	</div>
  </body>
</html>
