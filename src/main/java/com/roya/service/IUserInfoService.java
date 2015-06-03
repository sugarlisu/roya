package com.roya.service;

import java.util.List;

import com.roya.dto.UserInfoDTO;

public interface IUserInfoService extends IBaseService {
	
	/**
	 * 
	* @Title: queryUserInfo 
	* @Description: 用户信息查询
	* @param   userInfoDTO
	* @return UserInfoDTO   
	* @throws
	 */
	public UserInfoDTO queryUserInfo(UserInfoDTO userInfoDTO);
	
	/**
	 * 
	* @Title: userLogin 
	* @Description: 用户登陆
	* @param   userInfoDTO
	* @return boolean   
	* @throws
	 */
	public boolean userLogin(UserInfoDTO userInfoDTO);
	
	/**
	 * 
	* @Title: addUserInfo 
	* @Description: 用户添加
	* @param   userInfoDTO
	* @return UserInfoDTO   
	* @throws
	 */
	public UserInfoDTO addUserInfo(UserInfoDTO userInfoDTO);
	
	/**
	 * 
	* @Title: updateUserInfo 
	* @Description: 更新用户信息
	* @param   userInfoDTO
	* @return UserInfoDTO   
	* @throws
	 */
	public UserInfoDTO updateUserInfo(UserInfoDTO userInfoDTO);
	
	/**
	 * 
	* @Title: queryAllUserInfo 
	* @Description: 查询用户信息列表
	* @param   userInfoDTO
	* @return List<UserInfoDTO>   
	* @throws
	 */
	public List<UserInfoDTO> queryAllUserInfo(UserInfoDTO userInfoDTO);

}
