package com.roya.dao.impl;

import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.roya.dao.IUserGroupDao;
import com.roya.dto.UserGroupDTO;
import com.roya.util.SqlName;

@Repository("userGroupDaoImpl")
public class UserGroupDaoImpl extends BaseDaoImpl implements IUserGroupDao {

	@SuppressWarnings("unchecked")
	public List<UserGroupDTO> queryUserGroup(UserGroupDTO userGroupDTO) {
		
		try {
			return this.sqlMapClient.queryForList(SqlName.queryUserGroup, userGroupDTO);
		} catch (SQLException e) {
			this.log.error("Query user group error : ",e);
			return Collections.emptyList();
		}
	}

	public int deleteUserGroup(UserGroupDTO userGroupDTO) {
		try {
			return this.sqlMapClient.delete(SqlName.deleteUserGroup, userGroupDTO);
		} catch (SQLException e) {
			this.log.error("Delete user group error : ",e);
			return 0;
		}
	}

	public int saveUserGroup(UserGroupDTO userGroupDTO) {
		try {
			this.sqlMapClient.insert(SqlName.addUserGroup, userGroupDTO);
			return 1; 
		} catch (SQLException e) {
			this.log.error("Save user group error : ",e);
			return 0;
		}
	}

}
