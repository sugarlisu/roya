package com.roya.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.roya.dao.IDocumentDao;
import com.roya.dto.DocumentDTO;
import com.roya.service.IDocumentService;

@Service("documentServiceImpl")
public class DocumentServiceImpl extends BaseServiceImpl implements IDocumentService{

	@Autowired
	private IDocumentDao documentDaoImpl;

	public List<DocumentDTO> queryDocumentList(DocumentDTO dto)
			throws SQLException {
		return documentDaoImpl.queryDocumentList(dto);
	}

}
