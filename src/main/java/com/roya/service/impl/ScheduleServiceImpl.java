package com.roya.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roya.dao.IScheduleDao;
import com.roya.dto.ScheduleDTO;
import com.roya.service.IScheduleService;

@Service("scheduleServiceImpl")
public class ScheduleServiceImpl extends BaseServiceImpl implements IScheduleService{

	@Autowired
	private IScheduleDao scheduleDTODaoImpl;

	@Override
	public List<ScheduleDTO> queryScheduleList(ScheduleDTO dto) throws SQLException {
		return scheduleDTODaoImpl.queryScheduleList(dto);
	}
}
