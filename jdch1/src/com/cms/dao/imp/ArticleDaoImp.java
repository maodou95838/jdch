package com.cms.dao.imp;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import com.cms.dao.ArticleDao;
import com.cms.pojo.CmsArticle;
import com.common.dao.DaoTool;
import com.common.dao.impl.JdbcTool;
@SuppressWarnings("unchecked")
public class ArticleDaoImp implements ArticleDao {
	
	@Resource
	private DaoTool daoTool;
	@Resource
	private JdbcTool jdbcTool;
	
	/**
	 * 获取总行数
	 */
	@Override
	public Object countObjects(String hql){
		return daoTool.createQueryInteger(hql);
	}
	
	/**
	 * 获取list集合
	 */
	@Override
	public List getObjects(String hql) {
		List list=daoTool.find(hql);
		if(list!=null && list.size()>0){
			return list;
		}else{
			return null;
		}
	}
	/**
	 * 添加对象
	 */
	@Override
	public boolean saveObject(Object obj) {
		try {
			daoTool.save(obj);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	/**
	 * 修改对象
	 */
	@Override
	public boolean updateObject(Object obj) {
		try {
			daoTool.update(obj);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	/**
	 * 获取对象集合
	 */
	@Override
	public List getobjList(String hql, int start, int end) {
		List list=daoTool.createQuery(hql, start, end);
		if(list!=null && list.size()>0){
			return list;
		}else{
			return null;
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

	@Override
	public List<CmsArticle> getLikeArt(String sql) {
		try {
			List list =jdbcTool.queryForList(sql);
			List<CmsArticle> listMap = new ArrayList<CmsArticle>();
			for (int i = 0; i < list.size(); i++) {
				Map map = (Map) list.get(i);
				CmsArticle art = new CmsArticle();
				art.setArticleId(Integer.parseInt(map.get("article_id").toString()));
				art.setArticleTitle(map.get("article_title").toString());
				art.setArticleContent(map.get("article_content").toString());
				art.setArticleImg(map.get("article_img").toString());
				art.setArticleDate(map.get("article_date").toString());
				art.setMenuId(Integer.parseInt(map.get("menu_id").toString()));
				listMap.add(art);
			}
			return listMap;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * 更新
	 */
	@Override
	public boolean updateByColumn(String sql) {
		try {
			daoTool.createSQLUpdate(sql);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
