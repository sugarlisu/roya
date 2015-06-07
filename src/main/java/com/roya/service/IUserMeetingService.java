package com.roya.service;

import java.sql.SQLException;

import com.roya.dto.UserMeetingDTO;

public interface IUserMeetingService extends IBaseService {
	
	/**
	 * 
	* @Title: queryUserInfo 
	* @Description: 用户信息查询
	* @param   UserMeetingVO
	* @return UserMeetingDTO   
	* @throws
	 */
	public UserMeetingDTO queryUserInfo(UserMeetingDTO userInfoDTO) throws SQLException;

}
