package com.hunt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.hunt.dao.UsersDao;
import com.hunt.service.UsersService;

public class UsersServiceImpl implements UsersService{
	@Resource
	private UsersDao usersDao;
	
	@SuppressWarnings("unchecked")
	public List findAllUsers(String where, Integer begin, Integer end) {
		try {
			return usersDao.findAllUsers(where, begin, end);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public Object findUsersPageCount(String where) {
		try {
			return usersDao.findUsersPageCount(where);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public void deleteUsers(String where) {
		StringBuffer sql = new StringBuffer("update hunt_users set isdel=1  where user_id in ("+where+")");
		try {
			usersDao.delete(sql.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public UsersDao getUsersDao() {
		return usersDao;
	}
	public void setUsersDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}
	

	
	
}
