package com.hunt.service.impl;

import java.util.List;

import com.hunt.dao.CommentDao;
import com.hunt.service.CommentService;
import com.hunt.vo.CommentVo;

public class CommentServiceImpl implements CommentService{

	private CommentDao commentDao;
	
	
	@SuppressWarnings("unchecked")
	public List findAllComment(String where, Integer begin, Integer end) {
		try {
			return commentDao.findAllComment(where, begin, end);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public Object findCommentPageCount(String where){
		try {
			return commentDao.findCommentPageCount(where);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public CommentVo getCommentById(String id){
		try {
			return commentDao.getCommentById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public void deleteComment(String where) {
		StringBuffer sql = new StringBuffer("update hunt_comment set isdel=1  where comment_id in ("+where+")");
		try {
			commentDao.delete(sql.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public CommentDao getCommentDao() {
		return commentDao;
	}
	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}
	
	
	
}
