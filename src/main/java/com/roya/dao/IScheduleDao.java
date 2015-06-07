package com.roya.dao;

import java.sql.SQLException;
import java.util.List;

import com.roya.dto.ScheduleDTO;


public interface IScheduleDao extends IBaseDao {

	/**
	 * 
	* @Title: queryScheduleList 
	* @Description: 日程列表
	* @param   ScheduleDTO
	* @return ScheduleDTO   
	* @throws
	 */
	public List<ScheduleDTO> queryScheduleList(ScheduleDTO dto) throws SQLException;
	
}
