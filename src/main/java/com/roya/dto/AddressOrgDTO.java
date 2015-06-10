package com.roya.dto;

import java.util.Date;


/**
 * 
 * @ClassName: AddressOrgDTO
 * @Description:通讯机构表
 * lisu
 */
public class AddressOrgDTO extends BaseDTO {
	/**
	 * 
	 */
	private static final long serialVersionUID = 6981576342271069658L;
	private Integer corporationId;// 公司id
	private Integer parentId;
	private String orgName;
	private Date createTime; 
	private Date updateTime;
	public Integer getCorporationId() {
		return corporationId;
	}
	public void setCorporationId(Integer corporationId) {
		this.corporationId = corporationId;
	}
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
	public String getOrgName() {
		return orgName;
	}
	public void setOrgName(String orgName) {
		this.orgName = orgName;
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
