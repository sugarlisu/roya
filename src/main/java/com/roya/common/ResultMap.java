package com.roya.common;

import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.codehaus.jackson.map.annotate.JsonSerialize;

/**
 * @Title: ResultMap.java
 * @Description: jsonp换回结果 
 * @version V1.0
 */
@JsonSerialize(include=JsonSerialize.Inclusion.NON_NULL)
public class ResultMap  {
	
	protected Logger log = Logger.getLogger(this.getClass());
	
	public enum STATUS{
		SUCCESS,FAILE,ERROR,WARN,NEED_LOGIN
	}
	
	private String statusCode;
	/**
	 * 状态
	 */
	private STATUS status = STATUS.FAILE;
	
	/**
	 * 提示语
	 */
	private String message="";

	/**
	 * 返回结果
	 */
	private Map<String,Object> attribute = new HashMap<String,Object>();
	/**
	 * 正常成功
	 */
	public static final String STATUS_CODE_SUCCESS = "0000";
	/**
	 * 权限不够
	 */
	public static final String STATUS_CODE_NO_ACCESS = "0006";
	/**
	 * 网络异常
	 */
	public static final String STATUS_CODE_NETWORK_ERROR = "1001";
	/**
	 * 链接超时
	 */
	public static final String STATUS_CODE_TIMEOUT = "1002";
	/**
	 * 未登录
	 */
	public static final String STATUS_CODE_ONLOGIN = "2001";
	/**
	 * 参数缺失
	 */
	public static final String STATUS_CODE_PARAMETERS_LOSE = "2002";
	/**
	 * 参数类型错误
	 */
	public static final String STATUS_CODE_PARAMETERS_TYPE_ERROR = "2003";
	/**
	 * 请求对象不存在
	 */
	public static final String STATUS_CODE_OBJECT_NOFOUNT = "2004";
	
	/**
	 * 身份认证不通过
	 */
	public static final String STATUS_CODE_AUTHENTICATION_ERROE = "2005";
	
	/**
	 * 违法操作
	 */
	public static final String STATUS_CODE_OPERATE_ERROE = "2006";
	
	/**
	 * 重名验证错误
	 */
	public static final String STATUS_CODE_RENAME_ERROE = "2007";
	/**
	 * 参数校验不通过
	 */
	public static final String STATUS_CODE_PARAMETERS_VALIDATE_ERROR = "2008";
	
	/**
	 * 帐户名密码错误
	 */
	public static final String STATUS_CODE_PWS_ERROR = "2009";
	
	/**
	 * 账户已经被禁用
	 */
	public static final String STATUS_CODE_ACCOUNT_DISABLE = "2012";
	
	/**
	 * 密码错误
	 */
	public static final String STATUS_CODE_USER_PASSWORD_ERROR = "2013";
	
	/**
	 * 系统掷出类异常
	 */
	public static final String STATUS_CODE_SYS_EXCEPTION = "3001";
	
	
	/**
	 * 返回的产品对象异常
	 */
	public static final String STATUS_CODE_RETURNBOJECT_ERROR = "2201";
	
	/*** 1XXX 网络通讯错误，2xxx业务逻辑错误，3xxx系统抛出异常***/
	/*** 20xx公用，21xx用户相关及登录，22xx产品相关  23xx订单 ***/
	
	public STATUS getStatus() {
		return status;
	}

	public void setStatus(STATUS status) {
		this.status = status;
	}

	public Map<String, Object> getAttribute() {
		return attribute;
	}

	public void setAttribute(Map<String, Object> attribute) {
		this.attribute = attribute;
	}

	public String getStatusCode() {
		return statusCode;
	}

	public void setStatusCode(String statusCode) {
		this.statusCode = statusCode;
	}
	
	public void setAttribute(String key,Object value){
		attribute.put(key, value);
	}
	
	public Object getAttribute(String key){
		return attribute.get(key);
	}
	
	public void putAll(Map<String,Object> object){
		attribute.putAll(object);
	}

	public String getMessage() {
		//在 info 和 Debug 才显示 错误提示语
		if(log.isDebugEnabled() || log.isInfoEnabled()){
			return message;
		}else{
			 return "";
		}
		
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
}

	