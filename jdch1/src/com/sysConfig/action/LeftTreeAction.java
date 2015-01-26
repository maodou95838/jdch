package com.sysConfig.action;

import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONObject;

import com.common.action.BaseAction;
import com.common.util.StringUtil;
import com.sysConfig.pojo.CmsAdminMenu;
import com.sysConfig.service.LeftTreeService;

@SuppressWarnings("serial")
public class LeftTreeAction extends BaseAction{
	private LeftTreeService leftTreeService;
	
	
	@SuppressWarnings("unchecked")
	public void findLeftTree(){
		StringBuffer sb = new StringBuffer(" and m.parentId=0 ");
		try {
			List<CmsAdminMenu> list = leftTreeService.findLeftTree(sb.toString());
			List<Object> jsonMap = new ArrayList<Object>();
			for(CmsAdminMenu menu : list){
				JSONObject jo = JSONObject.fromObject(menu);
				jsonMap.add(jo);
			}
			StringUtil.responseText(jsonMap.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public LeftTreeService getLeftTreeService() {
		return leftTreeService;
	}
	public void setLeftTreeService(LeftTreeService leftTreeService) {
		this.leftTreeService = leftTreeService;
	}
	
}
