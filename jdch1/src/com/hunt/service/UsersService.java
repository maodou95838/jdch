package com.hunt.service;

import java.util.List;

public interface UsersService {
	@SuppressWarnings("unchecked")
	public List findAllUsers(String where,Integer begin,Integer end);
	public Object findUsersPageCount(String where);
	public void deleteUsers(String where);
}
