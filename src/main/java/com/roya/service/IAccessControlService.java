package com.roya.service;

import java.util.List;

import com.roya.dto.AccessInfoDTO;
import com.roya.dto.GroupDTO;

public interface IAccessControlService extends IBaseService {

	/**
	 * 
	* @Title: queryAccessForGroup 
	* @Description:  
	* @param   group
	* @return List<AccessInfoDTO>   
	* @throws
	 */
	public List<AccessInfoDTO> queryAccessForGroup(GroupDTO group);
	
	/**
	 * 
	* @Title: addAccessForGroup 
	* @Description: 添加组权限
	* @param   listAccessInfo
	* @return int   
	* @throws
	 */
	public int addAccessForGroup(String[] actionIds,AccessInfoDTO accessInfoDTO);
	
	/**
	 * 
	* @Title: deleteAccessForGroup 
	* @Description: 删除组权限
	* @param   listAccessInfo
	* @return int   
	* @throws
	 */
	public int deleteAccessForGroup(GroupDTO group);
	
}
