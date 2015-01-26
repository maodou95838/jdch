package com.cms.service;

import java.util.List;

import com.cms.pojo.CmsArticle;
import com.cms.pojo.CmsShowMenu;
import com.cms.vo.CmsArticleVo;
import com.cms.vo.CmsShowMenuVO;

public interface ArticleService {
	/**
	 * 获取所有导航集合
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
	 * 修改文章
	 * @param cmsArticle 对象
	 * @return true成功 false失败
 	 */
	public boolean updateArticle(CmsArticle cmsArticle);
	/**
	 * 添加文章
	 * @param cmsArticle 对象
	 * @return true成功 false失败
 	 */
	public boolean saveArticle(CmsArticle cmsArticle);
	/**
	 * 获取文章集合
	 * @param hql 查询条件
	 * @param satrt 起始行
	 * @param page	每页行数
	 * @return list
	 */
	public List<CmsArticle> getarticleList(String hql,int satrt,int page);
	/**
	 * 获取文章总行数
	 * @param hql 查询条件
	 * @return 总行数
	 */
	public Object getCountArticle(String hql);
	/**
	 * 删除文章
	 * @param id 参数
	 * @return true成功 false 失败
	 */
	public boolean deleteArticle(String[] id);
	/**
	 * 通过ID获取文章对象
	 * @param id 参数
	 * @return 文章对象
	 */
	public CmsArticle getOneArtocle(int id);
	
	public CmsArticle getOneArtocleBymeanid(String  meanid);
	
	/**
	 * 前台搜索功能（根据内容模糊查询）
	 */
	public List<CmsArticle> serachArticle(String where,String sql);
	public List<CmsShowMenu> findMenu(String hql);
	
	
	/**
	 * 获取用于Home页新闻展示的List
	 * **/
	public List<CmsArticle> getArtListByRollsHome(String where);
	
	/**
	 * 更新
	 */
	public boolean updateByColumn(String setCloumn,String value,String whereCloumn,String id);
	
	public boolean updateShowsOrRollsById(String cloumn,String value,String id);
}
