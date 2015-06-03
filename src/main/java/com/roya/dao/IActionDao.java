package com.roya.dao;

import java.util.List;

import com.roya.dto.ActionDTO;

public interface IActionDao extends IBaseDao{
	
	/**
	 * 
	* @Title: queryAllAction 
	* @Description: 查询所有action
	* @return List<ActionDTO>   
	* @throws
	 */
	public List<ActionDTO> queryAllAction();
	
	/**
	 * 
	* @Title: addAction 
	* @Description: 添加action信息
	* @param   actionDto
	* @return int   
	* @throws
	 */
	public int  addAction(ActionDTO actionDto);
	
	/**
	 * 
	* @Title: queryActionById 
	* @Description: 查询单个action
	* @param   actionDto
	* @return ActionDTO   
	* @throws
	 */
	public ActionDTO queryActionById(ActionDTO actionDto);
}
