package com.roya.dto;

public class InterfaceInfoDTO extends BaseDTO {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8195977318385660971L;
	private Integer id;   //项目名称
	private Integer parentId;//上级id
	private String interfaceName;   //接口名称
	private String interfaceDeveloper;  //开发人员
	private String interfaceTester;  //测试人员
	private String interfaceUrl;  //接口地址
	private String interfaceContent; //接口内容 
	private String interfaceDesc;  //接口描述，备注

	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
	public String getInterfaceName() {
		return interfaceName;
	}
	public void setInterfaceName(String interfaceName) {
		this.interfaceName = interfaceName;
	}
	public String getInterfaceDeveloper() {
		return interfaceDeveloper;
	}
	public void setInterfaceDeveloper(String interfaceDeveloper) {
		this.interfaceDeveloper = interfaceDeveloper;
	}
	public String getInterfaceTester() {
		return interfaceTester;
	}
	public void setInterfaceTester(String interfaceTester) {
		this.interfaceTester = interfaceTester;
	}
	public String getInterfaceUrl() {
		return interfaceUrl;
	}
	public void setInterfaceUrl(String interfaceUrl) {
		this.interfaceUrl = interfaceUrl;
	}
	public String getInterfaceContent() {
		return interfaceContent;
	}
	public void setInterfaceContent(String interfaceContent) {
		this.interfaceContent = interfaceContent;
	}
	public String getInterfaceDesc() {
		return interfaceDesc;
	}
	public void setInterfaceDesc(String interfaceDesc) {
		this.interfaceDesc = interfaceDesc;
	}

	
}
