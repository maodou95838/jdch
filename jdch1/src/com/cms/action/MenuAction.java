package com.cms.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JSONSerializer;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.log4j.Logger;

import com.cms.pojo.CmsShowMenu;
import com.cms.service.MenuService;
import com.cms.vo.CmsShowMenuVO;
import com.common.action.BaseAction;
import com.common.util.StringUtil;

public class MenuAction extends BaseAction {
	private static final long serialVersionUID = 2236309816909044238L;
	private MenuService menuService;
	private JSONObject result;
	private Integer page;
	private Integer rows;
	Logger log = Logger.getLogger(MenuAction.class);
	
	/**
	 * 获取全部菜单(一级,二级)
	 */
	public void menuList(){
		StringBuffer  sb = new StringBuffer("");
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		List<CmsShowMenuVO> cmsShowMenuVOs=menuService.getMenuList(sb.toString());
		jsonMap.put("rows", cmsShowMenuVOs);
		result = JSONObject.fromObject(jsonMap);
		try {
			StringUtil.responseText(result.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
/*	*//**
	 * 添加顶级导航
	 *//*
	public void addMenu(){
		String menuName = this.getRequest().getParameter("menuName") == null ? "": this.getRequest().getParameter("menuName").trim();
		String menuUrl = this.getRequest().getParameter("menuUrl") == null ? "": this.getRequest().getParameter("menuUrl").trim();
		String sort = this.getRequest().getParameter("sort") == null ? "": this.getRequest().getParameter("sort").trim();
		CmsShowMenu cmsShowMenu = new CmsShowMenu(0,menuName,menuUrl,"".equals(sort)?0:Integer.parseInt(sort),0);
		Boolean bb=menuService.saveMenu(cmsShowMenu);
		try {
			StringUtil.responseText2(this.getResponse(),bb.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	*//**
	 * 添加导航
	 *//*
	public void addMenu2(){
		String parentMenu = this.getRequest().getParameter("parentMenu") == null ? "": this.getRequest().getParameter("parentMenu").trim();
		String menuName = this.getRequest().getParameter("menuName") == null ? "": this.getRequest().getParameter("menuName").trim();
		String menuUrl = this.getRequest().getParameter("menuUrl") == null ? "": this.getRequest().getParameter("menuUrl").trim();
		String sort = this.getRequest().getParameter("sort") == null ? "": this.getRequest().getParameter("sort").trim();
		CmsShowMenu cmsShowMenu = new CmsShowMenu(Integer.parseInt(parentMenu),menuName,menuUrl,"".equals(sort)?0:Integer.parseInt(sort),0);
		Boolean bb=menuService.saveMenu(cmsShowMenu);
		try {
			StringUtil.responseText2(this.getResponse(),bb.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}*/
	
	/**
	 * 添加导航
	 */
	public void addMenus(){
		String parentMenu = this.getRequest().getParameter("parentId") == null ? "0" : this.getRequest().getParameter("parentId").trim();
		String menuName = this.getRequest().getParameter("menuName") == null ? "" : this.getRequest().getParameter("menuName").trim();
		String menuUrl = this.getRequest().getParameter("menuUrl") == null ? "" : this.getRequest().getParameter("menuUrl").trim();
		String sort = this.getRequest().getParameter("sort") == null ? "" : this.getRequest().getParameter("sort").trim();
		String sign = this.getRequest().getParameter("sign") == null ? "0" : this.getRequest().getParameter("sign").trim();
		String languages = this.getRequest().getParameter("languages") == null ? "0" : this.getRequest().getParameter("languages");
		try {												
			if(checkName(parentMenu, menuName)){
				CmsShowMenu cmsShowMenu = new CmsShowMenu();
				cmsShowMenu.setIsdel(0);
				cmsShowMenu.setMenuUrl(menuUrl);
				cmsShowMenu.setMenuName(menuName);
				cmsShowMenu.setParentId(Integer.parseInt(parentMenu));
				cmsShowMenu.setSort(Integer.parseInt(sort));
				cmsShowMenu.setSign(Integer.parseInt(sign));
				cmsShowMenu.setLanguages(Integer.parseInt(languages));
				Boolean bb=menuService.saveMenu(cmsShowMenu);
				StringUtil.responseText2(this.getResponse(), bb.toString());
			}else{
				StringUtil.responseText2(this.getResponse(), "1");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	/**
	 * 检查重复
	 * **/
	public boolean checkName(String id,String name){
		if(id!=null && id.length()>0 && name!=null && name.length()>0){
			return menuService.check(id, name);
		}else{
			return false;
		}
	}
	
	/**
	 *通过3级Id获取导航 
	 */
	public void getMenus(){
			String pid = this.getRequest().getParameter("parentId")==null?"0":this.getRequest().getParameter("parentId");
			JSONArray gysJson = new JSONArray();
			if(pid!=null && pid!="0"){
				CmsShowMenu cmsShowMenu=menuService.getOneMenu(Integer.parseInt(pid));
				pid = cmsShowMenu.getParentId().toString();
			}
			List<CmsShowMenu> menuList = menuService.getCmsShowMenu(pid);
			if(menuList!=null && menuList.size()>0){
				for(CmsShowMenu cmsShowMenu:menuList){
					gysJson.add(cmsShowMenu);
				}
			}
			try {
				StringUtil.responseText(gysJson.toString());
			} catch (Exception e) {
				e.printStackTrace();
			}
	}
	/**
	 *获取导航 
	 */
	public void getMenu(){
		String pid = this.getRequest().getParameter("parentId")==null?"0":this.getRequest().getParameter("parentId");
		JSONArray gysJson = new JSONArray();
		List<CmsShowMenu> menuList = menuService.getCmsShowMenu(pid);
		if(menuList!=null && menuList.size()>0){
			for(CmsShowMenu cmsShowMenu:menuList){
				gysJson.add(cmsShowMenu);
			}
		}
		try {
			StringUtil.responseText(gysJson.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 通过Id获取导航
	 */
	public void getOneMenu() {
		String menuId = this.getRequest().getParameter("menuId") == null ? "0" : this.getRequest().getParameter("menuId").trim();
		String sgin = this.getRequest().getParameter("sgin") == null ? "" : this.getRequest().getParameter("sgin").trim();
		try {
			CmsShowMenu cmsShowMenu=menuService.getOneMenu(Integer.parseInt(menuId));
			CmsShowMenuVO cmsShowMenuVo= new CmsShowMenuVO(); 
			BeanUtils.copyProperties(cmsShowMenuVo, cmsShowMenu);
			JSONObject obj=null;
			if(sgin!=null && sgin.equals("1")){
				CmsShowMenu cmsMenu = menuService.getOneMenu(cmsShowMenu.getParentId());
				cmsShowMenuVo.setGradName(cmsMenu.getMenuName());
				cmsShowMenuVo.setGradId(cmsMenu.getMenuId());
				cmsShowMenuVo.setLanguages(cmsMenu.getLanguages());
				obj  = (JSONObject) JSONSerializer.toJSON(cmsShowMenuVo);  
			}else if(sgin!=null && sgin.equals("2")){
				CmsShowMenu cmsMenu = menuService.getOneMenu(cmsShowMenu.getParentId());
				cmsShowMenuVo.setParentId(cmsShowMenu.getParentId());
				cmsShowMenuVo.setParentName(cmsMenu.getMenuName());
				cmsShowMenuVo.setGradName(menuService.getOneMenu(cmsMenu.getParentId()).getMenuName());
				cmsShowMenuVo.setGradId(menuService.getOneMenu(cmsMenu.getParentId()).getMenuId());
				cmsShowMenuVo.setLanguages(cmsMenu.getLanguages());
				obj  = (JSONObject) JSONSerializer.toJSON(cmsShowMenuVo);  
			}else
				obj  = (JSONObject) JSONSerializer.toJSON(cmsShowMenu);  
			StringUtil.responseText(obj.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 修改导航
	 */
	public void updateMenu(){
		String dhj = this.getRequest().getParameter("dhj");
		String oldName = this.getRequest().getParameter("oldName");
		String oldpid  = this.getRequest().getParameter("oldpid");
		String menuId = this.getRequest().getParameter("menuId") == null ? "": this.getRequest().getParameter("menuId").trim();
		String parentId = this.getRequest().getParameter("parentId") == null ? "": this.getRequest().getParameter("parentId").trim();
		String menuName = this.getRequest().getParameter("menuName") == null ? "": this.getRequest().getParameter("menuName").trim();
		String menuUrl = this.getRequest().getParameter("menuUrl") == null ? "": this.getRequest().getParameter("menuUrl").trim();
		String sort = this.getRequest().getParameter("sort") == null ? "": this.getRequest().getParameter("sort").trim();
		String gradId = this.getRequest().getParameter("gradId") == null ? "": this.getRequest().getParameter("gradId").trim();
		String languages =  this.getRequest().getParameter("languages") == null ? "0": this.getRequest().getParameter("languages");
		try {
			if(dhj!=null && dhj.equals("1"))
				parentId=gradId;
			boolean bool = false;
			if(oldName.equals(menuName)&& oldpid.equals(parentId))
				bool = true;
			else
				bool = checkName(parentId, menuName);
			if(bool){
				CmsShowMenu cmsShowMenu = menuService.getOneMenu(Integer.parseInt(menuId));
				cmsShowMenu.setMenuName(menuName);
				cmsShowMenu.setMenuUrl(menuUrl);
				cmsShowMenu.setSort("".equals(sort)?0:Integer.parseInt(sort));
				cmsShowMenu.setParentId("".equals(parentId)?0:Integer.parseInt(parentId));
				cmsShowMenu.setLanguages(Integer.parseInt(languages));
				if("0".equals(dhj)){
					List list= menuService.findMenuIdAll(menuId);
					String strid ="";
					for (int i = 0; i < list.size(); i++) {
						strid+=list.get(i)+",";
					}
					strid= strid.substring(0,strid.length()-1);
					menuService.updateByLanguages(menuUrl, languages, strid);
				}
				Boolean bb=menuService.updateMenu(cmsShowMenu);
				if(bb)
					StringUtil.responseText2(this.getResponse(), "true");
			}else
				StringUtil.responseText2(this.getResponse(), "1");
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
	/**
	 * 删除导航
	 */
	public void deleteMenu(){
		String temp = this.getRequest().getParameter("temp") == null ? "": this.getRequest().getParameter("temp").trim();
		Boolean bb = menuService.deleteDH(temp);
		try {
			StringUtil.responseText2(this.getResponse(),bb.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public String serchMean(){
		try {
			List list=menuService.serchMean(null);
			this.getRequest().setAttribute("meanlist", list);
			return "ok";
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public void findAllMean(){
		String languages =  this.getRequest().getParameter("languages") == null ? "0": this.getRequest().getParameter("languages");
		StringBuffer  sb = new StringBuffer("");
		if("1".equals(languages)){
			sb.append(" and languages=").append(languages).append(" ");
		}else{
			sb.append(" and languages=0 ");
		}
		try {
			List<CmsShowMenu> list=menuService.serchMean(sb.toString());
			List<Object> jsonMap = new ArrayList<Object>();
			for(CmsShowMenu me : list)
			{
				JSONObject jo = JSONObject.fromObject(me);
				jsonMap.add(jo);
			}
			StringUtil.responseText(jsonMap.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public MenuService getMenuService() {
		return menuService;
	}

	public void setMenuService(MenuService menuService) {
		this.menuService = menuService;
	}

	public JSONObject getResult() {
		return result;
	}

	public void setResult(JSONObject result) {
		this.result = result;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	
}
