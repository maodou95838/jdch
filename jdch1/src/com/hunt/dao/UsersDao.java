package com.hunt.dao;

import java.util.List;

public interface UsersDao {
	@SuppressWarnings("unchecked")
	public List findAllUsers(String where,Integer begin,Integer end);
	public Object findUsersPageCount(String where);
	public void delete(String sql);
}
