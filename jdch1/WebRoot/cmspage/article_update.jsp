<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String articleId = request.getParameter("articleId");
	String menuName = request.getParameter("menuName");
	String menuId = request.getParameter("menuId");
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="text/javascript">
var imgpath = "";
var editor = "";
$(function() {
	KindEditor.options.filterMode = false;
	editor = KindEditor
			.create(
					'#content',
					{
						cssPath : '<%=basePath%>js/kindeditor/plugins/code/prettify.css',
						uploadJson : '<%=basePath%>js/kindeditor/jsp/upload_json.jsp',
						fileManagerJson : '<%=basePath%>js/kindeditor/jsp/file_manager_json.jsp',
						allowFileManager : true,
						width : 670,
						height : 250,
						langType : 'en'
					});
	prettyPrint();
});
$(function() {
	$
			.post(
					'<%=path%>/article_getOneArticle.action?articleId=<%=articleId%>',
					function(date) {
						$('#menuName').val('<%=menuName%>');
						$('#articleTitle').val(date.articleTitle);
						$('#articleId').val(date.articleId);
						editor.html(date.articleContent);
						if (date.articleImg != null && date.articleImg != '') {
							var imgurl = '<%=basePath%>upfile/' + date.articleImg;
							$('#imgDivs')
									.html(
											'<img src="' + imgurl + '" style="width:300px;height:200px;">');
							$('#imgParent').show();
						}
						if (date.shows == 1) {
							$(':radio[name=showsrad]:eq(0)').attr('checked',
									'checked');
						} else {
							$(':radio[name=showsrad]:eq(1)').attr('checked',
									'checked');
						}
						if (date.rolls == 1) {
							$(':radio[name=rollsrad]:eq(0)').attr('checked',
									'checked');
						} else {
							$(':radio[name=rollsrad]:eq(1)').attr('checked',
									'checked');
						}
						$('#shows').val(date.shows);
						$('#rolls').val(date.rolls);
					}, 'json');
});
function subSave() {
	if ($('#articleTitle').val() == "") {
		$.messager.alert('warm tips', 'Please enter a title!');
		return;
	}
	if (editor.isEmpty()) {
		$.messager.alert('warm tips',
				'Please input the contents of the article!');
		return;
	}
	var str = editor.html().replace(/<[^>]+>/g, "");
	if (str.length > 10000) {
		$.messager.alert('warm tips',
				'The content of the article is not greater than 10000 words!');
		return;
	}
	$('#articleContent').val(editor.html());
	$('#menuId').val('<%=menuId%>');
	$.messager
			.confirm(
					'warm tips',
					"To determine the modification?",
					function(r) {
						if (r) {
							if ($(':radio[name=showsrad]:checked').val() === $(
									'#shows').val()) {
								$('#shows').val('');
							}
							if ($(':radio[name=rollsrad]:checked').val() === $(
									'#rolls').val()) {
								$('#rolls').val('');
							}
							$.messager
									.progress( {
										text : "Please wait for information processing...",
										interval : "1000"
									});

							$('#ff')
									.form(
											'submit',
											{
												url : '<%=path%>/article_updateArticle.action',
												onSubmit : function() {
													return $(this).form(
															'validate');
												},
												success : function(data) {
													$.messager
															.progress('close');
													if (data) {
														$.messager
																.alert(
																		'warm tips',
																		'successfully changed!');
														closeMyWindow("myWindow2");
														reloadDataGrids();
													} else {
														$.messager
																.alert(
																		'warm tips',
																		'The operation failed, please contact the administrator!');
													}
												}
											});
						}
					});
}
$("#img img")
		.live(
				'click',
				function() {
					var imgpath = $("#img img").attr('src');
					var image = new Image();
					image.src = imgpath;
					if (image.width == 0) {
						image.width = $("#img img").attr("width");
						image.height = $("#img img").attr("height");
					}
					image.width = ((460 / parseInt(image.height)) * parseInt(image.width));
					image.height = 460;
					if (image.width > 700) {
						image.width = 680;
						image.height = (680 / parseInt(image.width))
								* parseInt(image.height);
					}
					$("#imgDiv").html('');
					$("#imgDiv").html(
							'<img src="' + imgpath + '" style="width: '
									+ image.width + ';height:' + image.height
									+ ';"/>');
					$('#imgWindow')
							.window(
									{
										title : 'preview picture',
										width : parseInt(image.width) == 0 ? 700
												: (parseInt(image.width) + 20),
										height : parseInt(image.height) == 0 ? 500
												: (parseInt(image.height) + 40),
										top : 40,
										left : 200,
										modal : true,
										border : false,
										minimizable : false,
										maximizable : false,
										shadow : true,
										cache : false,
										closed : false,
										collapsible : false,
										resizable : false,
										loadingMessage : 'Loading data, please wait for a while....'
									});
				});
function DrawImage(ImgD, FitWidth, FitHeight) {
	var image = new Image();
	image.src = ImgD.src;
	if (image.width > 0 && image.height > 0) {
		if (image.width / image.height >= FitWidth / FitHeight) {
			if (image.width > FitWidth) {
				ImgD.width = FitWidth;
				ImgD.height = (image.height * FitWidth) / image.width;
			} else {
				ImgD.width = image.width;
				ImgD.height = image.height;
			}
		} else {
			if (image.height > FitHeight) {
				ImgD.height = FitHeight;
				ImgD.width = (image.width * FitHeight) / image.height;
			} else {
				ImgD.width = image.width;
				ImgD.height = image.height;
			}
		}
	} else {
		ImgD.width = FitWidth;
		ImgD.height = FitHeight;

	}
}
function change() {
	$('#img').html('');
}
$(function() {
	$("#upfile").uploadPreview( {
		width : 300,
		height : 200,
		imgDiv : "#imgDivs",
		imgType : [ "bmp", "gif", "png", "jpg" ]
	});
});
function closeup() {
	closeMyWindow('myWindow2');
}
function gdd(){
  var ggg=document.getElementById("ggg").value="hf0346";
  var tupian=document.getElementById("hftupian");
      tupian.style.display="none";
      
}
</script>
<form method="post" id="ff" enctype="multipart/form-data">
	<table width="98%" align="center"
		style="margin-left: 15px; margin-top: 15px;">
		<tr>
			<td align="right">
				导航：
			</td>
			<td>
			    <input type="text" id="articleId" name="articleId">
				<input type="hidden" id="menuId" name="menuId">
				<input type="text" id="menuName" name="menuName" readonly="readonly" />
			</td>
		</tr>
		<tr>
			<td align="right">
				标题：
			</td>
			<td>
				<input type="text" class="easyui-validatebox" id="articleTitle"
					name="articleTitle" style="width: 500px;" required="true"
					missingMessage="can not be empty" validType="length[2,100]"
					invalidMessage="Article title is from 2 to 100 bytes" />
			</td>
		</tr>
		<tr>
			<td align="right">
				内容：
			</td>
			<td>
				<textarea cols="120" id="content" name="content" rows="40"
					style="width: 95%; margin-right: 10px;"></textarea>
				<input type="hidden" id="articleContent" name="articleContent">
			</td>
		</tr>
		<tr style="display: none;">
			<td colspan="2" style="width: 750px;">
				<label style="margin-left: 2px;">
					是否显示：
				</label>
				是
				<input type="radio" name="showsrad" id="showsrad" value="1">
				&nbsp;否
				<input type="radio" name="showsrad" id="showsrad" value="0">
				<label style="margin-left: 100px;">
					是否滚动：
				</label>
				是
				<input type="radio" name="rollsrad" id="rollsrad" value="1">
				&nbsp;否
				<input type="radio" name="rollsrad" id="rollsrad" value="0">
				<input type="text" style="display: none;" id="shows" name="shows">
				<input type="text" style="display: none;" id="rolls" name="rolls">
			</td>
		</tr>
		<tr>
			<td align="right">
				上传角标照片：
			</td>
			<td>
			    <div style="float: left">
			    <input type="button" value="删除" onclick="gdd()" />
			    <input type="hidden" name="deleteimg" id="ggg"  />
			    </div>
				<div style="position: relative; float: left">
					<input type="hidden" id="f_file" style="width: 136px;"
						onchange="change();" />
					<input type="button" id="BtnBrowse" class="btn_browse"
						title="upload" value="上传" />
					
					<input type="file" name="file" id="upfile"
						style="position: absolute; filter: alpha(opacity =         0); -moz-opacity: 0; opacity: 0; top: 3px; left: 0px;"
						onchange="$('#f_file').val($('upfile').val())" hidefocus />
				</div>
				
			</td>
		</tr>
		<tr>
			<td align="right"></td>
			<td>
				<div id="hftupian">
				   <div
					style="width: 300px; height: 200px; overflow: hidden; border: 0px solid red; display: none;"
					id="imgParent">
					<div id="imgDivs">
					</div>
				</div>
				</div>
			</td>
		</tr>
	</table>
	<div align="center">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			onclick="subSave()">修改</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			onclick="closeup()">返回</a>
	</div>
</form>
<div id="imgWindow" class="easyui-dialog" closed="true" noheader="false"
	style="text-align: center; background-color: #E8E8E8;">
	<div id="imgDiv" style="text-align: center; width: 90%; height: 460;"
		align="center"></div>
</div>