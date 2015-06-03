package com.roya.web.filter;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

import com.roya.dto.UserInfoDTO;
import com.roya.service.ILogsService;
import com.roya.util.DTOdateSet;

/**
 * Servlet Filter implementation class AccessFilter
 */
@Component(value="sysLogFilter")
public class SysLogFilter implements Filter,ApplicationContextAware{
	
	private Logger log = Logger.getLogger(this.getClass());
	
	@Autowired
	protected ILogsService logsServiceImpl;
    /**
     * Default constructor. 
     */
    public SysLogFilter() {
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	@SuppressWarnings("unchecked")
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest)request;
		HttpSession session = httpRequest.getSession();
		
		String URI = httpRequest.getRequestURI();
		String actionName = URI.substring(URI.lastIndexOf("/")+1);
		UserInfoDTO userInfoDTO = (UserInfoDTO) session.getAttribute(DTOdateSet.user);
		if(actionName.endsWith(".shtml"))
		{
			Map<String,Object> params = new HashMap<String,Object>();
			params.putAll(request.getParameterMap());
			
			params.put("referer", httpRequest.getHeader("Referer"));
			params.put("password", "********");
			params.put("ip", getRemoteHost(httpRequest));
			
			Cookie[] cookies =  httpRequest.getCookies();
			if(cookies != null){
				for(Cookie cookie:cookies){
					params.put(cookie.getName(),cookie.getValue());
				}
			}
			request.setAttribute("ip", getRemoteHost(httpRequest));
			
			try {
			if(userInfoDTO!= null){
				logsServiceImpl.addLog(actionName, JSONObject.fromObject(params).toString(), userInfoDTO.getUserNickname());
			}else{
				logsServiceImpl.addLog(actionName, JSONObject.fromObject(params).toString(), "system");
			}
			} catch (SQLException e) {
				log.warn("Write log error !",e);
			}
		}
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
	}

	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		logsServiceImpl = (ILogsService) applicationContext.getBean("logsServiceImpl");
		
	}
	
	public String getRemoteHost(javax.servlet.http.HttpServletRequest request){
	    String ip = request.getHeader("x-forwarded-for");
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
	        ip = request.getHeader("Proxy-Client-IP");
	    }
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
	        ip = request.getHeader("WL-Proxy-Client-IP");
	    }
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
	        ip = request.getRemoteAddr();
	    }
	    return ip.equals("0:0:0:0:0:0:0:1")?"127.0.0.1":ip;
	}

}
