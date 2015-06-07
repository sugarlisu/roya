package com.roya.dao.impl;

import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.roya.dao.IUserMeetingDao;
import com.roya.dto.UserMeetingDTO;
import com.roya.util.SqlName;

@Repository("userMeetingDaoImpl")
public class UserMeetingDaoImpl extends BaseDaoImpl implements IUserMeetingDao{

	public UserMeetingDTO queryUserInfo(UserMeetingDTO userInfoDTO) throws SQLException {
			return (UserMeetingDTO) this.sqlMapClientLocal.queryForObject(SqlName.queryUserMeeting,userInfoDTO);
	}

}
