package com.roya.dto;

import java.io.Serializable;
import java.util.Date;


/**
 * 
 * @ClassName: MeetingJobDTO
 * @Description:会议jobdto
 * lisu
 */
public class UserMeetingJobDTO implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -5324466233150418783L;
	private Integer id;
	private Integer meetingid;
	private String uid;
	private String psd;
	private String city;
	private String name;
	private String position;
	private Date lastLogin;
	private String comment;
	private Integer loginCount;
	private String markertext;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getMeetingid() {
		return meetingid;
	}
	public void setMeetingid(Integer meetingid) {
		this.meetingid = meetingid;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
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

