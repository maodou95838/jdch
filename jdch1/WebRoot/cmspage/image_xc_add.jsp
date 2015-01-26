<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="text/javascript">

	function subSave(){
		var content =$('#imgContent').val();
		var files = $('#upfile').val();
		if(content==""){
			$.messager.alert('warm tips', 'The album description cannot be empty!');
			return ;
		}else if(content.length<2 || content.length>200){
			$.messager.alert('warm tips','The album description should be between 2-200 characters!');
			return;
		}
		if(files==""){
			$.messager.alert('warm tips','Please choose to upload photos!');
			return;
		}
		$('#ff').form('submit', {   
		    url:'<%=path%>/image_saveImage.action?types=1',
		    onSubmit: function(){
				return $(this).form('validate');
		    },   
     			success:function(data){ 
	         		if(data=="true"){
	         			$("#ly").treegrid("options").url ='<%=basePath%>image_getXiangCe.action';
	         			reloadImage();
						$.messager.alert('warm tips', 'added successfully!');
						closeMyWindow("myWindow");
					}else if(data=="1"){
						$.messager.alert('warm tips', 'There is the same data!');
					}else{
						$.messager.alert('warm tips', 'The operation failed, please contact the administrator!');
					}
   		 		}   
			}); 
	}


	$(function(){
    	//建议在#imgDiv的父元素上加个overflow:hidden;的css样式
        $("#upfile").uploadPreview({ width: 400, height: 300, imgDiv: "#imgDiv", imgType: ["bmp", "gif", "png", "jpg"] });
        
  	});
</script>

<form method="post" id="ff" enctype="multipart/form-data">
	<table width="100%" align="center" style="margin-top:20px;" >
	
		<tr>
			<td align="right">
				相册描述信息：
			</td>
			<td>
				<input type="hidden" id="parent" valeu="0">
				<textarea rows="4" cols="40" id="imgContent" name="imgContent" class="easyui-validatebox"  required="true"  missingMessage="The photo description cannot be empty" validType="length[2,200]"></textarea>
			</td>
		</tr>
		<tr>
			<td align="right">
				上传照片：
			</td>
			<td>
				<div style="position:relative;">
					<input type="hidden" id="f_file" style="width:136px;" /> <input type="button" id="BtnBrowse" class="btn_browse" title="upload" value="上传" />
					<input type="file" name="file" id="upfile"  style="position:absolute; filter:alpha(opacity=0); -moz-opacity:0; opacity: 0;top:3px;left:0px;" onchange="$('#f_file').val($('upfile').val())" hidefocus />
				</div>
			</td>
		</tr>
		<tr>
			
			<td colspan="2" align="center">
				<div id="imgDiv" style="width: 400px; height: 300px; overflow: hidden; border: 0px solid red; display: none;">
				</div>
			</td>
		</tr>
	</table>
		<div align="center" style="margin-top:15px;">
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="subSave()">保存</a>
		</div>
</form>