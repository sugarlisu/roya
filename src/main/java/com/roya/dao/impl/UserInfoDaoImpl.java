package com.roya.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.roya.dao.IUserInfoDao;
import com.roya.dto.UserInfoDTO;
import com.roya.util.SqlName;

@Repository("userInfoDaoImpl")
public class UserInfoDaoImpl extends BaseDaoImpl implements IUserInfoDao{

	public UserInfoDTO queryUserInfo(UserInfoDTO userInfoDTO) {
		try {
			return (UserInfoDTO) this.sqlMapClient.queryForObject(SqlName.queryUserInfo,userInfoDTO);
		} catch (SQLException e) {
			log.error("User login error:",e);
			return null;
		}
	}

	public UserInfoDTO addUserInfo(UserInfoDTO userInfoDTO) {
		try {
			userInfoDTO.setUserId((String)this.sqlMapClient.queryForObject(SqlName.queryUUID));
			this.sqlMapClient.insert(SqlName.addUserInfo, userInfoDTO);
		} catch (SQLException e) {
			log.error("Add userInfo error:",e);
			return null;
		}
		return userInfoDTO;
	}

	public UserInfoDTO updateUserInfo(UserInfoDTO userInfoDTO) {
		try {
			this.sqlMapClient.update(SqlName.updateUserInfo, userInfoDTO);
		} catch (SQLException e) {
			this.log.error("Update userInfo error:",e);
			return null;
		}
		return userInfoDTO;
	}

	@SuppressWarnings("unchecked")
	public List<UserInfoDTO> queryAllUserInfo(UserInfoDTO userInfoDTO) {
		try {
			return (List<UserInfoDTO>)this.sqlMapClient.queryForList(SqlName.queryUserInfo,userInfoDTO);
		} catch (SQLException e) {
			this.log.error("Query all userInfo error:",e);
			return null;
		}
	}

}
