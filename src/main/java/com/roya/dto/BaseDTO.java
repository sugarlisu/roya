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
	* @Fields serialVersionUID :   
	*/ 
	private static final long serialVersionUID = -3393866310929889346L;
	private Integer pageCount ; //总页数
	private Integer totalCount; //总条数
	private Integer pageNo ;//当前页数
	private Integer pageSize ;//每页数据条数
	
	private Integer begin; //开始记录条数
	private Integer end;   //结束记录条数
	
    private String createBy    ;//创建人  
    
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createDate ;//创建时间
    
    private String updateBy    ;//修改人  
    
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updateDate ;//修改时间
    
    private String deleteTag; //删除标志
    
    private String orderBy; //排序规则
    
    private String orderByTag; //desc asc
    

	public Integer getPageCount() {
		return pageCount;
	}

	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}

	public Integer getPageNo() {
		return pageNo;
	}

	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getBegin() {
		if(pageNo != null && pageSize != null){
			this.begin = (pageNo-1)*pageSize;
		}else{
			return null;
		}
		return begin;
	}

	public void setBegin(Integer begin) {
		this.begin = begin;
	}

	public Integer getEnd() {
		return pageSize;
	}

	public void setEnd(Integer end) {
		this.end = end;
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

	public Integer getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	
	public String getOrderBy() {
		return orderBy;
	}

	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}
	
	public String getOrderByTag() {
		return orderByTag;
	}

	public void setOrderByTag(String orderByTag) {
		this.orderByTag = orderByTag;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}
}
