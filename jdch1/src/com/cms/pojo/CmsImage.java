package com.cms.pojo;

/**
 * CmsImage entity. @author MyEclipse Persistence Tools
 */

public class CmsImage implements java.io.Serializable {

	// Fields

	private Integer imgId;
	private String imgContent;
	private String imgPath;
	private Integer imgAlbum;
	private Integer isdel;
	private Integer parentId;
	private Integer shows;

	// Constructors

	/** default constructor */
	public CmsImage() {
	}

	/** full constructor */
	public CmsImage(String imgContent, String imgPath, Integer imgAlbum,
			Integer isdel, Integer parentId, Integer shows) {
		this.imgContent = imgContent;
		this.imgPath = imgPath;
		this.imgAlbum = imgAlbum;
		this.isdel = isdel;
		this.parentId = parentId;
		this.shows = shows;
	}

	// Property accessors

	public Integer getImgId() {
		return this.imgId;
	}

	public void setImgId(Integer imgId) {
		this.imgId = imgId;
	}

	public String getImgContent() {
		return this.imgContent;
	}

	public void setImgContent(String imgContent) {
		this.imgContent = imgContent;
	}

	public String getImgPath() {
		return this.imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	public Integer getImgAlbum() {
		return this.imgAlbum;
	}

	public void setImgAlbum(Integer imgAlbum) {
		this.imgAlbum = imgAlbum;
	}

	public Integer getIsdel() {
		return this.isdel;
	}

	public void setIsdel(Integer isdel) {
		this.isdel = isdel;
	}

	public Integer getParentId() {
		return this.parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public Integer getShows() {
		return this.shows;
	}

	public void setShows(Integer shows) {
		this.shows = shows;
	}

}