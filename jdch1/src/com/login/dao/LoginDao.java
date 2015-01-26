package com.login.dao;

import com.login.pojo.CmsAdminUser;

public interface LoginDao {
	public CmsAdminUser login(String adminName,String adminPwd);
}
