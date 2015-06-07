package com.roya.dao;

import java.sql.SQLException;
import java.util.List;

import com.roya.dto.AddressListDTO;


public interface IAddressListDao extends IBaseDao {

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
