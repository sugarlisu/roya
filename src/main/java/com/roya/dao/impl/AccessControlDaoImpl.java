package com.roya.dao.impl;

import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.roya.dao.IAccessControlDao;
import com.roya.dto.AccessInfoDTO;
import com.roya.dto.GroupDTO;
import com.roya.util.SqlName;

@Repository("accessControlDaoImpl")
public class AccessControlDaoImpl extends BaseDaoImpl implements IAccessControlDao {

	@SuppressWarnings("unchecked")
	public List<AccessInfoDTO> queryAccessControlForGroup(GroupDTO groupDto) {
		try {
			return this.sqlMapClient.queryForList(SqlName.queryAccess, groupDto);
		} catch (SQLException e) {
			this.log.error("Query access error:",e);
			return Collections.emptyList();
		}
	}

	public int addAccessControlForGroup(AccessInfoDTO accessControl) {
		try {
			this.sqlMapClient.insert(SqlName.addAccessForGroup, accessControl);
			return 1; 
		} catch (SQLException e) {
			this.log.error("Add access for group error:",e);
			return 0;
		}
				
	}

	public int deleteAccessControlForGroup(GroupDTO groupDto) {
		try {
			return (int) this.sqlMapClient.delete(SqlName.deleteAccess,groupDto);
		} catch (SQLException e) {
			this.log.error("delete access for group error:",e);
			return 0;
		}
	}

}
