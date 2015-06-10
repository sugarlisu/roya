package com.roya.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.roya.dao.ITableJobDao;
import com.roya.dto.AddressListDTO;
import com.roya.dto.AddressOrgDTO;
import com.roya.dto.DocumentJobDTO;
import com.roya.dto.MeetingJobDTO;
import com.roya.util.SqlName;

@Repository("tableJobDaoImpl")
@SuppressWarnings("unchecked")
public class TableJobDaoImpl extends BaseDaoImpl implements ITableJobDao{

	@Override
	public List<AddressListDTO> queryAddressList() throws SQLException {
		return  this.sqlMapClient.queryForList(SqlName.jobQueryAddressList);
	}

	@Override
	public void addAddressList(AddressListDTO dto) throws SQLException {
		 this.sqlMapClientLocal.insert(SqlName.jobAddAddressList,dto);
		
	}

	@Override
	public List<AddressOrgDTO> queryAddressOrgList() throws SQLException {
		return  this.sqlMapClient.queryForList(SqlName.jobQueryAddressOrgList);
	}

	@Override
	public void addAddressOrg(AddressOrgDTO dto) throws SQLException {
		 this.sqlMapClientLocal.insert(SqlName.jobAddAddressOrg,dto);
	}

	@Override
	public void delAddressList() throws SQLException {
		this.sqlMapClientLocal.delete(SqlName.jobDelAddressList);
	}

	@Override
	public void delAddressOrg() throws SQLException {
		this.sqlMapClientLocal.delete(SqlName.jobDelAddressOrg);
		
	}

	@Override
	public List<DocumentJobDTO> queryDocumentList() throws SQLException {
		return  this.sqlMapClient.queryForList(SqlName.jobQueryDocumentList);
	}

	@Override
	public void addDocument(DocumentJobDTO dto) throws SQLException {
		this.sqlMapClientLocal.insert(SqlName.jobAddDocument,dto);
		
	}

	@Override
	public void delDocument() throws SQLException {
		this.sqlMapClientLocal.delete(SqlName.jobDelDocument);
		
	}

	@Override
	public List<MeetingJobDTO> queryMeetingList() throws SQLException {
		return  this.sqlMapClient.queryForList(SqlName.jobQueryMeetingList);
	}

	@Override
	public void addMeeting(MeetingJobDTO dto) throws SQLException {
		this.sqlMapClientLocal.insert(SqlName.jobAddMeeting,dto);
		
	}

	@Override
	public void delMeeting() throws SQLException {
		this.sqlMapClientLocal.delete(SqlName.jobDelMeeting);
		
	}
	
}
