<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String imgId = request.getParameter("imgId");
	String con = request.getParameter("content");
	String content = null;
	if(con!=null && con.length()>0)
		content = con;
	
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="text/javascript">

	
	$(function(){
		$.post('<%=path%>/image_getOneCmsImage.action?imgId=<%=imgId%>',function(date){
			$('#imgId').val(date.imgId);
			$('#imgContent').val(date.imgContent);
			$('#oldcont').val(date.imgContent);
			$('#pid').val(date.parentId);
			
			if(date.parentId!=0){
				$('#ids').css("displey","block");
			}
			if(date.imgPath!=null && date.imgPath!=''){
				var imgurl = '<%=basePath%>upfile/'+date.imgPath;
				$('#imgDiv img').attr('src',imgurl);
			}else{
				$('#imgDiv').html('');
			}
		},'json');
	});
	
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
		
		$('#fff').form('submit', {   
		    url:'<%=path%>/image_updateImage.action?content='+$('#oldcont').val(),
		    onSubmit: function(){ 
				return $(this).form('validate');
		    },   
   			success:function(data){
        		if(data=="true"){
        			$("#ly").treegrid("options").url ='<%=basePath%>image_getXiangCe.action';
		         		var rows = $('#ly').datagrid('getSelections');
						var ss = $('#ly').treegrid('getParent',rows[0].imgId);
					if(ss!=null)
						$('#ly').treegrid('reload',ss.imgId);
					else{
						//$('#ly').treegrid('reload',rows[0].imgId);
						//getImage()
						reloadImage()
						
					}
					$.messager.alert('warm tips', 'successfully changed!');
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
  	
  	$(document).ready(function(){
	 $('#parentId').combobox({
			url:'<%=basePath%>image_getXiangCe.action',
			valueField : 'imgId',
			textField : 'imgContent',
			panelHeight: "auto",
			onSelect : function(record){
				$('#parentId').val(record.imgContent);
				$('#parent').val(record.imgId);
			}
		});
		$('#parentId').combobox('select','<%=content%>');
	});
  	
  function changeimg(){
  	$("#imgDiv").html("");
  }
  	
</script>

<form method="post" id="fff" enctype="multipart/form-data">
	<table width="100%" align="center">
		<tr>
			<td align="right"></td>
			<td>
				<input type="hidden" id="pid" name="pid"/>
				<input type="hidden" id="imgId" name="imgId">
				<input type="hidden" id="oldcont" name="oldcont"/>
			</td>
		</tr>
		<tr id="ids">
			<% if(content!=null && content.length()>0){ %>
				<td align="right">相册名称：</td>
				<td>
					<input type="hidden" id="parent" name="parent"/>
					<input type="text" id="parentId" name="parentId"  editable="false"/>
				</td>
			<%} %>
		
		</tr>
		<tr>
			<td align="right">
				<%
					if(content!=null && content.length()>0){
				 %>
					照片描述：
				<% }else{  %>
					相册描述：
				<% } %>
			</td>
			<td>
				<textarea rows="4" cols="40" id="imgContent" name="imgContent" class="easyui-validatebox"  required="true"  missingMessage="photo description cannot be empty" validType="length[2,200]"></textarea>
			</td>
		</tr>
		<tr>
			<td align="right">上传照片：</td>
			<td>
				<div style="position:relative;">
					<input type="hidden" id="f_file" style="width:136px;" onchange="changeimg();" /> <input type="button" id="BtnBrowse" class="btn_browse" title="upload" value="上传" />
					<input type="file" name="file" id="upfile"  style="position:absolute; filter:alpha(opacity=0); -moz-opacity:0; opacity: 0;top:3px;left:0px;" onchange="$('#f_file').val($('upfile').val())" hidefocus />
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<div style="width: 400px; height: 300px; overflow: hidden; border: 0px solid red;">
					<div id="imgDiv">
						<img src="" width="400" heigth="300"/>
					</div>
				</div>
			</td>
		</tr>
	</table>
		<div align="center">
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="subSave()">保存</a>
		</div>
</form>


