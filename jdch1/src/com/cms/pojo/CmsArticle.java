package com.cms.pojo;

/**
 * CmsArticle entity. @author MyEclipse Persistence Tools
 */

public class CmsArticle implements java.io.Serializable {

	// Fields

	private Integer articleId;
	private Integer menuId;
	private String articleTitle;
	private String articleContent;
	private String articleImg;
	private String articleDate;
	private Integer isdel;
	private Integer shows;
	private Integer rolls;

	// Constructors

	/** default constructor */
	public CmsArticle() {
	}

	/** full constructor */
	public CmsArticle(Integer menuId, String articleTitle,
			String articleContent, String articleImg, String articleDate,
			Integer isdel, Integer shows, Integer rolls) {
		this.menuId = menuId;
		this.articleTitle = articleTitle;
		this.articleContent = articleContent;
		this.articleImg = articleImg;
		this.articleDate = articleDate;
		this.isdel = isdel;
		this.shows = shows;
		this.rolls = rolls;
	}

	// Property accessors

	public Integer getArticleId() {
		return this.articleId;
	}

	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}

	public Integer getMenuId() {
		return this.menuId;
	}

	public void setMenuId(Integer menuId) {
		this.menuId = menuId;
	}

	public String getArticleTitle() {
		return this.articleTitle;
	}

	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}

	public String getArticleContent() {
		return this.articleContent;
	}

	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}

	public String getArticleImg() {
		return this.articleImg;
	}

	public void setArticleImg(String articleImg) {
		this.articleImg = articleImg;
	}

	public String getArticleDate() {
		return this.articleDate;
	}

	public void setArticleDate(String articleDate) {
		this.articleDate = articleDate;
	}

	public Integer getIsdel() {
		return this.isdel;
	}

	public void setIsdel(Integer isdel) {
		this.isdel = isdel;
	}

	public Integer getShows() {
		return this.shows;
	}

	public void setShows(Integer shows) {
		this.shows = shows;
	}

	public Integer getRolls() {
		return this.rolls;
	}

	public void setRolls(Integer rolls) {
		this.rolls = rolls;
	}

}