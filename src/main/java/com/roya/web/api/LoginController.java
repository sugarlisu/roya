package com.roya.web.api;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roya.common.ResultMap;
import com.roya.common.ResultMap.STATUS;
import com.roya.dto.UserInfoDTO;
import com.roya.util.DTOdateSet;
import com.roya.util.StringUtil;



@Controller("loginController")
@RequestMapping("/api")
public class LoginController{
	
	Logger logger = Logger.getLogger(getClass());
	
	private static final String loginName="admin";
	
	private static final String password="1q2w3e4r";
	
	@RequestMapping(value="/login.shtml")
	@ResponseBody
	public ResultMap login(UserInfoDTO user,HttpServletRequest request){
		
		logger.info("In login Begin!");
		ResultMap result = new ResultMap();
		HttpSession session = request.getSession();
		try{
				if(StringUtil.isNullOrEmptyStr(user.getUsername())  || 
						StringUtil.isNullOrEmptyStr(user.getPassword())){
					result.setStatus(STATUS.ERROR);
					result.setStatusCode(ResultMap.STATUS_CODE_PARAMETERS_LOSE);
					result.setMessage("参数缺失");
					return result;
				}
				if(!loginName.equals(user.getUsername()) ||  !password.equals(user.getPassword())){
					result.setStatus(STATUS.FAILE);
					result.setStatusCode(ResultMap.STATUS_CODE_PWS_ERROR);
					result.setMessage("用户名密码错误");
					return result;
				}
				logger.info("In login check parameter SUCCESS");
				session.setAttribute(DTOdateSet.user,user );
				result.setStatus(STATUS.SUCCESS);
				result.setMessage("登陆成功");
				result.setStatusCode(ResultMap.STATUS_CODE_SUCCESS);
				
				logger.info("In login SUCCESS !");
		}catch(Exception e){
			logger.error("login error",e);
			result.setStatus(STATUS.FAILE);
			result.setMessage("登陆成功");
			result.setStatusCode(ResultMap.STATUS_CODE_SYS_EXCEPTION);
		}
		logger.info("In login end!");
		return result;
	}
	
	@RequestMapping(value="/logout.shtml")
	@ResponseBody
	public ResultMap logout(HttpServletRequest request,HttpServletResponse response){
		ResultMap resultMap = new ResultMap();
		try{
			
			request.getSession().invalidate();
			
			Cookie[] cookies = request.getCookies();  
			for(int i=0;i<cookies.length;i++){  
				Cookie cookie = new Cookie(cookies[i].getName(), null);  
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
			
			resultMap.setStatus(STATUS.SUCCESS);
			resultMap.setStatusCode(ResultMap.STATUS_CODE_SUCCESS);
		}catch(Exception e){
			logger.error("logout error!",e);
			resultMap.setStatus(STATUS.FAILE);
			resultMap.setMessage("登陆成功");
			resultMap.setStatusCode(ResultMap.STATUS_CODE_SYS_EXCEPTION);
		}
		return resultMap;
	}
	

}
