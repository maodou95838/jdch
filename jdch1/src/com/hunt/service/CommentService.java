package com.hunt.service;

import java.util.List;

import com.hunt.vo.CommentVo;

public interface CommentService {
	@SuppressWarnings("unchecked")
	public List findAllComment(String where,Integer begin,Integer end);
	public Object findCommentPageCount(String where);
	public CommentVo getCommentById(String id);
	public void deleteComment(String where);
}
