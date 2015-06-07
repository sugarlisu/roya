package com.roya.web.api;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roya.common.ResultMap;
import com.roya.common.ResultMap.STATUS;
import com.roya.dto.UserMeetingDTO;
import com.roya.service.IUserMeetingService;
import com.roya.util.DTOdateSet;
import com.roya.util.StringUtil;
import com.roya.vo.UserMeetingVO;



/**
 * 登录Controller
 * @author lisu
 *
 */
@Controller("loginController")
public class LoginController{
	
	Logger logger = Logger.getLogger(getClass());
	
	@Autowired
	IUserMeetingService userMeetingServiceImpl;
	@RequestMapping(value="/login.shtml")
	@ResponseBody
	public ResultMap login(UserMeetingDTO user,HttpServletRequest request){
		
		logger.info("In login Begin!");
		ResultMap result = new ResultMap();
		HttpSession session = request.getSession();
		try{
				if(StringUtil.isNullOrEmptyStr(user.getUid() )|| 
						StringUtil.isNullOrEmptyStr(user.getPsd())){
					result.setStatus(STATUS.FAILE);
					result.setStatusCode(ResultMap.STATUS_CODE_PARAMETERS_LOSE);
					result.setMessage("参数缺失!");
					return result;
				}
				user = userMeetingServiceImpl.queryUserInfo(user);
				if(user == null){
					result.setStatus(STATUS.FAILE);
					result.setStatusCode(ResultMap.STATUS_CODE_PWS_ERROR);
					result.setMessage("帐户名或密码错误!");
					return  result;
				}
				UserMeetingVO userVo = new UserMeetingVO();
				userVo.setUid(user.getUid());
				userVo.setName(user.getName());
				userVo.setPosition(user.getPosition());
				logger.info("In login check parameter SUCCESS");
				session.setAttribute(DTOdateSet.user,user );
				result.setStatus(STATUS.SUCCESS);
				result.setAttribute("user", userVo);
				result.setMessage("登陆成功");
				result.setStatusCode(ResultMap.STATUS_CODE_SUCCESS);
				
				logger.info("In login SUCCESS !");
		}catch(Exception e){
			logger.error("login error",e);
			result.setStatus(STATUS.FAILE);
			result.setMessage("登录失败");
			result.setStatusCode(ResultMap.STATUS_CODE_SYS_EXCEPTION);
		}
		logger.info("In login end!");
		return result;
	}
	
	/**
	 * 退出
	 * @param request
	 * @param response
	 * @return
	 */
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
			resultMap.setMessage("成功");
		}catch(Exception e){
			logger.error("logout error!",e);
			resultMap.setStatus(STATUS.FAILE);
			resultMap.setMessage("退出异常");
			resultMap.setStatusCode(ResultMap.STATUS_CODE_SYS_EXCEPTION);
		}
		return resultMap;
	}
	

}
