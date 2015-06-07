package com.roya.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roya.dao.IAddressListDao;
import com.roya.dto.AddressListDTO;
import com.roya.service.IAddressListService;

@Service("addressListServiceImpl")
public class AddressListServiceImpl extends BaseServiceImpl implements IAddressListService{

	@Autowired
	private IAddressListDao addressListDaoImpl;
	

	@Override
	public List<AddressListDTO> queryAddressList() throws SQLException {
		return addressListDaoImpl.queryAddressList();
	}


}
