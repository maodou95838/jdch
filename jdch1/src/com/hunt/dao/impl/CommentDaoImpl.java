package com.hunt.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import com.common.dao.DaoTool;
import com.common.dao.impl.JdbcTool;
import com.hunt.dao.CommentDao;
import com.hunt.vo.CommentVo;

public class CommentDaoImpl implements CommentDao{
	@Resource
	private DaoTool daoTool;
	@Resource
	private JdbcTool jdbcTool;
	@SuppressWarnings("unchecked")
	public List findAllComment(String where,Integer begin,Integer end) {
		StringBuffer sql = new StringBuffer(" select c.comment_id commentId,c.comment_content commentContent,u.user_name userName,c.comment_date commentDate from hunt_comment c,hunt_users u where 1=1 and u.user_id=c.user_id and c.isdel=0");
		if(!"".equals(where) && where!=null)
		{
			sql.append(where);
		}
		sql.append(" order by comment_date desc ");
		sql.append(" limit "+begin+","+end+" ");
		try {
			List list = jdbcTool.queryForList(sql.toString());
			List<CommentVo> listMap = new ArrayList();
			for (int i = 0; i < list.size(); i++) {
				Map map = (Map) list.get(i);
				CommentVo vo = new CommentVo();
				vo.setCommentId(map.get("commentId").toString());
				vo.setCommentContent(map.get("commentContent").toString());
				vo.setUserName(map.get("userName").toString());
				vo.setCommentDate(map.get("commentDate").toString());
				listMap.add(vo);
			}
			return listMap;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public Object findCommentPageCount(String where) {
		StringBuffer sql = new StringBuffer(" select count(*) from hunt_comment c,hunt_users u where 1=1 and u.user_id=c.user_id and c.isdel=0 ");
		if(!"".equals(where) && where!=null)
		{
			sql.append(where);
		}
		try {
			return jdbcTool.queryForInt(sql.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	@SuppressWarnings("unchecked")
	public CommentVo getCommentById(String id) {
		StringBuffer sql = new StringBuffer(" select c.comment_id commentId,c.comment_content commentContent,u.user_name userName,c.comment_date commentDate from hunt_comment c,hunt_users u where 1=1 and u.user_id=c.user_id ");
		if(!"".equals(id) && id!=null)
		{
			sql.append(" and c.comment_id='"+id+"' ");
		}
		try {
			List list = jdbcTool.queryForList(sql.toString());
			Map map = (Map) list.get(0);
			CommentVo vo = new CommentVo();
			vo.setCommentId(map.get("commentId").toString());
			vo.setCommentContent(map.get("commentContent").toString());
			vo.setUserName(map.get("userName").toString());
			vo.setCommentDate(map.get("commentDate").toString());
			return vo;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public void delete(String sql) {
		try {
			daoTool.createSQLUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public DaoTool getDaoTool() {
		return daoTool;
	}
	public void setDaoTool(DaoTool daoTool) {
		this.daoTool = daoTool;
	}
	public JdbcTool getJdbcTool() {
		return jdbcTool;
	}
	public void setJdbcTool(JdbcTool jdbcTool) {
		this.jdbcTool = jdbcTool;
	}
	
	
}
