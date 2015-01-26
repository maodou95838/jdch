<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="text/javascript">
	function subSave(){
		var lang = $(':radio[name=languages]:checked').val();
		if(lang==1){
			$('#menuUrl').val('chineseschool/particulars.jsp');
		}
		else{
			$('#menuUrl').val('school/particulars.jsp');
		}
		$('#ff').submit();
	}
	
	$('#ff').form({
		url:'menu_addMenus.action',
		onSubmit: function(){
			return $(this).form('validate'); 
		},   
		success:function(data){
			if(data=='true'){
				$.messager.alert('warm tips', '添加成功!');
				reloadDataGrids();
				closeMyWindow("myWindow");
			}else if(data=='1'){
				$.messager.alert('warm tips', '导航菜单名称已存在!');
			}else{
				$.messager.alert('warm tips', 'The operation failed, please contact the administrator!');
			}
		}   
	});
	$(function () {
     //设置text需要验证
      $('input[type=text]').validatebox();
      $.extend($.fn.validatebox.defaults.rules, {
		 mobile: {//value值为文本框中的值
         validator: function (value) {
	         if(value!=''){
		         var reg =/^([0-9]{1,3})$/;
		         return reg.test(value);
	         }
         },
          message: '1-3位数字!'
         }
         })	
	})
</script>
<form method="post" id="ff">
<input type="hidden"  id="sign" name="sign" value="0"/>
	<table align="center"  width="100%">
		<tr>
		<td width="5%"></td>
			<td width="30%" align="right">
				导航菜单名称：
			</td>
			<td width="65%">
				<input type="text" class="easyui-validatebox" id="menuName" name="menuName" required="true"  missingMessage="can not be empty" validType="length[2,80]" invalidMessage="Navigation is the name of 2 to 80"/>
			</td>
		</tr>
		<tr style="display: none;">
		<td width="5%"></td>
			<td width="30%" align="right">
				Navigation&nbsp;address：
			</td>
			<td width="65%">
				<input type="text" readonly="readonly" value="school/particulars.jsp" class="easyui-validatebox" id="menuUrl" name="menuUrl" required="true"  missingMessage="can not be empty" validType="length[5,100]" invalidMessage="Navigation address is 5 to 100"/>
			</td>
		</tr>
		<tr>
		<td width="5%"></td>
			<td width="30%" align="right">
				导航菜单位置权：
			</td>
			<td width="65%">
				<input type="text" class="easyui-validatebox" id="sort" name="sort" required="true" validtype="mobile"/>
			</td>
		</tr>
		<td width="5%"></td>
			<td width="30%" align="right">
				语言：
			</td>
			<td width="65%">
				英文<input type="radio" id="languages" name="languages" value="0" >&nbsp; 中文<input type="radio" id="languages" name="languages" value="1" checked="checked">
			</td>
		</tr>
	</table>
	<div align="center" style="margin-top: 15px;">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="subSave()">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="closeMyWindow('myWindow')">返回</a>
	</div>
</form>