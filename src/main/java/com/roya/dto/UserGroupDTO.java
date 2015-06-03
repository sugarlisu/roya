package com.roya.dto;

public class UserGroupDTO extends BaseDTO {
	
	/** 
	* @Fields serialVersionUID :    
	*/ 
	private static final long serialVersionUID = -5608795930142437414L;
	private String userId;   //用户id
	private String groupId;  //用户组id
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getGroupId() {
		return groupId;
	}
	public void setGroupId(String groupId) {
		this.groupId = groupId;
	}
	
}
