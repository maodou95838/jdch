package com.login.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import com.common.dao.DaoTool;
import com.common.dao.impl.JdbcTool;
import com.login.dao.LoginDao;
import com.login.pojo.CmsAdminUser;

public class LoginDaoImpl implements LoginDao{
	@Resource
	private DaoTool daoTool;
	@Resource
	private JdbcTool jdbcTool;
	
	@SuppressWarnings("unchecked")
	public CmsAdminUser login(String adminName, String adminPwd) {
		StringBuffer sb = new StringBuffer(" from CmsAdminUser as u where u.adminName='"+adminName+"' and u.adminPwd='"+adminPwd+"'");
		CmsAdminUser cmsAdminUser =null;
		try {
			List list = daoTool.find(sb.toString());
			if(list != null && list.size()>0){
				cmsAdminUser = (CmsAdminUser)list.get(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cmsAdminUser;
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
