package com.roya.service.impl;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.roya.dao.IInterfaceInfoDao;
import com.roya.dto.InterfaceInfoDTO;
import com.roya.service.IInterfaceInfoService;
@Service("interfaceInfoServiceImpl")
@Transactional
public class InterfaceInfoServiceImpl extends BaseServiceImpl implements IInterfaceInfoService {

	@Autowired
	private IInterfaceInfoDao interfaceInfoDaoImpl;
	
	@Override
	public int addInfomation(InterfaceInfoDTO dto) throws SQLException {
		return interfaceInfoDaoImpl.addInfomation(dto);
	}

	@Override
	public List<InterfaceInfoDTO> queryInfomation(InterfaceInfoDTO dto) throws SQLException {
		return interfaceInfoDaoImpl.queryInfomation(dto);
	}

	@Override
	public void delInfomation(InterfaceInfoDTO dto) throws SQLException {
		interfaceInfoDaoImpl.delInfomation(dto);
		
	}

	@Override
	public void updateInfomation(@SuppressWarnings("rawtypes") Map map) throws SQLException {
		interfaceInfoDaoImpl.queryInfomation(map);
		
	}

}
