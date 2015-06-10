package com.roya.job;

import java.sql.SQLException;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.roya.service.ITableJobService;

/**
 * 
* @ClassName: TableJob 
* @Description: 表同步
*  address_list	 address_organization document meeting user_meeting
 */
@Component(value="tableJob" )
public class TableJob {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private ITableJobService tableJobServiceImpl;
	
	@Scheduled(cron = "0 0 01 * * ?") 
	public void setTableJob(){
		try {
			log.info("##################TableJob setTableJob begin!");
			tableJobServiceImpl.setTableJob();
			log.info("##################TableJob setTableJob end!");
		} catch (SQLException e) {
			log.error("#################TableJob setTableJob error", e);
		}
	}
}