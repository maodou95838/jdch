package com.hunt.action;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import net.sf.json.JSONObject;

import com.common.action.BaseAction;
import com.common.util.StringUtil;
import com.hunt.pojo.HuntUsers;
import com.hunt.service.UsersService;

@SuppressWarnings("serial")
public class UsersAction extends BaseAction{
	private UsersService usersService;
	private JSONObject result;
	private Integer rows;
	private Integer page;
	
	@SuppressWarnings("unchecked")
	public void findAllUsers(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String phone = request.getParameter("phone")==null?"":request.getParameter("phone").trim();
		String userName = request.getParameter("userName")==null?"":request.getParameter("userName").trim();
		String idCard = request.getParameter("idCard")==null?"":request.getParameter("idCard").trim();
		StringBuffer sb = new StringBuffer();
		if(!"".equals(phone) && phone!=null)
		{
			sb.append(" and u.userPhone like '%"+phone+"%' ");
		}
		if(!"".equals(userName) && userName!=null)
		{
			sb.append(" and u.userName like '%"+userName+"%' ");
		}
		if(!"".equals(idCard) && idCard!=null)
		{
			sb.append(" and u.userCard like '%"+idCard+"%' ");
		}
		try {
			Map<String, Object> jsonMap = new HashMap<String, Object>();
			int begin=(page-1)*rows;
			List<HuntUsers> list =usersService.findAllUsers(sb.toString(), begin, rows);
			Object total = usersService.findUsersPageCount(sb.toString());
			jsonMap.put("rows", list);
			jsonMap.put("total", total);
			JSONObject result = JSONObject.fromObject(jsonMap);
			StringUtil.responseText(result.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deleteUsers(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id")==null?"":request.getParameter("id").trim();
		try {
			usersService.deleteUsers(id);
			StringUtil.responseText("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public JSONObject getResult() {
		return result;
	}
	public void setResult(JSONObject result) {
		this.result = result;
	}
	public UsersService getUsersService() {
		return usersService;
	}
	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	
	
}
