package com.roya.dto;

/**
 * 
* @ClassName: LogsDTO 
* @Description: 记录系统日志 
* @author chenming 
* @date 2014年9月22日 上午10:23:06 
*
 */
public class LogsDTO extends BaseDTO{

	/** 
	* @Fields serialVersionUID :    
	*/ 
	private static final long serialVersionUID = -125761922418559544L;

	/**
	 * logID
	 */
	private Integer id;
	
	/**
	 * 日志标题
	 */
	private String title;
	
	/**
	 * 日志内容
	 */
	private String content;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}
