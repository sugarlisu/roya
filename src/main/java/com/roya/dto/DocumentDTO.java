package com.roya.dto;


/**
 * 
 * @ClassName: DocumentDTO
 * @Description:文件dto
 * lisu
 */
public class DocumentDTO extends BaseDTO {
	/**
	 * 
	 */
	private static final long serialVersionUID = 2181030054722302268L;
	private String title;// 标题
	private String weburl;// 路径
	private String filetype;// 文件类型
	private String uid;// 用户Id
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWeburl() {
		return weburl;
	}
	public void setWeburl(String weburl) {
		this.weburl = weburl;
	}
	public String getFiletype() {
		return filetype;
	}
	public void setFiletype(String filetype) {
		this.filetype = filetype;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}

}
