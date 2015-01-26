package com.hunt.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;

import com.common.action.BaseAction;
import com.common.util.StringUtil;
import com.hunt.service.ApplyService;
import com.hunt.vo.ApplyVo;

@SuppressWarnings("serial")
public class ApplyAction extends BaseAction{
	private ApplyService applyService;
	private Integer rows;
	private Integer page;
	
	@SuppressWarnings("unchecked")
	public void findAllApply(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String userName = request.getParameter("userName")==null?"":request.getParameter("userName").trim();
		String articleTitle = request.getParameter("articleTitle")==null?"":request.getParameter("articleTitle").trim();
		StringBuffer sb = new StringBuffer();
		if(!"".equals(userName) && userName!=null)
		{
			sb.append(" and u.user_name like '%"+userName+"%' ");
		}
		if(!"".equals(articleTitle) && articleTitle!=null)
		{
			sb.append(" and c.article_title like '%"+articleTitle+"%' ");
		}
		try {
			Map<String, Object> jsonMap = new HashMap<String, Object>();
			int begin=(page-1)*rows;
			List<ApplyVo> list =applyService.findAllApply(sb.toString(), begin, rows);
			Object total = applyService.findApplyPageCount(sb.toString());
			jsonMap.put("rows", list);
			jsonMap.put("total", total);
			JSONObject result = JSONObject.fromObject(jsonMap);
			StringUtil.responseText(result.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void getApplyById(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String applyId = request.getParameter("applyId")==null?"":request.getParameter("applyId").trim();
		try {
			ApplyVo vo = applyService.getApplyById(applyId);
			JSONObject jo = JSONObject.fromObject(vo);
			StringUtil.responseText(jo.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deleteApply(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id")==null?"":request.getParameter("id").trim();
		try {
			applyService.deleteApply(id);
			StringUtil.responseText("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ApplyService getApplyService() {
		return applyService;
	}
	public void setApplyService(ApplyService applyService) {
		this.applyService = applyService;
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
