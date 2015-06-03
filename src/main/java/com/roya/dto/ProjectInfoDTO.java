package com.roya.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
/** 
* 项目管理-基础信息表
*  lisu
*/
public class ProjectInfoDTO extends BaseDTO {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1070260041526797411L;
 
	private Integer id;   //项目名称
	private String projectName;   //项目名称
	private String projectVersionNum;  //项目版本号
	private String projectStatus;  //项目状态
	private String demandSide;  //需求方
	private String productSide;  //产品方
	private String projectDeveloper;  //开发人员
	private String projectTester;  //测试人员
	private String projectDesc;  //项目备注
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date brdDate;  //BRD时间
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date prdDate;  //PRD时间
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date projectExpectBeginDate;  //项目预计开始时间
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date projectExpectTestDate;  //预计提测时间
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date projectExpectSuccessDate;  //预计上线时间
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date projectRealBeginDate;  //预计上线时间
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date projectRealTestDate;  //预计上线时间
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date projectRealSuccessDate;  //预计上线时间
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getProjectVersionNum() {
		return projectVersionNum;
	}
	public void setProjectVersionNum(String projectVersionNum) {
		this.projectVersionNum = projectVersionNum;
	}
	public String getProjectStatus() {
		return projectStatus;
	}
	public void setProjectStatus(String projectStatus) {
		this.projectStatus = projectStatus;
	}
	public String getDemandSide() {
		return demandSide;
	}
	public void setDemandSide(String demandSide) {
		this.demandSide = demandSide;
	}
	public String getProductSide() {
		return productSide;
	}
	public void setProductSide(String productSide) {
		this.productSide = productSide;
	}
	public String getProjectDeveloper() {
		return projectDeveloper;
	}
	public void setProjectDeveloper(String projectDeveloper) {
		this.projectDeveloper = projectDeveloper;
	}
	public String getProjectTester() {
		return projectTester;
	}
	public void setProjectTester(String projectTester) {
		this.projectTester = projectTester;
	}
	public String getProjectDesc() {
		return projectDesc;
	}
	public void setProjectDesc(String projectDesc) {
		this.projectDesc = projectDesc;
	}
	public Date getBrdDate() {
		return brdDate;
	}
	public void setBrdDate(Date brdDate) {
		this.brdDate = brdDate;
	}
	public Date getPrdDate() {
		return prdDate;
	}
	public void setPrdDate(Date prdDate) {
		this.prdDate = prdDate;
	}
	public Date getProjectExpectBeginDate() {
		return projectExpectBeginDate;
	}
	public void setProjectExpectBeginDate(Date projectExpectBeginDate) {
		this.projectExpectBeginDate = projectExpectBeginDate;
	}
	public Date getProjectExpectTestDate() {
		return projectExpectTestDate;
	}
	public void setProjectExpectTestDate(Date projectExpectTestDate) {
		this.projectExpectTestDate = projectExpectTestDate;
	}
	public Date getProjectExpectSuccessDate() {
		return projectExpectSuccessDate;
	}
	public void setProjectExpectSuccessDate(Date projectExpectSuccessDate) {
		this.projectExpectSuccessDate = projectExpectSuccessDate;
	}
	public Date getProjectRealBeginDate() {
		return projectRealBeginDate;
	}
	public void setProjectRealBeginDate(Date projectRealBeginDate) {
		this.projectRealBeginDate = projectRealBeginDate;
	}
	public Date getProjectRealTestDate() {
		return projectRealTestDate;
	}
	public void setProjectRealTestDate(Date projectRealTestDate) {
		this.projectRealTestDate = projectRealTestDate;
	}
	public Date getProjectRealSuccessDate() {
		return projectRealSuccessDate;
	}
	public void setProjectRealSuccessDate(Date projectRealSuccessDate) {
		this.projectRealSuccessDate = projectRealSuccessDate;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
}
