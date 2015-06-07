package com.roya.web.filter;

import java.io.IOException;
import java.io.PrintWriter;

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
import org.springframework.stereotype.Component;

import com.roya.common.ResultMap;
import com.roya.common.ResultMap.STATUS;
import com.roya.dto.UserMeetingDTO;
import com.roya.util.DTOdateSet;

/**
 * Servlet Filter implementation class AccessFilter
 */
@Component(value="accessControl")
public class AccessControl implements Filter{
	
	private Logger log = Logger.getLogger(this.getClass());
	
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
		UserMeetingDTO user  = (UserMeetingDTO) session.getAttribute(DTOdateSet.user);
		
		
		if(null != user ){
			log.info("access right!");
			chain.doFilter(request, response);
			return ;
		}
		
		log.info("not login !");
			ResultMap result = new ResultMap();
			result.setStatus(STATUS.FAILE);
			result.setStatusCode(ResultMap.STATUS_CODE_ONLOGIN);
			result.setMessage("请登录！");
			response.setContentType("application/json;charset=UTF-8");
			PrintWriter pw = response.getWriter();
			pw.write(JSONObject.fromObject(result).toString());
			return;
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
	}


}
