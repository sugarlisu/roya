package com.roya.dto;


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
	private String phone;// 电话号码
	private String gender;// 性别
	private String position; //职位
	private String orgName; //部门
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

}
