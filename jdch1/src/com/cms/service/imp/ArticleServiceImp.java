package com.cms.service.imp;

import java.util.ArrayList;
import java.util.List;

import com.cms.dao.ArticleDao;
import com.cms.pojo.CmsArticle;
import com.cms.pojo.CmsShowMenu;
import com.cms.service.ArticleService;
import com.cms.vo.CmsArticleVo;
import com.cms.vo.CmsShowMenuVO;

public class ArticleServiceImp implements ArticleService {
	private ArticleDao dao;
	
	/**
	 * 获取所有菜单集合
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<CmsShowMenuVO> getMenuList(String hql) {
		List<CmsShowMenuVO> voList1=new ArrayList<CmsShowMenuVO>();
		StringBuilder sb=new StringBuilder(" from CmsShowMenu a where 1=1 and a.isdel=0 order by a.languages, a.sort asc");
		sb.append(hql);
		List<CmsShowMenu> cmsShowMenuList=dao.getObjects(sb.toString());
		if(cmsShowMenuList!=null && cmsShowMenuList.size()>0){
			for(int i=0;i<cmsShowMenuList.size();i++){
				if(cmsShowMenuList.get(i).getParentId()==0){
					CmsShowMenuVO vo=new CmsShowMenuVO();
					vo.setMenuId(cmsShowMenuList.get(i).getMenuId());
					vo.setMenuName(cmsShowMenuList.get(i).getMenuName());
					vo.setMenuUrl(cmsShowMenuList.get(i).getMenuUrl());
					vo.setParentId(cmsShowMenuList.get(i).getParentId());
					vo.setSort(cmsShowMenuList.get(i).getSort());
					vo.setIsdel(cmsShowMenuList.get(i).getIsdel());
					vo.setSgin(cmsShowMenuList.get(i).getSign());
					vo.setState("closed");
					List<CmsShowMenuVO> menuList=new ArrayList<CmsShowMenuVO>();
					for(int j=0;j<cmsShowMenuList.size();j++){
						CmsShowMenu menu=cmsShowMenuList.get(j);
						if(cmsShowMenuList.get(i).getMenuId().equals(menu.getParentId())){
							CmsShowMenuVO vo1=new CmsShowMenuVO();
							vo1.setMenuId(cmsShowMenuList.get(j).getMenuId());
							vo1.setMenuName(cmsShowMenuList.get(j).getMenuName());
							vo1.setMenuUrl(cmsShowMenuList.get(j).getMenuUrl());
							vo1.setParentId(cmsShowMenuList.get(j).getParentId());
							vo1.setSort(cmsShowMenuList.get(j).getSort());
							vo1.setIsdel(cmsShowMenuList.get(j).getIsdel());
							vo1.setSgin(cmsShowMenuList.get(j).getSign());
							vo1.setState("closed");
							List<CmsShowMenuVO> menuList1=new ArrayList<CmsShowMenuVO>();
							for(int k=0;k<cmsShowMenuList.size();k++){
								CmsShowMenu menu1=cmsShowMenuList.get(k);
								if(menu1.getParentId().equals(menu.getMenuId())){
									CmsShowMenuVO cvo=new CmsShowMenuVO();
									cvo.setMenuId(menu1.getMenuId());
									cvo.setMenuName(menu1.getMenuName());
									cvo.setParentId(menu1.getParentId());
									cvo.setMenuUrl(menu1.getMenuUrl());
									cvo.setSort(menu1.getSort());
									cvo.setIsdel(menu1.getIsdel());
									cvo.setSgin(menu1.getSign());
									menuList1.add(cvo);
								}
							}
							vo1.setChildren(menuList1);
							menuList.add(vo1);
							//menuList.add(menu);
						}
					}
					vo.setChildren(menuList);
					voList1.add(vo);
				}
			}
			return voList1;
		}else{
			return null;
		}
	}
	
	/**
	 * 获取菜单总行数
	 */
	@Override
	public Object getCountMenu(String hql){
		return	dao.countObjects("select count(a) from CmsShowMenu a where 1=1 and a.isdel=0 ");
	}
	/**
	 * 添加文章
	 */
	@Override
	public boolean updateArticle(CmsArticle cmsArticle){
		return dao.updateObject(cmsArticle);
	}
	/**
	 * 添加文章
	 */
	@Override
	public boolean saveArticle(CmsArticle cmsArticle){
		return dao.saveObject(cmsArticle);
	}
	/**
	 * 获取文章列表
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<CmsArticle> getarticleList(String hql,int satrt,int page) {
		StringBuilder sb=new StringBuilder("select a from CmsArticle a where a.isdel=0 ");
		if(!"".equals(hql) && hql!=null){
			sb.append(hql);
		}
		sb.append(" order by a.articleDate desc");
		List<CmsArticle> list=dao.getobjList(sb.toString(),satrt,page);
		if(list!=null && list.size()>0){
			return list;
		}else{
			return null;
		}
	}
	/**
	 * 获取文章总行数
	 */
	@Override
	public Object getCountArticle(String hql) {
		StringBuilder sb=new StringBuilder("select count(a) from CmsArticle a where isdel=0 ");
		sb.append(hql);
		return dao.countObjects(sb.toString());
	}
	/**
	 * 删除文章
	 */
	@Override
	public boolean deleteArticle(String[] id) {
		if(id!=null && id.length>0){
			for(String articleId:id){
				CmsArticle cmsArticle=(CmsArticle)dao.getObjects("select a from CmsArticle a where isdel=0 and articleId="+articleId+"").get(0);
				cmsArticle.setIsdel(1);
				dao.updateObject(cmsArticle);
			}
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 * 通过ID获取文章对象
	 */
	@SuppressWarnings("unchecked")
	@Override
	public CmsArticle getOneArtocle(int id){
		List<CmsArticle> CmsArticleList = dao.getObjects("from CmsArticle a where a.isdel=0 and a.articleId="+id+"");
		if(CmsArticleList!=null && CmsArticleList.size()>0){
			return CmsArticleList.get(0);
		}else{
			return null;			
		}
	}
	
	
	/**
	 * 获取前台首页滚动新闻列表
	 * @return
	 */
	public List<CmsArticle> getArtListByRollsHome(String where) {
		StringBuffer sb = new StringBuffer("select a from CmsArticle a,CmsShowMenu s where a.isdel=0 and a.rolls=1 and a.menuId=s.menuId ");
		if(where!=null){
			sb.append(where);
		}
		try {
			List<CmsArticle> CmsArticleList = dao.getObjects(sb.toString());
			if(CmsArticleList!=null && CmsArticleList.size()>0){
				return CmsArticleList;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return null;
	}
	
	
	public ArticleDao getDao() {
		return dao;
	}

	public void setDao(ArticleDao dao) {
		this.dao = dao;
	}
	/**
	 * 获取单条文章，按导航id和是否展示查找
	 */
	@SuppressWarnings("unchecked")
	public CmsArticle getOneArtocleBymeanid(String meanid) {
		try {
			List<CmsArticle> CmsArticleList = dao.getObjects("from CmsArticle where isdel=0 and menuId="+meanid+" and shows=1 ");
			if(CmsArticleList!=null && CmsArticleList.size()>0){
				return CmsArticleList.get(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return null;
	}

	/**
	 * 前台搜索功能（根据内容模糊查询）
	 */
	@Override
	public List<CmsArticle> serachArticle(String where,String sql) {
		StringBuilder sb=new StringBuilder("select * from (select * from (select * from cms_article where isdel=0 order by article_id desc) a  group by menu_id) b left join cms_show_menu s on b.menu_id=s.menu_id where b.article_content like '%"+where+"%'");
		if(sql!=null && !"".equals(sql)){
			sb.append(sql);
		}
		try {
			List<CmsArticle> list=dao.getLikeArt(sb.toString());
			if(list!=null && list.size()>0){
				for (int i = 0; i < list.size(); i++) {
					String content = list.get(i).getArticleContent().replaceAll("<[^>]+>", "");
					if(content.indexOf(where)==-1){
						list.remove(i);
						i--;
					}
				}
				return list;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * 获取全部导航
	 */
	@Override
	public List<CmsShowMenu> findMenu(String hql) {
		StringBuilder sb=new StringBuilder("from CmsShowMenu where isdel=0 ");
		try {
			List<CmsShowMenu> list=dao.getObjects(sb.toString());
			if(list!=null && list.size()>0){
				return list;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * 修改shows 或者 rolls 状态
	 */
	@Override
	public boolean updateByColumn(String setCloumn,String value,String whereCloumn,String id) {
		try {
			StringBuffer sb = new StringBuffer("update cms_article set ");
			sb.append(setCloumn).append("=").append(value);
			sb.append(" where ").append(whereCloumn).append("=").append(id);
			return dao.updateByColumn(sb.toString());
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean updateShowsOrRollsById(String cloumn, String value, String id) {
		try {
			StringBuffer sb = new StringBuffer("update cms_article set ");
			sb.append(cloumn).append("=").append(value);
			sb.append(" where article_id=").append(id);
			return dao.updateByColumn(sb.toString());
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
