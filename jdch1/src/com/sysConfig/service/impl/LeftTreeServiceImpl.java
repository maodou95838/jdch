package com.sysConfig.service.impl;

import java.util.List;

import com.sysConfig.dao.LeftTreeDao;
import com.sysConfig.service.LeftTreeService;

public class LeftTreeServiceImpl implements LeftTreeService{
	private LeftTreeDao leftTreeDao;
	
	
	@SuppressWarnings("unchecked")
	public List findLeftTree(String where) {
		try {
			return leftTreeDao.findLeftTree(where);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public LeftTreeDao getLeftTreeDao() {
		return leftTreeDao;
	}
	public void setLeftTreeDao(LeftTreeDao leftTreeDao) {
		this.leftTreeDao = leftTreeDao;
	}
	
}
