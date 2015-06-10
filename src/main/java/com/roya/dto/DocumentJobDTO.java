package com.roya.dto;

import java.io.Serializable;
import java.util.Date;


/**
 * 
 * @ClassName: DocumentDTO
 * @Description:文件jobdto
 * lisu
 */
public class DocumentJobDTO implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -4403944780910712114L;
	private String id;
	private Integer meetingid;
	private String name;
	private String title;
	private String size;
	private String filetype;
	private String weburl;
	private String dlurl;
	private String pdfdoc;
	private String pdfdocsize;
	private String documenttypeid;
	private String priority;
	private String isconfidential;
	private String iswhitelist;
	private String isdownload;
	private String passwordType;
	private String pdfpassword;
	private Date updateTime;
	private Integer issync;
	private Integer isoriginaldoc;
	private Date insertTime;
	private Integer hassyncowner;
	private Integer watermarkerType;
	private String watermarkerText;
	private Integer isprintsecret;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Integer getMeetingid() {
		return meetingid;
	}
	public void setMeetingid(Integer meetingid) {
		this.meetingid = meetingid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getFiletype() {
		return filetype;
	}
	public void setFiletype(String filetype) {
		this.filetype = filetype;
	}
	public String getWeburl() {
		return weburl;
	}
	public void setWeburl(String weburl) {
		this.weburl = weburl;
	}
	public String getDlurl() {
		return dlurl;
	}
	public void setDlurl(String dlurl) {
		this.dlurl = dlurl;
	}
	public String getPdfdoc() {
		return pdfdoc;
	}
	public void setPdfdoc(String pdfdoc) {
		this.pdfdoc = pdfdoc;
	}
	public String getPdfdocsize() {
		return pdfdocsize;
	}
	public void setPdfdocsize(String pdfdocsize) {
		this.pdfdocsize = pdfdocsize;
	}
	public String getDocumenttypeid() {
		return documenttypeid;
	}
	public void setDocumenttypeid(String documenttypeid) {
		this.documenttypeid = documenttypeid;
	}
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority = priority;
	}
	public String getIsconfidential() {
		return isconfidential;
	}
	public void setIsconfidential(String isconfidential) {
		this.isconfidential = isconfidential;
	}
	public String getIswhitelist() {
		return iswhitelist;
	}
	public void setIswhitelist(String iswhitelist) {
		this.iswhitelist = iswhitelist;
	}
	public String getIsdownload() {
		return isdownload;
	}
	public void setIsdownload(String isdownload) {
		this.isdownload = isdownload;
	}
	
	public String getPasswordType() {
		return passwordType;
	}
	public void setPasswordType(String passwordType) {
		this.passwordType = passwordType;
	}
	public String getPdfpassword() {
		return pdfpassword;
	}
	public void setPdfpassword(String pdfpassword) {
		this.pdfpassword = pdfpassword;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public Integer getIssync() {
		return issync;
	}
	public void setIssync(Integer issync) {
		this.issync = issync;
	}
	public Integer getIsoriginaldoc() {
		return isoriginaldoc;
	}
	public void setIsoriginaldoc(Integer isoriginaldoc) {
		this.isoriginaldoc = isoriginaldoc;
	}
	public Date getInsertTime() {
		return insertTime;
	}
	public void setInsertTime(Date insertTime) {
		this.insertTime = insertTime;
	}
	public Integer getHassyncowner() {
		return hassyncowner;
	}
	public void setHassyncowner(Integer hassyncowner) {
		this.hassyncowner = hassyncowner;
	}
	public Integer getIsprintsecret() {
		return isprintsecret;
	}
	public void setIsprintsecret(Integer isprintsecret) {
		this.isprintsecret = isprintsecret;
	}
	public Integer getWatermarkerType() {
		return watermarkerType;
	}
	public void setWatermarkerType(Integer watermarkerType) {
		this.watermarkerType = watermarkerType;
	}
	public String getWatermarkerText() {
		return watermarkerText;
	}
	public void setWatermarkerText(String watermarkerText) {
		this.watermarkerText = watermarkerText;
	}
	

}
