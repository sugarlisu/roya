package com.roya.service;

import java.sql.SQLException;
import java.util.List;

import com.roya.dto.DocumentDTO;

public interface IDocumentService extends IBaseService {
	
	/**
	 * 
	* @Title: queryDocumentList 
	* @Description: 文件列表
	* @param   DocumentDTO
	* @return DocumentDTO   
	* @throws
	 */
	public List<DocumentDTO> queryDocumentList(DocumentDTO dto) throws SQLException;

}
