<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String menuId = request.getParameter("menuId");
String parentId = request.getParameter("parentId");
String sgin = request.getParameter("sgin");
String oldName = request.getParameter("menuName");

%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript">
var parentId = <%=parentId%>;
var sgin = '<%=sgin%>';
$(document).ready(function(){
	$.post('<%=path%>/menu_getOneMenu.action?menuId=<%=menuId%>&sgin=<%=sgin%>',function(date){
		$('#mm').form('load',date);
		if(sgin=='0'){
			$(':radio[name=showsrad]:eq('+date.languages+')').attr('checked','checked');
			$('#langdiv').show();
		}
	},'json');
	if(sgin=='0'){
		$('#dh').hide();
		$('#2dh').hide();
	}else if(sgin=='1'){
		$('#dh').show();
		$('#2dh').hide();
	}else{
		$('#2dh').show();
		$('#dh').show();
		$('#parentName').combobox({
			url:'<%=basePath%>/menu_getMenus.action?parentId=<%=parentId%>',
			valueField : 'menuId',
			textField : 'menuName',
			panelHeight: "auto",
			onSelect : function(record) {
				$('#parentId').val(record.menuId);				
			}
		});
	
	}
		$('#gradName').combobox({
			url:'<%=basePath%>/menu_getMenu.action',
			valueField : 'menuId',
			textField : 'menuName',
			panelHeight: "auto",
			onSelect : function(record) {
				$('#gradId').val(record.menuId);	
				$('#parentName').combobox({
					url:'<%=basePath%>/menu_getMenu.action?parentId='+record.menuId,
					valueField : 'menuId',
					textField : 'menuName',
					panelHeight: "auto",
					onSelect:function(record){
						$('#parentId').val(record.menuId);
					}
				});
			}
		});
	});
	function subSave(){
		if(sgin=='0'){
			var lang = $(':radio[name=languages]:checked').val();
			if(lang==1){
				$('#menuUrl').val('chineseschool/particulars.jsp');
			}
			else{
				$('#menuUrl').val('school/particulars.jsp');
			}
		}
		$('#mm').form('submit', {   
		   url:'<%=basePath%>/menu_updateMenu.action?menuId=<%=menuId%>&dhj='+sgin,
		    onSubmit: function(){ 
				return $(this).form('validate');
		    },   
   			success:function(data){
        		if(data=="true"){
        			reloadDataGrids();
					$.messager.alert('warm tips', '修改成功');
					closeMyWindow("myWindow");
				}else if(data=="1"){
					$.messager.alert('warm tips', '有相同数据存在');
				}else{
					$.messager.alert('warm tips', 'The operation failed, please contact the administrator!');
				}
 		 	}   
		}); 
	}	
	
	$(function () {
     //设置text需要验证
	      $('input[type=text]').validatebox();
	      $.extend($.fn.validatebox.defaults.rules, {
				 mobile: {//value值为文本框中的值
			         validator: function (value) {
				         var reg =/^([0-9]{1,3})$/;
				         return reg.test(value);
			         },
			          message: '导航菜单位置权必须是1-3位数字!!'
		         }
	       })	
	})		
</script>
<form id="mm" method="post">
	<input type="hidden" value="<%=parentId %>" id="oldpid" name="oldpid"/>
	<table align="center" width="100%">
		<tr id="dh">
			<td width="5%"></td>
			<td width="30%" align="right">
				顶级导航菜单：
			</td>
			<td width="65%">
				<input type="hidden" id="gradId" name ="gradId"/>
				<input type="text" class="easyui-validatebox" id="gradName" name="gradName" editable="false" style="width:151px;"/>
			</td>
		</tr>
		
		<tr id="2dh">
			<td width="5%"></td>
			<td width="30%" align="right">
				二级导航菜单：
			</td>
			<td width="65%">
				<input type="hidden" id="parentId" name = "parentId"/>
				<input type="text" class="easyui-validatebox" id="parentName" name="parentName" editable="false" style="width:151px;" value="please select"/>
			</td>
		</tr>
		
		
		<tr>
			<td width="5%"></td>
			<td width="30%" align="right">
				导航菜单名称：
			</td>
			<td width="65%">
				<input type="hidden" id="oldName" value="<%=oldName %>" name="oldName">
				<input type="text" class="easyui-validatebox" id="menuName" name="menuName" required="true" missingMessage="can not be empty" validType="length[2,80]" invalidMessage="Navigation is the name of 2 to 80" />
			</td>
		</tr>
		<tr style="display: none;">
			<td width="5%"></td>
			<td width="30%" align="right">
				Navigation&nbsp;address：
			</td>
			<td width="65%">
				<input type="text" readonly="readonly" value="school/particulars.jsp" class="easyui-validatebox" id="menuUrl"name="menuUrl" required="true" missingMessage="can not be empty" validType="length[5,100]" invalidMessage="Navigation address is 5 to 100" />
			</td>
		</tr>
		<tr>
			<td width="5%"></td>
			<td width="30%" align="right">
				导航菜单位置权：
			</td>
			<td width="65%">
				<input type="text" class="easyui-validatebox" id="sort" name="sort" validtype="mobile" />
			</td>
		</tr>
		<tr width="5%" style="display: none;" id="langdiv">
			<td></td>
			<td width="30%" align="right">
				语言：
			</td>
			<td width="65%">
				英文<input type="radio" id="languages" name="languages" value="0" >&nbsp; 中文 <input type="radio" id="languages" name="languages" value="1" checked="checked">
			</td>
		</tr>
	</table>
	<div align="center" style="margin-top: 15px;">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="subSave()">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="closeMyWindow('myWindow')">返回</a>
	</div>
</form>

