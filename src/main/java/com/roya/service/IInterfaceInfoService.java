package com.roya.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.roya.dto.InterfaceInfoDTO;

public interface IInterfaceInfoService {

	int addInfomation(InterfaceInfoDTO dto) throws SQLException;

	List<InterfaceInfoDTO> queryInfomation(InterfaceInfoDTO dto) throws SQLException;

	void delInfomation(InterfaceInfoDTO dto) throws SQLException;

	void updateInfomation(@SuppressWarnings("rawtypes") Map map) throws SQLException;

}
