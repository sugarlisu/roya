package com.roya.service;

import java.sql.SQLException;
import java.util.List;

import com.roya.dto.ScheduleDTO;

public interface IScheduleService extends IBaseService {
	
	/**
	 * 
	* @Title: queryDocumentList 
	* @Description: 文件列表
	* @param   DocumentDTO
	* @return DocumentDTO   
	* @throws
	 */
	public List<ScheduleDTO> queryScheduleList(ScheduleDTO dto) throws SQLException;

}
