package com.hunt.dao.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import com.common.dao.DaoTool;
import com.common.dao.impl.JdbcTool;
import com.hunt.dao.ApplyDao;
import com.hunt.vo.ApplyVo;
import com.hunt.vo.CommentVo;

public class ApplyDaoImpl implements ApplyDao{
	@Resource
	private DaoTool daoTool;
	@Resource
	private JdbcTool jdbcTool;

	
	@SuppressWarnings("unchecked")
	@Override
	public List findAllApply(String where, Integer begin, Integer end) {
		StringBuffer sql = new StringBuffer("SELECT h.apply_id applyId,c.article_title articleTitle,u.user_name userName,h.`value` `value`,h.isdel isdel,h.apply_date applyDate FROM hunt_apply h LEFT JOIN cms_article c ON h.article_id=c.article_id LEFT JOIN hunt_users u ON u.user_id=h.user_id WHERE h.isdel=0 ");
		if(!"".equals(where) && where!=null)
		{
			sql.append(where);
		}
		sql.append(" order by h.apply_date desc ");
		sql.append(" limit "+begin+","+end+" ");
		try {
			List list = jdbcTool.queryForList(sql.toString());
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public Object findApplyPageCount(String where) {
		StringBuffer sql = new StringBuffer("SELECT count(*) FROM hunt_apply h LEFT JOIN cms_article c ON h.article_id=c.article_id LEFT JOIN hunt_users u ON u.user_id=h.user_id WHERE h.isdel=0 ");
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
	@Override
	public ApplyVo getApplyById(String id) {
		StringBuffer sql = new StringBuffer("SELECT h.apply_id applyId,c.article_title articleTitle,u.user_name userName,h.`value` `value`,h.isdel isdel,h.apply_date applyDate FROM hunt_apply h LEFT JOIN cms_article c ON h.article_id=c.article_id LEFT JOIN hunt_users u ON u.user_id=h.user_id WHERE h.isdel=0 ");
		if(!"".equals(id) && id!=null)
		{
			sql.append(" and h.apply_id="+id+" ");
		}
		try {
			List list = jdbcTool.queryForList(sql.toString());
			Map map = (Map) list.get(0);
			ApplyVo vo = new ApplyVo();
			vo.setApplyId(map.get("applyId").toString());
			vo.setArticleTitle(map.get("articleTitle").toString());
			vo.setUserName(map.get("userName").toString());
			vo.setValue(map.get("value").toString());
			vo.setApplyDate(map.get("applyDate").toString());
			return vo;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@Override
	public void delete(String sql) {
		daoTool.createSQLUpdate(sql);
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
