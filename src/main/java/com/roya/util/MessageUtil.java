package com.roya.util;


import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.apache.log4j.Logger;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

public class MessageUtil {
	
	private static Map<String,Map<String,Object>> messageTemplate = new HashMap<String,Map<String,Object>>();
	/**
	 * 标题
	 */
	public static String KEY_TITLE = "title";
	
	/**
	 * 内容
	 */
	public static String KEY_CONTENT = "content";
	static{
		Logger logger = Logger.getLogger(MessageUtil.class);
		
		SAXReader  saxReader = new SAXReader();
		try {
			Document document = saxReader.read(MessageUtil.class.getResourceAsStream("/messageTemplate.xml"));
			Element employees=document.getRootElement();   
			for(@SuppressWarnings("unchecked") Iterator<Element> typeElementIterator = employees.elementIterator();typeElementIterator.hasNext();){
				Element idElement = typeElementIterator.next();
					
				String type = idElement.attributeValue("type");
				Map<String,Object> 	idMessagesMap = new HashMap<String,Object>();
				
				for(@SuppressWarnings("unchecked") Iterator<Element> idElementIterator = idElement.elementIterator();idElementIterator.hasNext();){
					Element valueElement = idElementIterator.next();
					
					String id = valueElement.attributeValue("code");
					Map<String,Object> messageMap = new HashMap<String,Object>();
					
					for(@SuppressWarnings("unchecked") Iterator<Element> valueElementIterator = valueElement.elementIterator();valueElementIterator.hasNext();){
						Element valuesElement = valueElementIterator.next();
						
						messageMap.put(valuesElement.getName(), valuesElement.getData());
					}
					idMessagesMap.put(id, messageMap);
				}
				messageTemplate.put(type, idMessagesMap);
			}
		} catch (DocumentException e) {
			logger.error("Init MessageTemplate error :", e);
			throw new RuntimeException(e);
		}
		
	}
	
	
	/**
	 * 
	* @Title: getMessage 
	* @Description: 获取信息内容
	* @param   type  信息类型
	* @param   id   类型下面的ID
	* @param   params  需要在模板中替换的动态内容
	* @return Map<String,Object>  map里面的key键为title和content 
	* @throws
	 */
	@SuppressWarnings("unchecked")
	public static Map<String,Object> getMessage(String type,String id,Map<String,Object> params){
		
		
		Map<String,Object> typeMap = new HashMap<String, Object>(messageTemplate.get(type));
		
		if(typeMap == null){
			return null;
		}
		
		typeMap = (Map<String, Object>) typeMap.get(id);
		
		String messageTemplteContent = (String) typeMap.get("content");
		
		Set<Entry<String,Object>> set = params.entrySet();
		
		for(Entry<String,Object> entry : set){
			String tmp = "\\{"+entry.getKey()+"\\}";
			messageTemplteContent = messageTemplteContent.replaceAll(tmp, (String)entry.getValue());
		}
		
		Map<String,Object> result = new HashMap<String,Object>();
		result.put("content", messageTemplteContent);
		return result;
	}
	
	/**
	 * 
	* @Title: getMessage 
	* @Description: 获取信息内容
	* @param   type  信息类型
	* @param   id   类型下面的ID
	* @param   params  需要在模板中替换的动态内容
	* @return Map<String,Object>  map里面的key键为title和content 
	* @throws
	 */
	@SuppressWarnings("unchecked")
	public static Map<String,Object> getMessageInfo(String type,String id,Map<String,Object> params){
		
		Map<String,Object> typeMap = messageTemplate.get(type);
		
		if(typeMap == null){
			return null;
		}
		
		typeMap = (Map<String, Object>) typeMap.get(id);
		
		String messageTemplteContent = (String) typeMap.get(KEY_CONTENT);
		
		String messageTemplteTitle = (String) typeMap.get(KEY_TITLE);
		
		Set<Entry<String,Object>> set = params.entrySet();
		
		for(Entry<String,Object> entry : set){
			String tmp = "\\{"+entry.getKey()+"\\}";
			String v = "";
			if(null!=entry.getValue()){
				v = (String)entry.getValue();
			}
			messageTemplteContent = messageTemplteContent.replaceAll(tmp,v);
			messageTemplteTitle = messageTemplteTitle.replaceAll(tmp,v);
		}
		Map<String,Object> result = new HashMap<String,Object>();
		result.put(KEY_TITLE, messageTemplteTitle);
		result.put(KEY_CONTENT, messageTemplteContent);
		return result;
	}
	public static void main(String[] args) {
		Map<String,Object> params = new HashMap<String,Object>();
		params.put("clientName", "qiye");
		params.put("amount", "1000万");
		params.put("projectName", "长江一号");
		System.out.println(MessageUtil.getMessage("order", "130", params));;
	}
}
