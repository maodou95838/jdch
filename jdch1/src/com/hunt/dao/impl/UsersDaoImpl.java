package com.hunt.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import com.common.dao.DaoTool;
import com.hunt.dao.UsersDao;

public class UsersDaoImpl implements UsersDao{
	@Resource
	private DaoTool daoTool;
	
	@SuppressWarnings("unchecked")
	public List findAllUsers(String where,Integer begin,Integer end) {
		StringBuffer hql = new StringBuffer(" from HuntUsers u where 1=1 and isdel=0 ");
		if(!"".equals(where) && where!=null)
		{
			hql.append(where);
		}
		try {
			List list = daoTool.createQuery(hql.toString(), begin, end);
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public Object findUsersPageCount(String where) {
		StringBuffer hql = new StringBuffer(" select count(*) from HuntUsers u where 1=1 and isdel=0 ");
		if(!"".equals(where) && where!=null)
		{
			hql.append(where);
		}
		try {
			Object obj = daoTool.createQueryInteger(hql.toString());
			return obj;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public void delete(String sql) {
		try {
			daoTool.createSQLUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public DaoTool getDaoTool() {
		return daoTool;
	}
	public void setDaoTool(DaoTool daoTool) {
		this.daoTool = daoTool;
	}

	
	
	
}
