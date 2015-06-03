package com.roya.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;

import com.roya.security.XssSecurityManager;

public class XSSFilter implements Filter{

	Logger log = Logger.getLogger(this.getClass());
	
	public void init(FilterConfig filterConfig) throws ServletException {
		log.info("init XSSFilter !");
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		httpRequest  = XssSecurityManager.wrapRequest(httpRequest);
		chain.doFilter(httpRequest, response);
	}

	public void destroy() {
		log.info("destroy XSSFilter!");
	}

}
