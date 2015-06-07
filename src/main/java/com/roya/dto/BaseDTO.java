package com.roya.dto;

import java.io.Serializable;
import java.util.Date;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.codehaus.jackson.map.annotate.JsonSerialize;
import org.springframework.format.annotation.DateTimeFormat;

@JsonSerialize(include=JsonSerialize.Inclusion.NON_NULL)
public abstract class BaseDTO implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -865860812662173458L;
	
	private Integer id;// 主键
	
	private String createBy    ;//创建人  
    
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createDate ;//创建时间
    
    private String updateBy    ;//修改人  
    
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updateDate ;//修改时间
    
    private String deleteTag; //删除标志	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

	public String getCreateBy() {
		return createBy;
	}

	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getUpdateBy() {
		return updateBy;
	}

	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public String getDeleteTag() {
		return deleteTag;
	}

	public void setDeleteTag(String deleteTag) {
		this.deleteTag = deleteTag;
	}
	
}
