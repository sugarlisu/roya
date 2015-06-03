package com.roya.dto;

/**
 * 
* @ClassName: GroupDTO 
* @Description: 组信息 
* @author chenming 
* @date 2014年7月23日 下午5:01:54 
*
 */
public class GroupDTO  extends BaseDTO{
	
	/** 
	* @Fields serialVersionUID :    
	*/ 
	private static final long serialVersionUID = -2634718096947617726L;
	private String groupId;    //组ID
	private String groupName;	//组名
	private String groupRemark; //组备注
	
	public String getGroupId() {
		return groupId;
	}
	public void setGroupId(String groupId) {
		this.groupId = groupId;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	public String getGroupRemark() {
		return groupRemark;
	}
	public void setGroupRemark(String groupRemark) {
		this.groupRemark = groupRemark;
	}
	
}
