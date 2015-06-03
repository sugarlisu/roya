package com.roya.service.impl;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.roya.dao.IProjectInfoDao;
import com.roya.dto.ProjectInfoDTO;
import com.roya.service.IProjectInfoService;

@Service("projectInfoServiceImpl")
@Transactional
public class ProjectInfoServiceImpl extends BaseServiceImpl implements IProjectInfoService {

	@Autowired
	private IProjectInfoDao projectInfoDaoImpl;

	@Override
	public int addInformation(ProjectInfoDTO pm) throws SQLException {
		return projectInfoDaoImpl.addInformation(pm);
	}

	@Override
	public List<ProjectInfoDTO> queryInformationList(ProjectInfoDTO pm) throws SQLException {
		return projectInfoDaoImpl.queryInformationList(pm);
	}

	@Override
	public ProjectInfoDTO queryInformation(ProjectInfoDTO pm) throws SQLException {
		return projectInfoDaoImpl.queryInformation(pm);
	}

	@Override
	public int updateInformation(Map map) throws SQLException {
		return projectInfoDaoImpl.updateInformation(map);
	}

	@Override
	public int delInformation(ProjectInfoDTO pm) throws SQLException {
		return projectInfoDaoImpl.delInformation(pm);
	}

	@Override
	public List<ProjectInfoDTO> queryInformationHome() throws SQLException {
		return projectInfoDaoImpl.queryInformationHome();
	}

}
