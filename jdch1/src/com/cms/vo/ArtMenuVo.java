package com.cms.vo;

public class ArtMenuVo {
	 private Integer articleId;
	 private String articleTitle;
     private String articleContent;
     private String articleImg;
     private String menuId;
     private String menuName;
     private String menuUrl;
     
	public ArtMenuVo() {
		super();
	}
	
	public ArtMenuVo(Integer articleId, String articleTitle,
			String articleContent, String articleImg, String menuId,
			String menuName, String menuUrl) {
		super();
		this.articleId = articleId;
		this.articleTitle = articleTitle;
		this.articleContent = articleContent;
		this.articleImg = articleImg;
		this.menuId = menuId;
		this.menuName = menuName;
		this.menuUrl = menuUrl;
	}

	public Integer getArticleId() {
		return articleId;
	}
	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
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
	public String getMenuId() {
		return menuId;
	}
	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getMenuUrl() {
		return menuUrl;
	}
	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}
     
}
