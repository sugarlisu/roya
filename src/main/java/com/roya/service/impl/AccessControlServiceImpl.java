package com.roya.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.roya.dao.IAccessControlDao;
import com.roya.dao.IActionDao;
import com.roya.dto.AccessInfoDTO;
import com.roya.dto.ActionDTO;
import com.roya.dto.GroupDTO;
import com.roya.service.IAccessControlService;

@Service("accessControlServiceImpl")
@Component("accessControlServiceImpl")
@Transactional
public class AccessControlServiceImpl extends BaseServiceImpl implements IAccessControlService {

	@Autowired
	IAccessControlDao accessControlDaoImpl;
	
	@Autowired
	IActionDao actionDaoImpl;
	
	public List<AccessInfoDTO> queryAccessForGroup(GroupDTO group) {
		return accessControlDaoImpl.queryAccessControlForGroup(group);
	}

	public int addAccessForGroup(String[] actionIds,AccessInfoDTO accessInfoDTO) {
		ActionDTO actionDto = new ActionDTO();
		if(actionIds != null){
			for(String  actionId : actionIds){
				actionDto.setActionId(actionId);
				accessInfoDTO.setActionName(actionDaoImpl.queryActionById(actionDto).getActionName());
				accessInfoDTO.setActionId(actionId);
				accessControlDaoImpl.addAccessControlForGroup(accessInfoDTO);
			}
		}else{
			return 0;
		}
		return actionIds.length;
	}

	public int deleteAccessForGroup(GroupDTO group) {
			return accessControlDaoImpl.deleteAccessControlForGroup(group);
	}

}
