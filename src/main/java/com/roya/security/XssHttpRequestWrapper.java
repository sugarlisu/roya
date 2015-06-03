package com.roya.security;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

/**
 * 
* @ClassName: XssHttpRequestWrapper 
* @Description: 主要是对参数进行xss过滤，替换原始的request的getParameter相关功能 
* @author chenming 
* @date 2014年9月9日 下午5:45:28 
*
 */
public class XssHttpRequestWrapper extends HttpServletRequestWrapper {

	protected Map<Object,Object> parameters;


	
	
	/**
	 * 封装http请求
	 * 
	 * @param request
	 */
	public XssHttpRequestWrapper(HttpServletRequest request) {
		super(request);
	}
	
	

	public void setCharacterEncoding(String enc)
			throws UnsupportedEncodingException {
		super.setCharacterEncoding(enc);
		//当编码重新设置时，重新加载重新过滤缓存。
		refiltParams();
	}
	
	void refiltParams(){
		parameters=null;
	}

	/**
	 * 复写父类的getParameter方法
	 */
	public String getParameter(String string) {
		String strList[] = getParameterValues(string);
		if (strList != null && strList.length > 0)
			return strList[0];
		else
			return null;
	}

	/**
	 * 复写父类的getParameterValues方法
	 */
	public String[] getParameterValues(String string) {
		if (parameters == null) {
			paramXssFilter();
		}
		return (String[]) parameters.get(string);
	}

	/**
	 * 复写父类的getParameterMap方法
	 */
	public Map<Object,Object> getParameterMap() {
		if (parameters == null) {
			paramXssFilter();
		}
		return parameters;
	}

	/**
	 * 
	 * 校验参数，若含xss漏洞的字符,进行替换
	 */
	@SuppressWarnings("unchecked")
	private void paramXssFilter() {
		parameters = new HashMap<Object, Object>(getRequest().getParameterMap());
		XssSecurityManager.filtRequestParams(parameters, this.getServletPath());
	}

}
