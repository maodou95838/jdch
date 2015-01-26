package com.login.pojo;

/**
 * CmsAdminUser entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class CmsAdminUser implements java.io.Serializable {

	// Fields

	private Integer adminId;
	private String adminName;
	private String adminPwd;
	private String adminPhone;
	private String adminEmail;

	// Constructors

	/** default constructor */
	public CmsAdminUser() {
	}

	/** full constructor */
	public CmsAdminUser(String adminName, String adminPwd, String adminPhone,
			String adminEmail) {
		this.adminName = adminName;
		this.adminPwd = adminPwd;
		this.adminPhone = adminPhone;
		this.adminEmail = adminEmail;
	}

	// Property accessors

	public Integer getAdminId() {
		return this.adminId;
	}

	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}

	public String getAdminName() {
		return this.adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminPwd() {
		return this.adminPwd;
	}

	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}

	public String getAdminPhone() {
		return this.adminPhone;
	}

	public void setAdminPhone(String adminPhone) {
		this.adminPhone = adminPhone;
	}

	public String getAdminEmail() {
		return this.adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}

}