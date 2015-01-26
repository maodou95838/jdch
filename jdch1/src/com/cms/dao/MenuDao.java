package com.cms.dao;

import java.util.List;

import com.cms.pojo.CmsShowMenu;
@SuppressWarnings("unchecked")
public interface MenuDao {
	/**
	 * 获取集合带分页
	 * @param hql 条件
	 * @param start 起始行
	 * @param end 每页行数
	 * @return 集合
	 */
	public List getObjList(String hql, int start, int end);
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
	 * 修改sql
	 */
	public boolean updateByLanguages(String sql);
	public List<CmsShowMenu> findMenuIdAll(String sql);
}
