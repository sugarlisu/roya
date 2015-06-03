package com.roya.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.roya.dao.IUserInfoDao;
import com.roya.dto.UserInfoDTO;
import com.roya.service.IUserInfoService;
import com.roya.util.SecureUtil;
import com.roya.util.StringUtil;

@Service("userInfoServiceImpl")
@Component("userInfoServiceImpl")
public class UserInfoServiceImpl extends BaseServiceImpl implements IUserInfoService{

	@Autowired
	private IUserInfoDao userInfoDaoImpl;
	
	public UserInfoDTO queryUserInfo(UserInfoDTO userInfoDTO) {
		return userInfoDaoImpl.queryUserInfo(userInfoDTO);
	}

	public boolean userLogin(UserInfoDTO userInfoDTO) {
		if(StringUtil.isNullOrEmptyStr(userInfoDTO.getUserNickname())||StringUtil.isNullOrEmptyStr(userInfoDTO.getPassword())){
			return false;
		}
		userInfoDTO.setUserType("02");
		userInfoDTO.setStatus("0");
		userInfoDTO.setPassword(SecureUtil.MD5EncryptAndBase64(userInfoDTO.getPassword()));
		UserInfoDTO userInfo = userInfoDaoImpl.queryUserInfo(userInfoDTO);
		if(userInfo != null && userInfo.getUserId() != null){
			return true;
		}
		return false;
	}

	public UserInfoDTO addUserInfo(UserInfoDTO userInfoDTO) {
		userInfoDTO.setPassword(SecureUtil.MD5EncryptAndBase64(userInfoDTO.getPassword()));
		return userInfoDaoImpl.addUserInfo(userInfoDTO);
	}

	public UserInfoDTO updateUserInfo(UserInfoDTO userInfoDTO) {
		return userInfoDaoImpl.updateUserInfo(userInfoDTO);
	}

	public List<UserInfoDTO> queryAllUserInfo(UserInfoDTO userInfoDTO) {
		return userInfoDaoImpl.queryAllUserInfo(userInfoDTO);
	}

}
