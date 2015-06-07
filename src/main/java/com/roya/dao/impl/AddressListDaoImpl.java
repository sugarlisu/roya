package com.roya.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.roya.dao.IAddressListDao;
import com.roya.dto.AddressListDTO;
import com.roya.util.SqlName;

@Repository("addressListDaoImpl")
public class AddressListDaoImpl extends BaseDaoImpl implements IAddressListDao{


	@SuppressWarnings("unchecked")
	@Override
	public List<AddressListDTO> queryAddressList() throws SQLException {
		return  this.sqlMapClientLocal.queryForList(SqlName.queryAddressList);
	}

}
