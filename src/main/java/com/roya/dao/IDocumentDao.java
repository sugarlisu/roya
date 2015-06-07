package com.roya.dao;

import java.sql.SQLException;
import java.util.List;

import com.roya.dto.DocumentDTO;


public interface IDocumentDao extends IBaseDao {

	/**
	 * 
	* @Title: queryDocumentList 
	* @Description: 文件类别
	* @param   DocumentDTO
	* @return DocumentDTO   	
	* @throws
	 */
	public List<DocumentDTO> queryDocumentList(DocumentDTO dto) throws SQLException;
	
}
