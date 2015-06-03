package com.roya.dao.impl;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.roya.dao.IInterfaceInfoDao;
import com.roya.dto.InterfaceInfoDTO;
import com.roya.util.SqlName;

@Repository("interfaceInfoDaoImpl")
public class InterfaceInfoDaoImpl extends BaseDaoImpl implements IInterfaceInfoDao {

	@Override
	public int addInfomation(InterfaceInfoDTO dto) throws SQLException {
		return (Integer) this.sqlMapClient.insert(SqlName.addInterfaceInfo, dto);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<InterfaceInfoDTO> queryInfomation(InterfaceInfoDTO dto) throws SQLException {
		return this.sqlMapClient.queryForList(SqlName.queryInterfaceInfo, dto);
	}

	@Override
	public void delInfomation(InterfaceInfoDTO dto) throws SQLException {
		this.sqlMapClient.delete(SqlName.deleteInterfaceInfo, dto);
		
	}

	@Override
	public void queryInfomation(Map map) throws SQLException {
		this.sqlMapClient.update(SqlName.updateInterfaceInfo, map);
		
	}

}
