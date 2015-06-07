package com.roya.dto;

import java.util.Date;

/**
 * 
 * @ClassName: UserMeetingDTO
 * @Description: 会议用户表 	
 * lisu
 */
public class UserMeetingDTO extends BaseDTO {
	/**
	 * 
	 */
	private static final long serialVersionUID = 6981576342271069658L;
	private String uid;// 用户ID
	private String meetingid;// 会议Id
	private String psd;// 用户密码
	private String city;// 城市
	private String name;// 用户姓名
	private String position;// 用户角色
	private Date  lastLogin;// 最后登陆时间
	private String comment;// 评论
	private Integer loginCount;// 登陆次数
	private String markertext; //标记文本
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getMeetingid() {
		return meetingid;
	}
	public void setMeetingid(String meetingid) {
		this.meetingid = meetingid;
	}
	public String getPsd() {
		return psd;
	}
	public void setPsd(String psd) {
		this.psd = psd;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
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
	public Date getLastLogin() {
		return lastLogin;
	}
	public void setLastLogin(Date lastLogin) {
		this.lastLogin = lastLogin;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public Integer getLoginCount() {
		return loginCount;
	}
	public void setLoginCount(Integer loginCount) {
		this.loginCount = loginCount;
	}
	public String getMarkertext() {
		return markertext;
	}
	public void setMarkertext(String markertext) {
		this.markertext = markertext;
	}

}
