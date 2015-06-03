package com.roya.dao.impl;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.roya.dao.IProjectInfoDao;
import com.roya.dto.ProjectInfoDTO;
import com.roya.util.SqlName;

@Repository("projectInfoDaoImpl")
public class ProjectInfoDaoImpl extends BaseDaoImpl implements IProjectInfoDao {

	@Override
	public int addInformation(ProjectInfoDTO pm) throws SQLException {
		return (Integer) this.sqlMapClient.insert(SqlName.addProjectInfo, pm);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProjectInfoDTO> queryInformationList(ProjectInfoDTO pm) throws SQLException {
		return this.sqlMapClient.queryForList(SqlName.queryProjectInfoList,pm);
	}

	@Override
	public ProjectInfoDTO queryInformation(ProjectInfoDTO pm) throws SQLException {
		return (ProjectInfoDTO) this.sqlMapClient.queryForObject(SqlName.queryProjectInfo, pm);
	}

	@Override
	public int updateInformation(Map map) throws SQLException {
		return (Integer) this.sqlMapClient.update(SqlName.updateProjectInfo, map);
	}

	@Override
	public int delInformation(ProjectInfoDTO pm) throws SQLException {
		return (Integer) this.sqlMapClient.update(SqlName.deleteProjectInfo, pm);
	}

	@Override
	public List<ProjectInfoDTO> queryInformationHome() throws SQLException{
		return this.sqlMapClient.queryForList(SqlName.queryProjectInfoHome);
	}
}
