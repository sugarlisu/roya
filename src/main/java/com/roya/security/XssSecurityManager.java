package com.roya.security;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.apache.log4j.Logger;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * 
* @ClassName: XssSecurityManager 
* @Description: 安全过滤配置管理类，统一替换可能造成XSS漏洞的字符为中文字符 
* @author chenming 
* @date 2014年9月9日 下午5:45:44 
*
 */
public class XssSecurityManager {

	private static Logger log = Logger.getLogger(XssSecurityManager.class);

	// 危险的javascript:关键字j av a script
	private final static Pattern[] DANGEROUS_TOKENS = new Pattern[] { Pattern
			.compile("^j\\s*a\\s*v\\s*a\\s*s\\s*c\\s*r\\s*i\\s*p\\s*t\\s*:",
					Pattern.CASE_INSENSITIVE) };

	// javascript:替换字符串（全角中文字符）
	private final static String[] DANGEROUS_TOKEN_REPLACEMENTS = new String[] { "ＪＡＶＡＳＣＲＩＰＴ：" };

	// 非法的字符集
	private static final char[] INVALID_CHARS = new char[] { '<', '>', '\'',
			'\"', '\\' };

	// 统一替换可能造成XSS漏洞的字符为全角中文字符
	private static final char[] VALID_CHARS = new char[] { '＜', '＞', '’', '“',
			'＼' };
	
	private static final String[] NOT_NEED_PROCEED_XSS_PARAM = new String[]{"pAboutGuarantor","pAboutFinancingParty","pSummary","editorValue","pRiskRankComtent"};

	// 开启xss过滤功能开关
	public static boolean enable=false;

	// url-patternMap(符合条件的url-param进行xss过滤）<String ArrayList>
	@SuppressWarnings("rawtypes")
	public static Map urlPatternMap = new HashMap();
	
	@SuppressWarnings("rawtypes")
	private static HashSet excludeUris=new HashSet();

	private XssSecurityManager() {
		// 不可被实例化
	}
	static {
		init();
	}

	private static void init() {
		try {
			String xssConfig = "/xss_security_config.xml";
			if(log.isDebugEnabled()){
				log.debug("XSS config file["+xssConfig+"] init...");
			}
			InputStream is = XssSecurityManager.class
					.getResourceAsStream(xssConfig);
			if (is == null) {
				log.warn("XSS config file["+xssConfig+"] not found.");
			}else{
				// 初始化过滤配置文件
				initConfig(is);
				is.close();
				log.info("XSS config file["+xssConfig+"] init completed.");
			}
		}
		catch (Exception e) {
			
			log.error("XSS config file init fail:"+e.getMessage(), e);
		}
		
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	private static void initConfig(InputStream is) throws Exception{
		DocumentBuilderFactory factory=DocumentBuilderFactory.newInstance();

		DocumentBuilder builder=factory.newDocumentBuilder();

		Element root = builder.parse(is).getDocumentElement();
		//-------------------
		NodeList nl=root.getElementsByTagName("enable");
		Node n=null;
		if(nl!=null && nl.getLength()>0){
			n=((org.w3c.dom.Element)nl.item(0)).getFirstChild();
		}
		if(n!=null){
			enable = new Boolean(n.getNodeValue().trim()).booleanValue();
		}
		log.info("XSS switch="+enable);
		//-------------------------
		nl=root.getElementsByTagName("filter-mapping");
		NodeList urlPatternNodes=null;
		if(nl!=null && nl.getLength()>0){
			Element  el=(Element)nl.item(0);
			urlPatternNodes=el.getElementsByTagName("url-pattern");
			//-----------------------------------------------------
			NodeList nl2=el.getElementsByTagName("exclude-url");
			if(nl2!=null && nl2.getLength()>0){
				for(int i=0;i<nl2.getLength();i++){
					Element e=(Element)nl2.item(i);
					Node paramNode=e.getFirstChild();
					if(paramNode!=null){
						String paramName=paramNode.getNodeValue().trim();
						if(paramName.length()>0){
							excludeUris.add(paramName.toLowerCase());
						}
					}
				}
			}
		}
		//----------------------
		if(urlPatternNodes!=null && urlPatternNodes.getLength()>0){
			for(int i=0;i<urlPatternNodes.getLength();i++){
				Element e=(Element)urlPatternNodes.item(i);
				String urlPattern=e.getAttribute("value");
				if(urlPattern!=null && (urlPattern=urlPattern.trim()).length()>0){
					List filtParamList = new ArrayList(2);
					if(log.isDebugEnabled()){
						log.debug("Xss filter mapping:"+urlPattern);
					}
					//-------------------------------
					NodeList temp=e.getElementsByTagName("include-param");
					if(temp!=null && temp.getLength()>0){
						for(int m=0;m<temp.getLength();m++){
							Node paramNode=(temp.item(m)).getFirstChild();
							if(paramNode!=null){
								String paramName=paramNode.getNodeValue().trim();
								if(paramName.length()>0){
									filtParamList.add(paramName);
								}
							}
							
						}
						
					}
					//一定得将url转换为小写
					urlPatternMap.put(urlPattern.toLowerCase(), filtParamList);
				}
			}
		}
		
		//----------------------
	}
	
	public static HttpServletRequest wrapRequest(HttpServletRequest httpRequest){
		if(httpRequest instanceof XssHttpRequestWrapper){
			//include/forword指令会重新进入此Filter
			XssHttpRequestWrapper temp=(XssHttpRequestWrapper)httpRequest;
			//include指令会增加参数，这里需要清理掉缓存
			temp.refiltParams();
			return temp;
		}else{
			// 校验url是否匹配，决定是否启动xss过滤
			if (isMatch(httpRequest)) {
				// 通过 XssHttpRequestWrapper对参数继续过滤
				XssHttpRequestWrapper xssRequest = new XssHttpRequestWrapper(httpRequest);
				log.info("XSS Filter url#" + httpRequest.getServletPath());
				return xssRequest;
			}
			return httpRequest;
		}
	}
	
	/**
	 * 根据配置文件的url-pattern规则匹配到url，决定是否进行xss过滤
	 * 
	 * @param httpRequest
	 * @return
	 */
	private static boolean isMatch(HttpServletRequest httpRequest) {
		if(!enable)return false;
		//获取url并且转换为小写匹配
		String url = httpRequest.getServletPath();
		url = url.toLowerCase();
		if(excludeUris!=null && excludeUris.contains(url)){
			return false;
		}
		boolean isMatch = false;
		if (urlPatternMap.size()>0) {
			if(urlPatternMap.get(url)!=null){
				isMatch=true;
			}else{
				@SuppressWarnings("unchecked")
				Set<String> urlPatternKeys = urlPatternMap.keySet();
				Iterator<String> it = urlPatternKeys.iterator();
				while (it.hasNext()) {
					String urlPattern = (String) it.next();
					if (url.matches(urlPattern)) {
						isMatch = true;
						break;
					}
				}
			}
		} 
		return isMatch;
	}
	
	@SuppressWarnings("unchecked")
	public static List<Object> getFiltParamNames(String url){
		//获取需要xss过滤的参数
		url = url.toLowerCase();
		List<Object> paramNameList = (ArrayList<Object>) urlPatternMap.get(url);
		if(paramNameList==null || paramNameList.size()==0){
			return null;
		}
		return paramNameList;
	}
	
	public static void filtRequestParams(Map<Object,Object> params,String servletPath){
		long t1=System.currentTimeMillis();
		//得到需要过滤的参数名列表，如果列表是空的，则表示过滤所有参数
		List<Object> filtParamNames=XssSecurityManager.getFiltParamNames(servletPath);
		filtRequestParams(params, filtParamNames);
		long t2=System.currentTimeMillis();
		if(log.isInfoEnabled()){
			log.info("XSS filt request["+servletPath+"] params completed["+(t2-t1)+"ms].");
		}
	}
	
	@SuppressWarnings({ })
	public static void filtRequestParams(Map<Object,Object> params,List<Object> filtParamNames){
		// 获取当前参数集
		Set<Object> parameterNames = params.keySet();
		Iterator<Object> it = parameterNames.iterator();
		//得到需要过滤的参数名列表，如果列表是空的，则表示过滤所有参数
		
		while (it.hasNext()) {
			String paramName = (String) it.next();
			boolean isFilt=false;
			if(filtParamNames==null || filtParamNames.contains(paramName) ){
				isFilt=true;
			}
			if (isFilt) {
				String[] values = (String[])params.get(paramName);
				
				boolean needProceXssFlag = true;
				
				//富文本框的值不过滤 
				for(String notProceXss : NOT_NEED_PROCEED_XSS_PARAM){
					if(notProceXss.equals(paramName)){
						needProceXssFlag = false;
					}
				}
				
				if(needProceXssFlag){
					proceedXss(values);
				}
				
			}
		}
	}

	

	/**
	 * 对参数进行防止xss漏洞处理
	 * 
	 * @param value
	 * @return
	 */
	private static void proceedXss(String[] values) {
		for (int i = 0; i < values.length; ++i) {
			String value = values[i];
			if (!isNullStr(value)) {
				values[i] = replaceSpecialChars(values[i]);
			}
		}
	}

	/**
	 * 替换非法字符以及危险关键字
	 * 
	 * @param str
	 * @return
	 */
	private static String replaceSpecialChars(String str) {
		for (int j = 0; j < INVALID_CHARS.length; ++j) {
			if (str.indexOf(INVALID_CHARS[j]) >= 0) {
				str = str.replace(INVALID_CHARS[j], VALID_CHARS[j]);
			}
		}
		str=str.trim();
		for (int i = 0; i < DANGEROUS_TOKENS.length; ++i) {
			str = DANGEROUS_TOKENS[i].matcher(str).replaceAll(
					DANGEROUS_TOKEN_REPLACEMENTS[i]);
		}

		return str;
	}

	/**
	 * 判断是否为空串，建议放到某个工具类中
	 * 
	 * @param value
	 * @return
	 */
	private static boolean isNullStr(String value) {
		return value == null || value.trim().length()==0;
	}
	
}
