package com.roya.dto;

import java.util.Date;


/**
 * 
 * @ClassName: AddressListDTO
 * @Description:通讯录表
 * lisu
 */
public class AddressListDTO extends BaseDTO {
	/**
	 * 
	 */
	private static final long serialVersionUID = 6981576342271069658L;
	private String name;// 姓名
	private Integer orgId;// 机构id
	private String phone;// 电话号码
	private String gender;// 性别
	private String position; //职位
	private String orgName; //部门
	private String nation; //民族
	private String email; //部门
	private String intro; //简介
	private Date createTime; //
	private Date updateTime; //
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getOrgName() {
		return orgName;
	}
	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}
	public Integer getOrgId() {
		return orgId;
	}
	public void setOrgId(Integer orgId) {
		this.orgId = orgId;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}


}
