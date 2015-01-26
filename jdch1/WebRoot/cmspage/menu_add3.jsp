<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	
	
	String menuId = request.getParameter("menuId");
	String parentId = request.getParameter("parentId");
	String sgin = request.getParameter("sgin");
	String oldName = request.getParameter("name");
	String pName = request.getParameter("pName");
	String languages = request.getParameter("languages");
	
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="text/javascript">
$(document).ready(function(){
	 $('#parentMenu1').combobox({
			url:'<%=basePath%>/menu_getMenu.action',
			valueField : 'menuId',
			textField : 'menuName',
			panelHeight: "auto",
			onSelect : function(record) {
				$('#parentMenu1').val(record.menuName);
				$('#parentId1').val(record.menuId);
				var pid = record.menuId;
				$('#parentMenu').combobox({
					url:'<%=basePath%>/menu_getMenu.action?parentId='+pid,
					valueField : 'menuId',
					textField : 'menuName',
					panelHeight: "auto",
					onSelect:function(record){
						$('#parentId').val(record.menuId);
						$('#parentMenu').val(record.menuName);
						$('#languages').val(record.languages);
					}
				});
			}
		});
		$('#languages').val('<%=languages%>');
		if('<%=sgin%>'!='null' ){
			var djName = null;
			var ejName = null;
			var id  = null;
			if('<%=sgin%>'==0){
				djName = '<%=oldName %>';
				id='<%=menuId%>';
				
			}else if('<%=sgin%>'==1 || '<%=sgin%>'==2){
				djName = '<%=pName%>';
				ejName = '<%=oldName%>';
				id='<%=parentId%>';
			}
			$('#parentMenu1').combobox('select',djName);
			$('#parentId1').val('000');
			$('#parentMenu').combobox({
					url:'<%=basePath%>/menu_getMenu.action?parentId='+id,
					valueField : 'menuId',
					textField : 'menuName',
					panelHeight: "auto",
					onSelect:function(record){
						$('#parentId').val(record.menuId);
						$('#parentMenu').val(record.menuName);
					}
				});
			if('<%=sgin%>'==1 || '<%=sgin%>'==2){
				$('#parentMenu').combobox('select',ejName);
				$('#parentId').val('<%=menuId%>');
			}		
		}
	});
	
	
	
	function subSave(){
		if($('#parentId1').val()==''){
			$.messager.alert('warm tips','请选择顶级菜单!');
			return;
		}	
		if($('#parentId').val()==''){
			$.messager.alert('warm tips', '请选择二级菜单!');
			return;
		}
		if($('#languages').val()=='1'){
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
				$.messager.alert('warm tips', '添加成功！');
				reloadDataGrids();
				closeMyWindow("myWindow");
			}else if(data=='1'){
				$.messager.alert('warm tips','导航菜单已经存在!');			
			}else{
				$.messager.alert('warm tips', 'The operation failed, please contact the administrator!');
			}
		}   
	});
	$(function () {
     //设置text需要验证
      $('input[type=text]').validatebox();
      $.extend($.fn.validatebox.defaults.rules, {
		 test: {//value值为文本框中的值
         validator: function (value) {
          if(value!=''){
		         var reg =/^([0-9]{1,3})$/;
		         return reg.test(value);
	         }
         },
          message: '导航菜单位置权必须是1-3位数字!'
         }
         })	
	})
</script>
<form method="post" id="ff">
<input type="hidden"  id="sign" name="sign" value="2"/>
	<table align="center"  width="100%">
		<tr>
		<td width="5%"></td>
			<td width="30%" align="right">
				顶级导航菜单：
			</td>
			<td width="65%">
				<input type="hidden" id="languages" name="languages">
				<input type="hidden" id="parentId1" name="parentId1"/>
				<input type="text" class="easyui-validatebox" id="parentMenu1" name="parentMenu1" value="请选择" editable="false" style="width:151px;"/>
			</td>
		</tr>
		<tr>
		<tr>
		<td width="5%"></td>
			<td width="30%" align="right">
				二级导航菜单：
			</td>
			<td width="65%">
				<input type="hidden" id="parentId" name="parentId"/>
				<input type="text" class="easyui-validatebox" id="parentMenu" name="parentMenu" value="请选择" editable="false" style="width:151px;"/>
			</td>
		</tr>
		<tr>
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
				<input type="text" class="easyui-validatebox" id="sort" name="sort" required="true" validtype="test"/>
			</td>
		</tr>
	</table>
	<div align="center" style="margin-top: 15px;">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="subSave()">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="closeMyWindow('myWindow')">返回</a>
	</div>
</form>