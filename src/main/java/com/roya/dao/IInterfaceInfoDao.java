package com.roya.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.roya.dto.InterfaceInfoDTO;

public interface IInterfaceInfoDao {

	int addInfomation(InterfaceInfoDTO dto) throws SQLException;

	List<InterfaceInfoDTO> queryInfomation(InterfaceInfoDTO dto) throws SQLException;

	void delInfomation(InterfaceInfoDTO dto) throws SQLException;

	void queryInfomation(@SuppressWarnings("rawtypes") Map map) throws SQLException;

}
