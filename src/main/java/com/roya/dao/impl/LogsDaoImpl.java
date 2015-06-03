package com.roya.dao.impl;

import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.roya.dao.ILogsDao;
import com.roya.dto.LogsDTO;
import com.roya.util.SqlName;


@Repository("logsDaoImpl")
public class LogsDaoImpl extends BaseDaoImpl implements ILogsDao {

	public int addLog(LogsDTO logsDTO) throws SQLException {
		return (Integer) this.sqlMapClient.insert(SqlName.addLogs, logsDTO);
	}

}
