package com.hunt.dao;

import java.util.List;

import com.hunt.vo.ApplyVo;

public interface ApplyDao {
	@SuppressWarnings("unchecked")
	public List findAllApply(String where,Integer begin,Integer end);
	public Object findApplyPageCount(String where);
	public ApplyVo getApplyById(String id);
	public void delete(String sql);
}
