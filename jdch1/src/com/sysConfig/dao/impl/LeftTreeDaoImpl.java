package com.sysConfig.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import com.common.dao.DaoTool;
import com.common.dao.impl.JdbcTool;
import com.sysConfig.dao.LeftTreeDao;

public class LeftTreeDaoImpl implements LeftTreeDao{
	@Resource
	private DaoTool daoTool;
	
	@Resource
	private JdbcTool jdbcTool;
	
	@SuppressWarnings("unchecked")
	public List findLeftTree(String where) {
		StringBuffer sb = new StringBuffer(" from CmsAdminMenu m where 1=1 ");
		if(where!=null && !"".equals(where)){
			sb.append(where);
		}
		sb.append(" order by m.sort asc ");
		try {
			List list = daoTool.find(sb.toString());
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
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
	
	
	
}
