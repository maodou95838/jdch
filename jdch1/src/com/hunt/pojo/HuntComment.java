package com.hunt.pojo;

/**
 * HuntComment entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class HuntComment implements java.io.Serializable {

	// Fields

	private Integer commentId;
	private String commentContent;
	private Integer userId;
	private String commentDate;
	private Integer isdel;

	// Constructors

	/** default constructor */
	public HuntComment() {
	}

	/** full constructor */
	public HuntComment(String commentContent, Integer userId,
			String commentDate, Integer isdel) {
		this.commentContent = commentContent;
		this.userId = userId;
		this.commentDate = commentDate;
		this.isdel = isdel;
	}

	// Property accessors

	public Integer getCommentId() {
		return this.commentId;
	}

	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}

	public String getCommentContent() {
		return this.commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getCommentDate() {
		return this.commentDate;
	}

	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}

	public Integer getIsdel() {
		return this.isdel;
	}

	public void setIsdel(Integer isdel) {
		this.isdel = isdel;
	}

}