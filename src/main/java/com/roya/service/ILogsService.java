package com.roya.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.roya.dto.LogsDTO;

public interface ILogsService extends IBaseService {
	
	/**
	 * 
	* @Title: addLog 
	* @Description: 添加系统log日志
	* @param   title
	* @param   Content
	* @param @throws SQLException    
	* @return int   
	* @throws
	 */
	public int addLog(String title,String content,String createBy) throws SQLException;
	
	/**
	 * 
	* @Title: addLog 
	* @Description: 添加系统log日志
	* @param   logsDTO
	* @param @throws SQLException    
	* @return int   
	* @throws
	 */
	public int addLog(LogsDTO logsDTO) throws SQLException;
	
	/**
	 * 
	* @Title: addLogs 
	* @Description: 批量添加系统日志
	* @param @param logsList
	* @param @return
	* @param @throws SQLException    
	* @return int   
	* @throws
	 */
	public int addLogs(List<LogsDTO> logsList) throws SQLException;
	
	/**
	 * 
	* @Title: addLogsMap 
	* @Description: 批量添加系统日志
	* @param   logsList
	* @param @throws SQLException    
	* @return int   
	* @throws
	 */
	public int addLogs(Map<String,String> logsMap,String createBy) throws SQLException;
	
}
