package com.roya.service.impl;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roya.dao.IUserMeetingDao;
import com.roya.dto.UserMeetingDTO;
import com.roya.service.IUserMeetingService;

@Component("userMeetingServiceImpl")
public class UserMeetingServiceImpl extends BaseServiceImpl implements IUserMeetingService{

	@Autowired
	private IUserMeetingDao userMeetingDaoImpl;
	
	public UserMeetingDTO queryUserInfo(UserMeetingDTO userInfoDTO) throws SQLException{
		return userMeetingDaoImpl.queryUserInfo(userInfoDTO);
	}


}
