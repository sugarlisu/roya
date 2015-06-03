package com.roya.dao;

import java.util.List;

import com.roya.dto.UserGroupDTO;

public interface IUserGroupDao extends IBaseDao {
	
	/**
	 * 
	* @Title: queryUserGroup 
	* @Description: 查询用户所属组
	* @param   userGroupDTO
	* @return List<UserGroupDTO>   
	* @throws
	 */
	public List<UserGroupDTO> queryUserGroup(UserGroupDTO userGroupDTO);
	
	/**
	 * 
	* @Title: deleteUserGroup 
	* @Description: 删除用户所在组
	* @param   userGroupDTO
	* @return int   
	* @throws
	 */
	public int deleteUserGroup(UserGroupDTO userGroupDTO);
	
	/**
	 * 
	* @Title: saveUserGroup 
	* @Description: 新增用户所在组
	* @param   userGroupDTO
	* @return int   
	* @throws
	 */
	public int saveUserGroup(UserGroupDTO userGroupDTO);
}
