package com.hunt.vo;

public class CommentVo {
	private String commentId;
	private String commentContent;
	private String userName;
	private String commentDate;
	private String isdel;
	
	public CommentVo() {
		super();
	}
	
	public CommentVo(String commentId, String commentContent, String userName,
			String commentDate, String isdel) {
		super();
		this.commentId = commentId;
		this.commentContent = commentContent;
		this.userName = userName;
		this.commentDate = commentDate;
		this.isdel = isdel;
	}

	public String getCommentId() {
		return commentId;
	}

	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}

	public String getIsdel() {
		return isdel;
	}

	public void setIsdel(String isdel) {
		this.isdel = isdel;
	}

	
	
}
