<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String articleId = request.getParameter("articleId");
String menuName = request.getParameter("menuName");
%>
	<script type="text/javascript">
	var imgpath="";
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
		editor.readonly(true);
	});
	function closexq(){
		closeMyWindow('myWindow2');
	}
	$(function(){
		$.post('<%=path%>/article_getOneArticle.action?articleId=<%=articleId%>',function(date){
			$('#menuName').val('<%=menuName%>');
			$('#articleTitle').val(date.articleTitle);
			editor.html(date.articleContent);
			if(date.articleImg!=null && date.articleImg!=''){
				var imgurl = '<%=basePath%>upfile/'+date.articleImg;
				$('#imgst').show();
				$('#img img').attr('src',imgurl);
			}else{
				$('#img').html('');
			}
			var shows='no';
			var rolls='no';
			if(date.shows==1){
				shows='yes';
			}
			else{
				shows='no';
			}
			if(date.rolls==1){
				rolls='yes';
			}
			else{
				rolls='no';
			}
			$('#shows').text(shows);
			$('#rolls').text(rolls);
		},'json');
	});
	
	
	$("#img img").live('click',function (){
		var imgpath= $("#img img").attr('src');
		var image=new Image();
			image.src=imgpath;
			if(image.width==0){
				image.width=$("#img img").attr("width");
				image.height=$("#img img").attr("height");
			}
			image.width=((460/parseInt(image.height))*parseInt(image.width));
			image.height=460;
			if(image.width>700){
				image.width=680;
				image.height=(680/parseInt(image.width))*parseInt(image.height);
			}
  		$("#imgDiv").html('');
     	$("#imgDiv").html('<img src="'+imgpath+'" style="width: '+image.width+';height:'+image.height+';"/>');
		$('#imgWindow').window({
	          title: 'preview picture',   
	           width: parseInt(image.width)==0?700:(parseInt(image.width)+20),
	          height: parseInt(image.height)==0?500:(parseInt(image.height)+40),
	          top:40,
	          left:200,
	          modal:true ,
	          border:false,
	          minimizable: false,
	          maximizable: false,
	          shadow: true,  
	          cache: false,  
	          closed: false,  
	          collapsible: false,  
	          resizable: false,  
	          loadingMessage: 'Loading data, please wait for a while....'
	      });
	});
	function DrawImage(ImgD,FitWidth,FitHeight){  
	    var image=new Image();  
	    image.src=ImgD.src;  
	     if(image.width>0 && image.height>0){  
	       if(image.width/image.height>= FitWidth/FitHeight){  
	            if(image.width>FitWidth){  
	                 ImgD.width=FitWidth;  
	                 ImgD.height=(image.height*FitWidth)/image.width;  
	            }else{  
	                ImgD.width=image.width;   
	               ImgD.height=image.height;  
	             }  
	         } else{  
	           if(image.height>FitHeight){  
	                ImgD.height=FitHeight;  
	                ImgD.width=(image.width*FitHeight)/image.height;  
	            }else{  
	                 ImgD.width=image.width;   
	              ImgD.height=image.height;  
	            }   
	        }  
	     }else{
	     	ImgD.width=FitWidth;   
	              ImgD.height=FitHeight;  
	     
	     }  
	}
	</script>
	<form method="post" id="ff" enctype="multipart/form-data">
		<table width="98%" align="center" style="margin-left: 15px;margin-top: 15px;">
			<tr>
				<td align="right">
					导航：
				</td>
				<td>
					<input type="text" id="menuName" name="menuName" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td align="right">
					标题：
				</td>
				<td>
				<input type="text" class="easyui-validatebox" id="articleTitle" name="articleTitle" style="width: 500px;" readonly="readonly"/>
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
					<label style="margin-left: 2px;">Whether to display：</label><label name="shows" id="shows"></label>
					<label style="margin-left: 100px;">whether to scroll：</label><label name="rolls" id="rolls"></label>
				</td>
			</tr>
			<tr>
				<td align="right">
					<div id="imgst" style="display:none;">
						picture：
					</div>
				</td>
				<td id="img">
					<img src="" onload="DrawImage(this,200,150)" alt="单击放大"/>
				</td>
			</tr>
		</table>
		<div align="center">
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="closexq()">返回</a>
		</div>
	</form>
<div id="imgWindow" class="easyui-dialog" closed="true" noheader="false" style="text-align: center;background-color:#E8E8E8;">
	<div id="imgDiv" style="text-align: center;width: 90%;height: 460;" align="center"></div>
</div>