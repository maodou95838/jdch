<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String menuId = request.getParameter("id");
	String menuName = request.getParameter("name");
	String jsp = request.getParameter("jsp");
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="text/javascript">
var editor="";
$(function(){
KindEditor.options.filterMode = false;
editor=KindEditor.create('#articleContent', {
	cssPath : '<%=basePath%>js/kindeditor/plugins/code/prettify.css',
	uploadJson : '<%=basePath%>js/kindeditor/jsp/upload_json.jsp',
	fileManagerJson : '<%=basePath%>js/kindeditor/jsp/file_manager_json.jsp',
	allowFileManager : true,
	width:670,
	height: 250,
	langType : 'en'
	});
	prettyPrint();
});


	function subSave(){
	 	if($('#articleTitle').val()==""){
			$.messager.alert('warm tips', 'Please enter a title!');
			return ;
		}
		if(editor.isEmpty()){
			$.messager.alert('warm tips', 'Please input the contents of the article!');
			return ;
		}
		var str = editor.html().replace(/<[^>]+>/g,"");
		if(str.length>10000){
			$.messager.alert('warm tips', 'The content of the article is not greater than 10000 words!');
			return ;
		}
		$('#articleContent').val(editor.html());
		$.messager.confirm('warm tips',"make sure to add?", function(r){
				if (r){
				$.messager.progress({text:"Please wait for information processing...",interval:"1000"}); 
					$('#ff').form('submit', {   
	      			url:'<%=path%>/article_addArticle.action',
	      			onSubmit: function(){ 
						return $(this).form('validate');
	     			 },   
    						success:function(data){  
    						$.messager.progress('close');
       					if(data){
						$.messager.alert('warm tips', 'added successfully!');
					     var jsp = '<%=jsp%>';
					     if(jsp=='list'){
					     	$('#ss').datagrid('reload');
					     	closeMyWindow("myWindow2");
					     }else{
					     	closeMyWindow("myWindow");
					     }
					}else{
					$.messager.alert('warm tips', 'The operation failed, please contact the administrator!');
					}
  		 				}   
					}); 
				}
			});
	}

	$(function(){
    	//建议在#imgDiv的父元素上加个overflow:hidden;的css样式
        $("#upfile").uploadPreview({ width: 300, height: 200, imgDiv: "#imgDiv", imgType: ["bmp", "gif", "png", "jpg"] });
       	$('#menuId').val('<%=menuId%>');
       	$('#menuName').val('<%=menuName%>');
  	});
  	function closeadd(){
  		var jsp = '<%=jsp%>';
  		if(jsp=='list'){
 			closeMyWindow('myWindow2');
  		}else{
			closeMyWindow('myWindow');
		}
	}
</script>
<form method="post" id="ff" enctype="multipart/form-data">
	<table width="98%" align="center" style="margin-left: 15px;margin-top: 15px;">
		<tr>
			<td align="right">
				导航名称：
			</td>
			<td>
				<input type="hidden" id="menuId" name="menuId">
				<input type="text" id="menuName" name="menuName" readonly="readonly"/>
			</td>
		</tr>
		<tr>
			<td align="right">
				文章标题：
			</td>
			<td>
			<input type="text" class="easyui-validatebox" id="articleTitle" name="articleTitle" style="width: 500px;"  required="true"  missingMessage="can not be empty" validType="length[2,100]" invalidMessage="Article title is from 2 to 100 bytes"/>
			</td>
		</tr>
		<tr>
			<td align="right">
				内容：
			</td>
			<td>
				<textarea cols="120" id="articleContent" name="articleContent" rows="40" style="width: 95%; margin-right: 10px;"></textarea>
			</td>
		</tr>
		<tr style="display: none;">
			<td colspan="2" style="width: 750px;">
				<label style="margin-left: 2px;">Whether to display ：</label>yes<input type="radio" name="shows" id="shows" value="1" checked="checked">&nbsp;no<input type="radio" name="shows" id="shows" value="0">
				<label style="margin-left: 100px;">whether to scroll：</label>yes<input type="radio" name="rolls" id="rolls" value="1">&nbsp;no<input type="radio" name="rolls" id="rolls" value="0" checked="checked">
			</td>
		</tr>
		<tr>
			<td align="right">
				角标图片：
			</td>
			<td>
				<div style="position:relative;">
					<input type="hidden" id="f_file" style="width:136px;" /> <input type="button" id="BtnBrowse" class="btn_browse" title="upload" value="上传" />
					<input type="file" name="file" id="upfile"  style="position:absolute; filter:alpha(opacity=0); -moz-opacity:0; opacity: 0;top:3px;left:0px;" onchange="$('#f_file').val($('upfile').val())" hidefocus />
				</div>
			</td>
		</tr>
		<tr>
			<td align="right"></td>
			<td>
				<div
					style="width: 300px; height: 200px; overflow: hidden; border: 0px solid red; display: none;">
					<div id="imgDiv">
					</div>
				</div>
			</td>
		</tr>
	</table>
	<div align="center">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="subSave()">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="closeadd()">返回</a>
	</div>
</form>