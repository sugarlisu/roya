package com.roya.dao;

import java.util.List;

import com.roya.dto.AccessInfoDTO;
import com.roya.dto.GroupDTO;

public interface IAccessControlDao extends IBaseDao {
	
	/**
	 * 
	* @Title: queryAccessControlForGroup 
	* @Description: 查询组权限
	* @param @param groupDto
	* @param @return    
	* @return List<AccessInfoDTO>   
	* @throws
	 */
	public List<AccessInfoDTO> queryAccessControlForGroup(GroupDTO groupDto);
	
	/**
	 * 
	* @Title: addAccessControlForGroup 
	* @Description: 为组添加权限
	* @param @param accessControl
	* @param @return    
	* @return int   
	* @throws
	 */
	public int addAccessControlForGroup(AccessInfoDTO accessControl);
	
	/**
	 * 
	* @Title: deleteAccessControlForGroup 
	* @Description: 删除组权限
	* @param   accessControl
	* @return int   
	* @throws
	 */
	public int deleteAccessControlForGroup(GroupDTO groupDto);
	
	
}
