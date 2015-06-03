package com.roya.dao;

import java.util.List;

import com.roya.dto.UserInfoDTO;

public interface IUserInfoDao extends IBaseDao {

	/**
	 * 
	* @Title: queryUserInfo 
	* @Description: 查询用户信息
	* @param   userInfoDTO
	* @return UserInfoDTO   
	* @throws
	 */
	public UserInfoDTO queryUserInfo(UserInfoDTO userInfoDTO);
	
	/**
	 * 
	* @Title: addUserInfo 
	* @Description: 添加用户
	* @param @param userInfoDTO
	* @param @return    
	* @return UserInfoDTO   
	* @throws
	 */
	public UserInfoDTO addUserInfo(UserInfoDTO userInfoDTO);
	
	/**
	 * 
	* @Title: updateUserInfo 
	* @Description: 更新用户信息
	* @param @param userInfoDTO
	* @param @return    
	* @return UserInfoDTO   
	* @throws
	 */
	public UserInfoDTO updateUserInfo(UserInfoDTO userInfoDTO);
	
	/**
	 * 
	* @Title: queryAllUserInfo 
	* @Description: 查询所有用户信息
	* @param @param userInfoDTO
	* @param @return    
	* @return List<UserInfoDTO>   
	* @throws
	 */
	public List<UserInfoDTO> queryAllUserInfo(UserInfoDTO userInfoDTO);
}
