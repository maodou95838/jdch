package com.login.service;

import com.login.pojo.CmsAdminUser;

public interface LoginService {
	public CmsAdminUser login(String adminName, String adminPwd);
}
