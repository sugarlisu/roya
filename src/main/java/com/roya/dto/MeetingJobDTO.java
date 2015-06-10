package com.roya.dto;

import java.io.Serializable;
import java.util.Date;


/**
 * 
 * @ClassName: MeetingJobDTO
 * @Description:会议jobdto
 * lisu
 */
public class MeetingJobDTO implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -7306239517179458120L;
	private Integer meetingid;
	private Integer corporationid;
	private String title;
	private Date sdate;
	private Date edate;
	private String province;
	private String city;
	private String welcomewords;
	private Date abdate;
	private Date aedate;
	private String location;
	private Double lat;
	private Double lon;
	private Integer subjectevaaudit;
	private Integer weiboaudit;
	private Integer topicquestionaudit;
	private Integer opencontact;
	private Integer deleted;
	private Integer psdrule;
	private Integer checkcount;
	private Integer checktype;
	private String twodcode;
	private Integer checkradius;
	private Integer guestcount;
	private Double signinlat;
	private Double signinlon;
	private Integer guestversion;
	private Integer watermarktype;
	private Integer openpsdlogin;
	private String meettype;
	private String meetsubtype;
	public Integer getMeetingid() {
		return meetingid;
	}
	public void setMeetingid(Integer meetingid) {
		this.meetingid = meetingid;
	}
	public Integer getCorporationid() {
		return corporationid;
	}
	public void setCorporationid(Integer corporationid) {
		this.corporationid = corporationid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getWelcomewords() {
		return welcomewords;
	}
	public void setWelcomewords(String welcomewords) {
		this.welcomewords = welcomewords;
	}
	public Date getAbdate() {
		return abdate;
	}
	public void setAbdate(Date abdate) {
		this.abdate = abdate;
	}
	public Date getAedate() {
		return aedate;
	}
	public void setAedate(Date aedate) {
		this.aedate = aedate;
	}
	public Double getLat() {
		return lat;
	}
	public void setLat(Double lat) {
		this.lat = lat;
	}
	public Double getLon() {
		return lon;
	}
	public void setLon(Double lon) {
		this.lon = lon;
	}
	public Integer getSubjectevaaudit() {
		return subjectevaaudit;
	}
	public void setSubjectevaaudit(Integer subjectevaaudit) {
		this.subjectevaaudit = subjectevaaudit;
	}
	public Integer getWeiboaudit() {
		return weiboaudit;
	}
	public void setWeiboaudit(Integer weiboaudit) {
		this.weiboaudit = weiboaudit;
	}
	public Integer getTopicquestionaudit() {
		return topicquestionaudit;
	}
	public void setTopicquestionaudit(Integer topicquestionaudit) {
		this.topicquestionaudit = topicquestionaudit;
	}
	public Integer getOpencontact() {
		return opencontact;
	}
	public void setOpencontact(Integer opencontact) {
		this.opencontact = opencontact;
	}
	public Integer getDeleted() {
		return deleted;
	}
	public void setDeleted(Integer deleted) {
		this.deleted = deleted;
	}
	public Integer getPsdrule() {
		return psdrule;
	}
	public void setPsdrule(Integer psdrule) {
		this.psdrule = psdrule;
	}
	public Integer getCheckcount() {
		return checkcount;
	}
	public void setCheckcount(Integer checkcount) {
		this.checkcount = checkcount;
	}
	public Integer getChecktype() {
		return checktype;
	}
	public void setChecktype(Integer checktype) {
		this.checktype = checktype;
	}
	public String getTwodcode() {
		return twodcode;
	}
	public void setTwodcode(String twodcode) {
		this.twodcode = twodcode;
	}
	public Integer getCheckradius() {
		return checkradius;
	}
	public void setCheckradius(Integer checkradius) {
		this.checkradius = checkradius;
	}
	public Integer getGuestcount() {
		return guestcount;
	}
	public void setGuestcount(Integer guestcount) {
		this.guestcount = guestcount;
	}
	public Double getSigninlat() {
		return signinlat;
	}
	public void setSigninlat(Double signinlat) {
		this.signinlat = signinlat;
	}
	public Double getSigninlon() {
		return signinlon;
	}
	public void setSigninlon(Double signinlon) {
		this.signinlon = signinlon;
	}
	public Integer getGuestversion() {
		return guestversion;
	}
	public void setGuestversion(Integer guestversion) {
		this.guestversion = guestversion;
	}
	public Integer getWatermarktype() {
		return watermarktype;
	}
	public void setWatermarktype(Integer watermarktype) {
		this.watermarktype = watermarktype;
	}
	public Integer getOpenpsdlogin() {
		return openpsdlogin;
	}
	public void setOpenpsdlogin(Integer openpsdlogin) {
		this.openpsdlogin = openpsdlogin;
	}
	public String getMeettype() {
		return meettype;
	}
	public void setMeettype(String meettype) {
		this.meettype = meettype;
	}
	public String getMeetsubtype() {
		return meetsubtype;
	}
	public void setMeetsubtype(String meetsubtype) {
		this.meetsubtype = meetsubtype;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}

}

