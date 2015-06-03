
package com.roya.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;


public class JSONPFilter implements Filter {

	Logger logger = Logger.getLogger(getClass());
	
	private String encoding = null;

	private String callback;

	private static String CONTEXT_PATH = "";
	
	private static final String[] LINKS_REGEX = {
		"^/api/file/download"
	};
	
	@Override
	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;

		request.setCharacterEncoding(encoding);
		response.setCharacterEncoding(encoding);
		String requestUri = request.getRequestURI();
		if(!needLogin(requestUri)){
			chain.doFilter(request, response);
			return;
		}
		

		JSONPResponseWrapper jsonsprw = new JSONPResponseWrapper(response);

		chain.doFilter(request, jsonsprw);

		callback = req.getParameter("callback");

		byte[] b = null;
		try{
			if (StringUtils.isNotBlank(callback)) {
				int jsonsprwStatus = jsonsprw.getStatus();
				if (jsonsprwStatus == HttpServletResponse.SC_OK) {
					StringBuffer sb = new StringBuffer();
					sb.append(callback).append("(")
							.append(new String(jsonsprw.getResponseData()))
							.append(")");
					b = sb.toString().getBytes();

				}
				res.setContentType("text/plain");
			} else {
				b = jsonsprw.getResponseData();
			}

			res.setContentLength(b.length);
			res.getOutputStream().write(b);
			res.getOutputStream().flush();

		}catch (Exception e) {
			logger.warn(e.getMessage(),e);
		}
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.encoding = filterConfig.getInitParameter("encoding");
		ServletContext context = filterConfig.getServletContext();
		CONTEXT_PATH = context.getContextPath();
		//获取在web.xml文件中配置了的编码格式的信息
		  this.encoding = filterConfig.getInitParameter("encoding");
	}
	/**
	 * 判断当前请求是否需要登陆
	 * @param requestUri
	 */
	private boolean needLogin(String requestUri){
		
		if(StringUtils.isEmpty(requestUri) || requestUri.equals(CONTEXT_PATH)){
			return false;
		}else{
			requestUri = requestUri.replaceFirst(CONTEXT_PATH, "");
		}
		
		/**
		 *排除根目录 
		 */
		if(requestUri.equals("/")){
			return false;
		}
		
		/**
		 * 排除满足正则的URL
		 */
		for(int i=0; i < LINKS_REGEX.length; i++){
			String regex = LINKS_REGEX[i];
			if(requestUri.matches(regex)){
				return false;
			}
		}
		
		return true;
	}
}


