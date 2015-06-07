package com.roya.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.roya.dao.IScheduleDao;
import com.roya.dto.ScheduleDTO;
import com.roya.util.SqlName;

@Repository("scheduleDaoImpl")
public class ScheduleDaoImpl extends BaseDaoImpl implements IScheduleDao{

	@SuppressWarnings("unchecked")
	@Override
	public List<ScheduleDTO> queryScheduleList(ScheduleDTO dto) throws SQLException {
		return  this.sqlMapClientLocal.queryForList(SqlName.queryScheduleList,dto);
	}
}
