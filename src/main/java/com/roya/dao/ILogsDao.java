package com.roya.dao;

import java.sql.SQLException;

import com.roya.dto.LogsDTO;

public interface ILogsDao extends IBaseDao  {
	
	/**
	 * 
	* @Title: addLog 
	* @Description: 添加系统日志
	* @param   logsDTO
	* @param @throws SQLException    
	* @return int   
	* @throws
	 */
	public int addLog(LogsDTO logsDTO) throws SQLException;
}
