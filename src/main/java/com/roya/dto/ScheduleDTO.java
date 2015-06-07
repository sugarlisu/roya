package com.roya.dto;

import java.util.Date;
import java.util.List;


/**
 * 
 * @ClassName: ScheduleDTO
 * @Description:日程dto
 * lisu
 */
public class ScheduleDTO extends BaseDTO {
	/**
	 * 
	 */
	private static final long serialVersionUID = -1519612536718848918L;
	private String title;//日程主题
	private Date sdate;//日程开始时间
	private Date edate;//日程结束时间
	private String location;// 会议地点
	private Integer meetingid;// 会议id
	private List<String> nameList; //参会人员列表
	private String uid;// 用户Id
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public List<String> getNameList() {
		return nameList;
	}
	public void setNameList(List<String> nameList) {
		this.nameList = nameList;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public Integer getMeetingid() {
		return meetingid;
	}
	public void setMeetingid(Integer meetingid) {
		this.meetingid = meetingid;
	}
	public Date getSdate() {
		return sdate;
	}
	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}
	public Date getEdate() {
		return edate;
	}
	public void setEdate(Date edate) {
		this.edate = edate;
	}

}
