package com.hunt.pojo;

/**
 * HuntApply entity. @author MyEclipse Persistence Tools
 */

public class HuntApply implements java.io.Serializable {

	// Fields

	private Integer applyId;
	private Integer articleId;
	private Integer userId;
	private String value;
	private Integer isdel;
	private String applyDate;

	// Constructors

	/** default constructor */
	public HuntApply() {
	}

	/** full constructor */
	public HuntApply(Integer articleId, Integer userId, String value,
			Integer isdel, String applyDate) {
		this.articleId = articleId;
		this.userId = userId;
		this.value = value;
		this.isdel = isdel;
		this.applyDate = applyDate;
	}

	// Property accessors

	public Integer getApplyId() {
		return this.applyId;
	}

	public void setApplyId(Integer applyId) {
		this.applyId = applyId;
	}

	public Integer getArticleId() {
		return this.articleId;
	}

	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getValue() {
		return this.value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public Integer getIsdel() {
		return this.isdel;
	}

	public void setIsdel(Integer isdel) {
		this.isdel = isdel;
	}

	public String getApplyDate() {
		return this.applyDate;
	}

	public void setApplyDate(String applyDate) {
		this.applyDate = applyDate;
	}

}