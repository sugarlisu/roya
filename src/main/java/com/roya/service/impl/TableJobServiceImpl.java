package com.roya.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roya.dao.ITableJobDao;
import com.roya.dto.AddressListDTO;
import com.roya.dto.AddressOrgDTO;
import com.roya.dto.DocumentJobDTO;
import com.roya.dto.MeetingJobDTO;
import com.roya.service.ITableJobService;

@Service("tableJobServiceImpl")
public class TableJobServiceImpl extends BaseServiceImpl implements ITableJobService{

	@Autowired
	private ITableJobDao tableJobDaoImpl;

	@Override
	public void setTableJob() throws SQLException {
		log.info("begin~~~~~~~~~~~~~~~~~~~~ address_list！！！！！");
		List<AddressListDTO>  list =	tableJobDaoImpl.queryAddressList();
		tableJobDaoImpl.delAddressList();
		for(AddressListDTO dto:list){
			tableJobDaoImpl.addAddressList(dto);
		}
		
		log.info("begin~~~~~~~~~~~~~~~~~~~~ address_organization！！！！！");
		
		List<AddressOrgDTO> orgList = tableJobDaoImpl.queryAddressOrgList();
		tableJobDaoImpl.delAddressOrg();
		for(AddressOrgDTO dto:orgList){
			tableJobDaoImpl.addAddressOrg(dto);
		}
		
		log.info("begin~~~~~~~~~~~~~~~~~~~~ document！！！！！");
		
		List<DocumentJobDTO> docList = tableJobDaoImpl.queryDocumentList();
		tableJobDaoImpl.delDocument();
		for(DocumentJobDTO dto:docList){
			tableJobDaoImpl.addDocument(dto);
		}
		
		
		log.info("begin~~~~~~~~~~~~~~~~~~~~ meeting！！！！！");
		
		List<MeetingJobDTO> meetList = tableJobDaoImpl.queryMeetingList();
		tableJobDaoImpl.delMeeting();
		for(MeetingJobDTO dto:meetList){
			tableJobDaoImpl.addMeeting(dto);
		}
	}


}
