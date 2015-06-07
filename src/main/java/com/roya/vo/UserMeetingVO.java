package com.roya.vo;


/**
 * 
 * @ClassName: UserMeetingVO
 * @Description: 会议用户表 	VO
 * lisu
 */
public class UserMeetingVO {
	/**
	 * 
	 */
	private static final long serialVersionUID = 6981576342271069658L;
	private String uid;// 用户ID
	private String name;// 用户姓名
	private String position;// 用户角色
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}

}
