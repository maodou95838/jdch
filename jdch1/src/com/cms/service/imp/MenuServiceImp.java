package com.cms.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.cms.dao.MenuDao;
import com.cms.pojo.CmsShowMenu;
import com.cms.service.MenuService;
import com.cms.vo.CmsShowMenuVO;
import com.common.dao.impl.JdbcTool;

public class MenuServiceImp implements MenuService {
	private MenuDao dao;
	
	/**
	 * 获取所有菜单集合
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<CmsShowMenuVO> getMenuList(String hql) {
		List<CmsShowMenuVO> voList1=new ArrayList<CmsShowMenuVO>();
		StringBuilder sb=new StringBuilder(" from CmsShowMenu where 1=1 and isdel=0 ");
		if(hql!=null){
			sb.append(hql);
		}
		sb.append(" order by languages, sort asc");
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
					vo.setLanguages(cmsShowMenuList.get(i).getLanguages());
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
							vo1.setLanguages(cmsShowMenuList.get(j).getLanguages());
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
									cvo.setLanguages(menu1.getLanguages());
									menuList1.add(cvo);
								}
							}
							vo1.setChildren(menuList1);
							menuList.add(vo1);
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
	 * 添加一级菜单
	 */
	@Override
	public boolean saveMenu(CmsShowMenu cmsShowMenu) {
		return dao.saveObject(cmsShowMenu);
	}
	/**
	 * 获取顶级导航列表
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<CmsShowMenu> getCmsShowMenu(String pid){
		List<CmsShowMenu> cmsShowMenuList = dao.getObjects("from CmsShowMenu a where a.isdel=0 and a.parentId='"+Integer.parseInt(pid)+"' order by a.menuId asc");
		if(cmsShowMenuList!=null && cmsShowMenuList.size()>0){
			return cmsShowMenuList;
		}else{
			return null;			
		}
	}
	/**
	 * 通过ID获取导航对象
	 */
	@SuppressWarnings("unchecked")
	@Override
	public CmsShowMenu getOneMenu(int id){
		List<CmsShowMenu> cmsShowMenuList = dao.getObjects("from CmsShowMenu a where a.isdel=0 and a.menuId="+id+"");
		if(cmsShowMenuList!=null && cmsShowMenuList.size()>0){
			return cmsShowMenuList.get(0);
		}else{
			return null;			
		}
	}
	/**
	 * 修改导航
	 */
	@Override
	public boolean updateMenu(CmsShowMenu cmsShowMenu){
		return dao.updateObject(cmsShowMenu);
	}
	
	/**
	 * 获取二级导航list
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<CmsShowMenu> getCmsMenus(int parentId){
		List<CmsShowMenu> list=dao.getObjects(" from CmsShowMenu a where a.isdel=0 and a.parentId="+parentId);
		if(list!=null && list.size()>0){
			return list;
		}else{
			return null;
		}
	}
	
	
	/**
	 * 检查导航名称是否有重复
	 * id:导航的父Id
	 * name:导航的名字
	 * **/
	@Override
	public boolean check(String id, String name) {
		// TODO Auto-generated method stub
		StringBuilder sb = new StringBuilder("select c from CmsShowMenu c where 1=1 and isdel=0");
		try {
			if(id!=null && name!=null){
				sb.append(" and c.parentId=").append(Integer.parseInt(id));
				sb.append(" and c.menuName='").append(name).append("'");
			}
			List<CmsShowMenu> list = dao.getObjects(sb.toString());
			if(list!=null && list.size()>0)
				return false;
			else
				return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
	
	
	
	public MenuDao getDao() {
		return dao;
	}

	public void setDao(MenuDao dao) {
		this.dao = dao;
	}

	@Override
	public List serchMean(String where) {
		try {
			StringBuffer hql = new StringBuffer("from  CmsShowMenu where isdel=0 "); 
			if(where!=null){
				hql.append(where);
			}
			hql.append(" order by sort ");
			List<CmsShowMenu> cmsShowMenuList=dao.getObjects(hql.toString());
			if(cmsShowMenuList!=null && cmsShowMenuList.size()>0){
				if(cmsShowMenuList!=null && cmsShowMenuList.size()>0){
					return cmsShowMenuList;
				}
			}
			return null;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	
	@Override
	public boolean deleteDH(String id) {
		// TODO Auto-generated method stub
		CmsShowMenu cmsShowMenu =getOneMenu(Integer.parseInt(id));
		Boolean bb=false;
		if(cmsShowMenu!=null){
			cmsShowMenu.setIsdel(1);
			bb=updateMenu(cmsShowMenu);
			if(cmsShowMenu.getParentId()==0){
				List<CmsShowMenu> cmsShowMenusList=getCmsMenus(cmsShowMenu.getMenuId());
				if(cmsShowMenusList!=null && cmsShowMenusList.size()>0){
					for(CmsShowMenu menu:cmsShowMenusList){
						menu.setIsdel(1);
						bb=updateMenu(menu);
						List<CmsShowMenu> threeMenuList=getCmsMenus(menu.getMenuId());
						if(threeMenuList!=null && threeMenuList.size()>0){
							for (CmsShowMenu threemenu:threeMenuList) {
								try {
									threemenu.setIsdel(1000);
									bb=updateMenu(threemenu);
									//throw new Exception();
								} catch (Exception e) {
									// TODO Auto-generated catch block
									bb=false;
									e.printStackTrace();
								}
							}
						}
					}
				}
			}
		}
		return bb;
	}

	@Override
	public boolean updateByLanguages(String url,String languages,String where) {
		try {
			StringBuffer sb =new StringBuffer("update cms_show_menu set menu_url='"+url+"',languages="+languages+" where menu_id in ("+where+")");
			//sb.append(where);
			return dao.updateByLanguages(sb.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<CmsShowMenu> findMenuIdAll(String id) {
		try {
			StringBuffer sb = new StringBuffer("select menu_id from cms_show_menu where menu_id="+id+" or parent_id="+id+" or menu_id in (select menu_id from cms_show_menu where parent_id in( select menu_id from cms_show_menu where parent_id="+id+"))");
			List<CmsShowMenu> list = dao.findMenuIdAll(sb.toString());
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
