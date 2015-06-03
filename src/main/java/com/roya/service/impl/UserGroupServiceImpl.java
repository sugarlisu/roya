package com.roya.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.roya.dao.IUserGroupDao;
import com.roya.dto.UserGroupDTO;
import com.roya.service.IUserGroupService;

@Service("userGroupServiceImpl")
@Component("userGroupServiceImpl")
@Transactional
public class UserGroupServiceImpl extends BaseServiceImpl implements
		IUserGroupService {

	@Autowired
	private IUserGroupDao userGroupDaoImpl;
	
	public List<UserGroupDTO> queryUserGroup(UserGroupDTO userGroupDTO) {
		return userGroupDaoImpl.queryUserGroup(userGroupDTO);
	}

	public int deleteUserGroup(UserGroupDTO userGroupDTO) {
		return userGroupDaoImpl.deleteUserGroup(userGroupDTO);
	}

	public int saveUserGroup(String[] groupId, UserGroupDTO userGroupDTO) {
		int insertUserGroupCount = 0;
		for(String groupID : groupId){
			userGroupDTO.setGroupId(groupID);
			insertUserGroupCount = insertUserGroupCount + userGroupDaoImpl.saveUserGroup(userGroupDTO);
		}
		return insertUserGroupCount;
	}


}
