package com.login.service.impl;

import javax.annotation.Resource;

import com.login.dao.LoginDao;
import com.login.pojo.CmsAdminUser;
import com.login.service.LoginService;

public class LoginServiceImpl implements LoginService{
	@Resource
	private LoginDao loginDao;
	
	public CmsAdminUser login(String adminName, String adminPwd) {
		try {
			return loginDao.login(adminName, adminPwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public LoginDao getLoginDao() {
		return loginDao;
	}
	public void setLoginDao(LoginDao loginDao) {
		this.loginDao = loginDao;
	}

}
