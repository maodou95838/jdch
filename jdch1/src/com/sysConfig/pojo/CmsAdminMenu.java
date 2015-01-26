package com.sysConfig.pojo;

/**
 * CmsAdminMenu entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class CmsAdminMenu implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String url;
	private Integer parentId;
	private Integer sort;
	private Integer isdel;

	// Constructors

	/** default constructor */
	public CmsAdminMenu() {
	}

	/** full constructor */
	public CmsAdminMenu(String name, String url, Integer parentId,
			Integer sort, Integer isdel) {
		this.name = name;
		this.url = url;
		this.parentId = parentId;
		this.sort = sort;
		this.isdel = isdel;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getParentId() {
		return this.parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
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

}