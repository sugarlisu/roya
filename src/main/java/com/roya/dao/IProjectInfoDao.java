package com.roya.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.roya.dto.ProjectInfoDTO;

public interface IProjectInfoDao extends IBaseDao {

	/**
	 * 添加
	 * 
	 * @param pm
	 * @return
	 * @throws SQLException
	 */
	public int addInformation(ProjectInfoDTO pm) throws SQLException;
	
	/**
	 * 修改
	 * 
	 * @param pm
	 * @return
	 * @throws SQLException
	 */
	public int updateInformation(Map map) throws SQLException;
	/**
	 * 删除
	 * 
	 * @param pm
	 * @return
	 * @throws SQLException
	 */
	public int delInformation(ProjectInfoDTO pm)throws SQLException;

	/**
	 * 查询所有的记录
	 * 
	 * @return
	 * @throws SQLException
	 */
	public List<ProjectInfoDTO> queryInformationList(ProjectInfoDTO pm) throws SQLException;

	/**
	 * 查询详细信息
	 * 
	 * @param id
	 * @return
	 * @throws SQLException 
	 */
	public ProjectInfoDTO queryInformation(ProjectInfoDTO pm) throws SQLException;


	/**
	 * 项目首页列表展示
	 * 
	 * @return
	 * @throws SQLException
	 */
	public List<ProjectInfoDTO> queryInformationHome() throws SQLException;


}
