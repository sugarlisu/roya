package com.roya.util;

public class SqlName {
	/**
	 * 添加系统日志
	 */
	final static public String addLogs = "logs.addLog";

	/**
	 * 查询UUID
	 */
	final static public String queryUUID = "common.queryUUID";

	/**
	 * 权限
	 */
	final static public String queryAccess = "accessControl.queryAccess";
	final static public String addAccessForGroup = "accessControl.insertAccess";
	final static public String deleteAccess = "accessControl.deleteAccess";

	/**
	 * action信息
	 */
	final static public String queryAllAction = "action.queryAllAction";
	final static public String queryAction = "action.queryAction";
	final static public String addAction = "action.addAction";

	/**
	 * 用户
	 */
	final static public String queryUserGroup = "userGroup.queryUserGroup";
	final static public String deleteUserGroup = "userGroup.deleteUserGroup";
	final static public String addUserGroup = "userGroup.addUserGroup";
	final static public String queryUserInfo = "userInfo.queryUserInfo";
	final static public String addUserInfo = "userInfo.addUserInfo";
	final static public String updateUserInfo = "userInfo.updateUserInfo";

	/**
	 * 项目管理
	 */
	final static public String addProjectInfo = "projectInfo.addProjectInfo";
	final static public String queryProjectInfo = "projectInfo.queryProjectInfo";
	final static public String queryProjectInfoList = "projectInfo.queryProjectInfoList";
	final static public String queryProjectInfoHome = "projectInfo.queryProjectInfoHome";
	final static public String updateProjectInfo = "projectInfo.updateProjectInfo";
	final static public String deleteProjectInfo = "projectInfo.deleteProjectInfo";
	
	/**
	 * 接口信息
	 */
	final static public String addInterfaceInfo = "interfaceInfo.addInterfaceInfo";
	final static public String queryInterfaceInfo = "interfaceInfo.queryInterfaceInfo";
	final static public String deleteInterfaceInfo = "interfaceInfo.deleteInterfaceInfo";
	final static public String updateInterfaceInfo = "interfaceInfo.updateInterfaceInfo";

}
