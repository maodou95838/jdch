package com.hunt.pojo;

/**
 * HuntUsers entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class HuntUsers implements java.io.Serializable {

	// Fields

	private Integer userId;
	private String userName;
	private String password;
	private String userPhone;
	private String userSex;
	private String userCard;
	private String userAddress;
	private String userPic;
	private String userEmail;
	private String value;
	private Integer isdel;

	// Constructors

	/** default constructor */
	public HuntUsers() {
	}

	/** full constructor */
	public HuntUsers(String userName, String password, String userPhone,
			String userSex, String userCard, String userAddress,
			String userPic, String userEmail, String value, Integer isdel) {
		this.userName = userName;
		this.password = password;
		this.userPhone = userPhone;
		this.userSex = userSex;
		this.userCard = userCard;
		this.userAddress = userAddress;
		this.userPic = userPic;
		this.userEmail = userEmail;
		this.value = value;
		this.isdel = isdel;
	}

	// Property accessors

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserPhone() {
		return this.userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserSex() {
		return this.userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public String getUserCard() {
		return this.userCard;
	}

	public void setUserCard(String userCard) {
		this.userCard = userCard;
	}

	public String getUserAddress() {
		return this.userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserPic() {
		return this.userPic;
	}

	public void setUserPic(String userPic) {
		this.userPic = userPic;
	}

	public String getUserEmail() {
		return this.userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
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

}