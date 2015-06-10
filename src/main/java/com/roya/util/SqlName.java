package com.roya.util;

public class SqlName {
	/**
	 * 添加系统日志
	 */
	final static public String addLogs = "logs.addLog";

	//查询用户信息
	final static public String queryUserMeeting = "usermeeting.queryUserMeeting";
	
	//查询通讯
	final static public String queryAddressList = "address.queryAddressList";
	
	//查询文件列表
	final static public String queryDocumentList = "document.queryDocumentList";
	
	//查询文件列表
	final static public String queryScheduleList = "schedule.queryScheduleList";
	
	
	//job 同步表
	final static public String jobQueryAddressList = "job.queryAddressList";
	final static public String jobAddAddressList = "job.addAddressList";
	final static public String jobDelAddressList = "job.delAddressList";
	
	final static public String jobQueryAddressOrgList = "job.queryAddressOrgList";
	final static public String jobAddAddressOrg = "job.addAddressOrg";
	final static public String jobDelAddressOrg = "job.delAddressOrg";
	
	final static public String jobQueryDocumentList = "job.queryDocumentList";
	final static public String jobAddDocument = "job.addDocument";
	final static public String jobDelDocument = "job.delDocument";
	
	final static public String jobQueryMeetingList = "job.queryMeetingList";
	final static public String jobAddMeeting = "job.addMeeting";
	final static public String jobDelMeeting = "job.delMeeting";
	
	final static public String jobQueryUserMeetingList = "job.queryUserMeetingList";
	final static public String jobAddUserMeeting = "job.addUserMeeting";
	final static public String jobDelUserMeeting = "job.delUserMeeting";

}
