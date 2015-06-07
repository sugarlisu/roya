package com.roya.service;

import java.sql.SQLException;
import java.util.List;

import com.roya.dto.AddressListDTO;

public interface IAddressListService extends IBaseService {
	
	/**
	 * 
	* @Title: queryAddressList 
	* @Description: 通讯录列表
	* @param   AddressListDTO
	* @return AddressListDTO   
	* @throws
	 */
	public List<AddressListDTO> queryAddressList() throws SQLException;

}
