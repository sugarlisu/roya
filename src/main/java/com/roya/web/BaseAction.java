package com.roya.web;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.roya.service.ILogsService;

public abstract class BaseAction {
	protected Logger log = Logger.getLogger(this.getClass());
	@Autowired
	protected ILogsService logsServiceImpl;
}
