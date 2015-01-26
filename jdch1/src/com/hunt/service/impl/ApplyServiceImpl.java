package com.hunt.service.impl;

import java.util.List;

import com.hunt.dao.ApplyDao;
import com.hunt.service.ApplyService;
import com.hunt.vo.ApplyVo;

public class ApplyServiceImpl implements ApplyService{

	private ApplyDao applyDao;

	
	@SuppressWarnings("unchecked")
	@Override
	public List findAllApply(String where, Integer begin, Integer end) {
		try {
			List list = applyDao.findAllApply(where, begin, end);
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public Object findApplyPageCount(String where) {
		try {
			return applyDao.findApplyPageCount(where);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public ApplyVo getApplyById(String id) {
		try {
			return applyDao.getApplyById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public void deleteApply(String where) {
		StringBuffer sql = new StringBuffer("update hunt_apply set isdel=1  where apply_id in ("+where+")");
		try {
			applyDao.delete(sql.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ApplyDao getApplyDao() {
		return applyDao;
	}
	public void setApplyDao(ApplyDao applyDao) {
		this.applyDao = applyDao;
	}
	
}
