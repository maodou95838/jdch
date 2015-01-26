package com.hunt.service;

import java.util.List;

import com.hunt.vo.ApplyVo;

public interface ApplyService {
	@SuppressWarnings("unchecked")
	public List findAllApply(String where,Integer begin,Integer end);
	public Object findApplyPageCount(String where);
	public ApplyVo getApplyById(String id);
	public void deleteApply(String where);
}
