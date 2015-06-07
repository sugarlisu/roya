package com.roya.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.roya.dao.IDocumentDao;
import com.roya.dto.DocumentDTO;
import com.roya.util.SqlName;

@Repository("documentDaoImpl")
public class DocumentDaoImpl extends BaseDaoImpl implements IDocumentDao{

	@SuppressWarnings("unchecked")
	@Override
	public List<DocumentDTO> queryDocumentList(DocumentDTO dto)
			throws SQLException {
		return  this.sqlMapClientLocal.queryForList(SqlName.queryDocumentList,dto);
	}

}
