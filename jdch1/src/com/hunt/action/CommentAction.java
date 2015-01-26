package com.hunt.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;

import com.common.action.BaseAction;
import com.common.util.StringUtil;
import com.hunt.service.CommentService;
import com.hunt.vo.CommentVo;

@SuppressWarnings("serial")
public class CommentAction extends BaseAction{
	private CommentService commentService;
	private JSONObject result;
	private Integer rows;
	private Integer page;
	
	@SuppressWarnings("unchecked")
	public void findAllComment(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String userName = request.getParameter("userName")==null?"":request.getParameter("userName").trim();
		String commentDate = request.getParameter("commentDate")==null?"":request.getParameter("commentDate").trim();
		StringBuffer sb = new StringBuffer();
		if(!"".equals(userName) && userName!=null)
		{
			sb.append(" and u.user_name like '%"+userName+"%' ");
		}
		if(!"".equals(commentDate) && commentDate!=null)
		{
			sb.append(" and c.comment_date like '%"+commentDate+"%' ");
		}
		try {
			Map<String, Object> jsonMap = new HashMap<String, Object>();
			int begin=(page-1)*rows;
			List<CommentVo> list =commentService.findAllComment(sb.toString(), begin, rows);
			Object total = commentService.findCommentPageCount(sb.toString());
			jsonMap.put("rows", list);
			jsonMap.put("total", total);
			JSONObject result = JSONObject.fromObject(jsonMap);
			StringUtil.responseText(result.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void getCommentById(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String commentId = request.getParameter("commentId")==null?"":request.getParameter("commentId").trim();
		try {
			CommentVo vo = commentService.getCommentById(commentId);
			JSONObject jo = JSONObject.fromObject(vo);
			StringUtil.responseText(jo.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deleteComment(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id")==null?"":request.getParameter("id").trim();
		try {
			commentService.deleteComment(id);
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
	public CommentService getCommentService() {
		return commentService;
	}
	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
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
