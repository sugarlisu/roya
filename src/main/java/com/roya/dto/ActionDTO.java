package com.roya.dto;

public class ActionDTO extends BaseDTO {

	/** 
	* @Fields serialVersionUID :    
	*/ 
	private static final long serialVersionUID = 3562440350753282962L;

	/**
	 * 请求id
	 */
	private String actionId;
	
	/**
	 * 接口名称
	 */
	private String actionName;
	
	/**
	 * 接口功能
	 */
	private String actionfunction;
	
	/**
	 * 接口备注
	 */
	private String actionRemark;
	
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
	public String getActionfunction() {
		return actionfunction;
	}
	public void setActionfunction(String actionfunction) {
		this.actionfunction = actionfunction;
	}
	public String getActionRemark() {
		return actionRemark;
	}
	public void setActionRemark(String actionRemark) {
		this.actionRemark = actionRemark;
	}
	
}
