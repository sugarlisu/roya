package com.roya.dao.impl;

import javax.annotation.Resource;

import org.apache.log4j.Logger;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.roya.dao.IBaseDao;

public class BaseDaoImpl implements IBaseDao {

	protected Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "sqlMapClient")
	protected SqlMapClient sqlMapClient;
	
	@Resource(name = "sqlMapClientLocal")
	protected SqlMapClient sqlMapClientLocal;
	
}
