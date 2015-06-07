package com.roya.dao;

import java.sql.SQLException;

import com.roya.dto.UserMeetingDTO;


public interface IUserMeetingDao extends IBaseDao {

	/**
	 * 
	* @Title: queryUserInfo 
	* @Description: 查询用户信息
	* @param   UserMeetingVO
	* @return UserMeetingDTO   
	* @throws
	 */
	public UserMeetingDTO queryUserInfo(UserMeetingDTO userInfoDTO) throws SQLException;
	
}
