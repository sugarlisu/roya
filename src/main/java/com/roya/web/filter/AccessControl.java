package com.roya.web.filter;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

import com.roya.common.ResultMap;
import com.roya.common.ResultMap.STATUS;
import com.roya.dto.AccessInfoDTO;
import com.roya.dto.GroupDTO;
import com.roya.dto.UserDTO;
import com.roya.dto.UserGroupDTO;
import com.roya.dto.UserInfoDTO;
import com.roya.service.IAccessControlService;
import com.roya.service.IUserGroupService;
import com.roya.service.IUserInfoService;
import com.roya.util.DTOdateSet;

/**
 * Servlet Filter implementation class AccessFilter
 */
@Component(value="accessControl")
public class AccessControl implements Filter,ApplicationContextAware{
	
	private Logger log = Logger.getLogger(this.getClass());
	private String enableStatus = "1";    //权限开启
	
	private IUserInfoService userInfoServiceImpl;
	
	private IAccessControlService accessControlServiceImpl;
	
	private IUserGroupService userGroupServiceImpl;

    /**
     * Default constructor. 
     */
    public AccessControl() {
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest)request;
		HttpSession session = httpRequest.getSession();
		
		String URI = httpRequest.getRequestURI();
		String actionName = URI.substring(URI.lastIndexOf("/")+1);
	
		log.info("request URI :" +actionName);
		
		if("queryLoginStatus.shtml".equals(actionName)||"login.shtml".equals(actionName)|| "loginPer.shtml".equals(actionName)||!actionName.endsWith(".shtml") ||"logout.shtml".equals(actionName)){
			chain.doFilter(request, response);
			return ;
		}
		UserInfoDTO user  = (UserInfoDTO) session.getAttribute(DTOdateSet.user);
		
		
		if(null != user ){
			if("admin".equals(user.getUsername())){
				log.info("access right!");
				chain.doFilter(request, response);
				return ;
			}/*
			UserGroupDTO userGroupDTO = new UserGroupDTO();
			
			//查询用户详细信息
			userInfoDTO = userInfoServiceImpl.queryUserInfo(userInfoDTO);
			userGroupDTO.setUserId(userInfoDTO.getUserId());
			
			//查询用户所在组
			List<UserGroupDTO> listUserGroup = userGroupServiceImpl.queryUserGroup(userGroupDTO);
			
			for(UserGroupDTO userGroupDTOTemp : listUserGroup){
				
				GroupDTO group = new GroupDTO();
				group.setGroupId(userGroupDTOTemp.getGroupId());
				
				//查询用户组权限信息
				List<AccessInfoDTO> accessInfoDTOList = accessControlServiceImpl.queryAccessForGroup(group);
				for(AccessInfoDTO accessInfoDTO : accessInfoDTOList){
					if(actionName.equals(accessInfoDTO.getActionName()) &&  enableStatus.equals(accessInfoDTO.getEnable())){
						log.info("access right!");
						chain.doFilter(request, response);
						return ;
					}
				}
				
			}*/
			
				ResultMap result = new ResultMap();
				result.setStatus(STATUS.FAILE);
				result.setStatusCode(ResultMap.STATUS_CODE_NO_ACCESS);
				PrintWriter pw = response.getWriter();
				pw.write(JSONObject.fromObject(result).toString());
				return;
		}
		
		log.info("not login !");
			ResultMap result = new ResultMap();
			result.setStatus(STATUS.NEED_LOGIN);
			result.setStatusCode(ResultMap.STATUS_CODE_ONLOGIN);
			PrintWriter pw = response.getWriter();
			pw.write(JSONObject.fromObject(result).toString());
			return;
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
	}

	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		userInfoServiceImpl = (IUserInfoService) applicationContext.getBean("userInfoServiceImpl");
		accessControlServiceImpl = (IAccessControlService) applicationContext.getBean("accessControlServiceImpl");
		userGroupServiceImpl = (IUserGroupService) applicationContext.getBean("userGroupServiceImpl");
		
	}

}
