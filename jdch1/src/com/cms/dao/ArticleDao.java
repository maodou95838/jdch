package com.cms.dao;

import java.util.List;

import com.cms.pojo.CmsArticle;
@SuppressWarnings("unchecked")
public interface ArticleDao {
	/**
	 * 获取总行数
	 * @param hql 条件
	 * @return 总行数
	 */
	public Object countObjects(String hql);
	/**
	 * 获取list集合
	 * @param hql 条件
	 * @return list集合
	 */
	public List getObjects(String hql);
	/**
	 * 添加对象
	 * @param obj 对象
	 * @return true为成功 false为失败
	 */
	public boolean saveObject(Object obj);
	/**
	 * 修改对象
	 * @param obj 对象
	 * @return true为成功 false为失败
	 */
	public boolean updateObject(Object obj);
	/**
	 * 获取list
	 * @param hql 条件
	 * @param start 起始行
	 * @param end 每页行数
	 * @return 集合
	 */
	public List getobjList(String hql,int start,int end);
	/**
	 * 根据内容模糊查询
	 */
	public List<CmsArticle> getLikeArt(String sql);
	
	/**
	 * 更新
	 */
	public boolean updateByColumn(String sql);
}
