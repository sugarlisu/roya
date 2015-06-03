package com.roya.dto;



/**
 * 
* @ClassName: AccessInfoDTO 
* @Description: 权限信息 
* @author chenming 
* @date 2014年7月13日 下午3:06:55 
*
 */
public class AccessInfoDTO extends BaseDTO{
    /** 
	* @Fields serialVersionUID :    
	*/ 
	private static final long serialVersionUID = -3641347229220107197L;
	private String groupId    ; //分组ID  
    private String actionId   ; //接口ID  
    private String actionName ; //接口名称
    private String enable ; //开关
    
	public String getGroupId() {
		return groupId;
	}
	public void setGroupId(String groupId) {
		this.groupId = groupId;
	}
	public String getActionId() {
		return actionId;
	}
	public void setActionId(String actionId) {
		this.actionId = actionId;
	}
	public String getActionName() {
		return actionName;
	}
	public void setActionName(String actionName) {
		this.actionName = actionName;
	}
	public String getEnable() {
		return enable;
	}
	public void setEnable(String enable) {
		this.enable = enable;
	}

}
