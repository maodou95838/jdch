package com.cms.dao.imp;

import java.util.List;

import javax.annotation.Resource;

import com.cms.dao.MenuDao;
import com.cms.pojo.CmsShowMenu;
import com.common.dao.DaoTool;
import com.common.dao.impl.JdbcTool;
@SuppressWarnings("unchecked")
public class MenuDaoImp implements MenuDao {
	
	@Resource
	private DaoTool daoTool;
	@Resource
	private JdbcTool jdbcTool;
	
	/**
	 * 获取集合带分页
	 */
	@Override
	public List getObjList(String hql, int start, int end) {
		List list=daoTool.createQuery(hql, start, end);
		if(list!=null && list.size()>0){
			return list;
		}else{
			return null;
		}
	}
	
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
		try {
			List list=daoTool.find(hql);
			if(list!=null && list.size()>0){
				return list;
			}else{
				return null;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
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
	
	@Override
	public boolean updateByLanguages(String sql) {
		try {
			//jdbcTool.update(sql);
			daoTool.createSQLUpdate(sql);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
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
	public List<CmsShowMenu> findMenuIdAll(String sql) {
		try {
			//List<CmsShowMenu> list = jdbcTool.queryForList(sql, CmsShowMenu.class);
			List list =daoTool.createSQLList(sql);
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}


}
