package com.roya.dto;

import java.util.List;

/**
 * 
 * @ClassName: UserInfoDTO
 * @Description: 用户信息
 * @author chenming
 * @date 2014年7月13日 下午2:53:23
 * 
 */
public class UserInfoDTO extends BaseDTO {
	/**
	 * @Fields serialVersionUID :
	 */
	private static final long serialVersionUID = 467055102923000510L;
	private String userId;// 用户ID
	private String userNickname;// 用户昵称
	private String username;// 用户姓名
	private String sex;// 性别
	private String userType;// 用户类型
	private String password;// 密码
	private String cardNo;// 证件号
	private String cardType;// 证件类型
	private String mobile;// 手机号
	private String telePhone;// 电话
	private String email;// 邮件地址
	private String address;// 住址
	private String status;// 状态
	private String remark;// 个人简介
	private String company;// 所在公司

	private List<AccessInfoDTO> accessList; // 权限列表

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCardNo() {
		return cardNo;
	}

	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}

	public String getCardType() {
		return cardType;
	}

	public void setCardType(String cardType) {
		this.cardType = cardType;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public List<AccessInfoDTO> getAccessList() {
		return accessList;
	}

	public void setAccessList(List<AccessInfoDTO> accessList) {
		this.accessList = accessList;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getTelePhone() {
		return telePhone;
	}

	public void setTelePhone(String telePhone) {
		this.telePhone = telePhone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

}
