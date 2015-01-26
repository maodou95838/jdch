package com.cms.vo;

public class CmsArticleVo {
	 private Integer articleId;
	 private String menuName;
	 private Integer menuId;
     private String articleTitle;
     private String articleContent;
     private String articleImg;
     private String articleDate;
     private Integer isdel;
     private Integer djmenuId;
     
	public CmsArticleVo() {
		super();
	}

	public CmsArticleVo(Integer articleId, String menuName,Integer menuId,
			String articleTitle, String articleContent, String articleImg,
			String articleDate, Integer isdel,Integer djmenuId) {
		super();
		this.articleId = articleId;
		this.menuName = menuName;
		this.menuId=menuId;
		this.articleTitle = articleTitle;
		this.articleContent = articleContent;
		this.articleImg = articleImg;
		this.articleDate = articleDate;
		this.isdel = isdel;
		this.djmenuId=djmenuId;
	}

	public Integer getMenuId() {
		return menuId;
	}

	public void setMenuId(Integer menuId) {
		this.menuId = menuId;
	}

	public Integer getDjmenuId() {
		return djmenuId;
	}

	public void setDjmenuId(Integer djmenuId) {
		this.djmenuId = djmenuId;
	}

	public Integer getArticleId() {
		return articleId;
	}

	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public String getArticleTitle() {
		return articleTitle;
	}

	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}

	public String getArticleContent() {
		return articleContent;
	}

	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}

	public String getArticleImg() {
		return articleImg;
	}

	public void setArticleImg(String articleImg) {
		this.articleImg = articleImg;
	}

	public String getArticleDate() {
		return articleDate;
	}

	public void setArticleDate(String articleDate) {
		this.articleDate = articleDate;
	}

	public Integer getIsdel() {
		return isdel;
	}

	public void setIsdel(Integer isdel) {
		this.isdel = isdel;
	}
	
     
}
