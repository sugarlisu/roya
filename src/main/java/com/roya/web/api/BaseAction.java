package com.roya.web.api;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.roya.common.ResultMap;
import com.roya.service.ILogsService;

public abstract class BaseAction {
	protected Logger log = Logger.getLogger(this.getClass());

	@Autowired
	protected ILogsService logsServiceImpl;

	/**
	 * 返回结果
	 */
	ResultMap resultMap = new ResultMap();
}
