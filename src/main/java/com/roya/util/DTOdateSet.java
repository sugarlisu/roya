package com.roya.util;

import java.util.Date;

import javax.servlet.http.HttpSession;

import com.roya.dto.BaseDTO;
import com.roya.dto.UserMeetingDTO;


public class DTOdateSet {
	
	public static final String  user = "";
	
	/**
	 * 
	* @Title: setUpdateOrCreateInfo 
	* @Description: 设置记录创建人信息
	* @param @param baseDTO
	* @param @return    
	* @return BaseDTO   
	* @throws
	 */
	public static final BaseDTO setCreateInfo(BaseDTO baseDTO,HttpSession session){
		String createBy ="system";
		if(null != session && null != session.getAttribute(user)){
			UserMeetingDTO userinfo = (UserMeetingDTO) session.getAttribute(user);
			createBy = userinfo.getName();
		}
		if(null != baseDTO){
			baseDTO.setCreateDate(new Date(System.currentTimeMillis()));
			
			baseDTO.setCreateBy(createBy);
		}
		return baseDTO;
	}
	
	/**
	 * 
	* @Title: setUpdateOrCreateInfo 
	* @Description: 设置记录修改人信息
	* @param @param baseDTO
	* @param @return    
	* @return BaseDTO   
	* @throws
	 */
	public static final BaseDTO setUpdateInfo(BaseDTO baseDTO,HttpSession session){
		String updateBy ="system";
		if(null != session && null != session.getAttribute(user)){
			UserMeetingDTO userinfo = (UserMeetingDTO) session.getAttribute(user);
			updateBy = userinfo.getName();
		}
		if(null != baseDTO){
			baseDTO.setUpdateDate(new Date(System.currentTimeMillis()));
			
			baseDTO.setUpdateBy(updateBy);
		}
		return baseDTO;
	}
	
}
