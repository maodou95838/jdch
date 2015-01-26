package com.hunt.dao;

import java.util.List;

import com.hunt.vo.CommentVo;

public interface CommentDao {
	@SuppressWarnings("unchecked")
	public List findAllComment(String where,Integer begin,Integer end);
	public Object findCommentPageCount(String where);
	public CommentVo getCommentById(String id);
	public void delete(String sql);
}
