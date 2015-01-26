package com.cms.service;

import java.util.List;

import com.cms.pojo.CmsShowMenu;
import com.cms.vo.CmsShowMenuVO;

public interface MenuService {
	/**
	 * 获取所有导航集合
	 * @param hql 查询条件
	 * @param start 起始行
	 * @param rows 每页行数
	 * @return 菜单集合
	 */ 
	public List<CmsShowMenuVO> getMenuList(String hql);
	/**
	 * 获取导航总行数
	 * @param hql 查询条件
	 * @return 总行数
	 */
	public Object getCountMenu(String hql);
	/**
	 * 添加一级菜单
	 * @param cmsShowMenu 对象
	 * @return true成功 false失败
 	 */
	public boolean saveMenu(CmsShowMenu cmsShowMenu);
	/**
	 * 获取一级导航
	 * @return 一级导航集合
	 */
	public List<CmsShowMenu> getCmsShowMenu(String pid);
	/**
	 * 通过ID获取导航对象
	 * @param id 参数
	 * @return 导航对象
	 */
	public CmsShowMenu getOneMenu(int id);
	/**
	 * 修改导航
	 * @param cmsShowMenu 对象
	 * @return true成功 false失败
 	 */
	public boolean updateMenu(CmsShowMenu cmsShowMenu);
	/**
	 * 获取二级导航 
	 * @param parentId 参数
	 * @return 导航集合
	 */
	public List<CmsShowMenu> getCmsMenus(int parentId);
	
	public List serchMean(String where);
	
	/**
	 * 
	 * 检查重复
	 * **/
	public boolean check(String id,String name);
	
	
	/**
	 * 删除导航
	 * **/
	public boolean deleteDH(String id);
	/**
	 * 修改sql
	 */
	public boolean updateByLanguages(String url,String languages,String where);
	
	public List<CmsShowMenu> findMenuIdAll(String id);
}
