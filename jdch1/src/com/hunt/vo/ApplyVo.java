package com.hunt.vo;

public class ApplyVo {
	private String applyId;
	private String articleTitle;
	private String userName;
	private String value;
	private String isdel;
	private String applyDate;
	
	public ApplyVo() {
		super();
	}
	public ApplyVo(String applyId, String articleTitle, String userName,
			String value, String isdel,String applyDate) {
		super();
		this.applyId = applyId;
		this.articleTitle = articleTitle;
		this.userName = userName;
		this.value = value;
		this.isdel = isdel;
		this.applyDate = applyDate;
	}
	public String getApplyId() {
		return applyId;
	}
	public void setApplyId(String applyId) {
		this.applyId = applyId;
	}
	public String getArticleTitle() {
		return articleTitle;
	}
	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public String getIsdel() {
		return isdel;
	}
	public void setIsdel(String isdel) {
		this.isdel = isdel;
	}
	public String getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(String applyDate) {
		this.applyDate = applyDate;
	}
}
