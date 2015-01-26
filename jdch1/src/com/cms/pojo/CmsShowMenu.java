package com.cms.pojo;

/**
 * CmsShowMenu entity. @author MyEclipse Persistence Tools
 */

public class CmsShowMenu implements java.io.Serializable {

	// Fields

	private Integer menuId;
	private Integer parentId;
	private String menuName;
	private String menuUrl;
	private Integer sort;
	private Integer isdel;
	private Integer sign;
	private Integer languages;

	// Constructors

	/** default constructor */
	public CmsShowMenu() {
	}

	/** minimal constructor */
	public CmsShowMenu(Integer sign) {
		this.sign = sign;
	}

	/** full constructor */
	public CmsShowMenu(Integer parentId, String menuName, String menuUrl,
			Integer sort, Integer isdel, Integer sign, Integer languages) {
		this.parentId = parentId;
		this.menuName = menuName;
		this.menuUrl = menuUrl;
		this.sort = sort;
		this.isdel = isdel;
		this.sign = sign;
		this.languages = languages;
	}

	// Property accessors

	public Integer getMenuId() {
		return this.menuId;
	}

	public void setMenuId(Integer menuId) {
		this.menuId = menuId;
	}

	public Integer getParentId() {
		return this.parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public String getMenuName() {
		return this.menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public String getMenuUrl() {
		return this.menuUrl;
	}

	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}

	public Integer getSort() {
		return this.sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public Integer getIsdel() {
		return this.isdel;
	}

	public void setIsdel(Integer isdel) {
		this.isdel = isdel;
	}

	public Integer getSign() {
		return this.sign;
	}

	public void setSign(Integer sign) {
		this.sign = sign;
	}

	public Integer getLanguages() {
		return this.languages;
	}

	public void setLanguages(Integer languages) {
		this.languages = languages;
	}

}