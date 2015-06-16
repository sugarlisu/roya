package com.roya.web.api;

import java.sql.SQLException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roya.common.ResultMap;
import com.roya.common.ResultMap.STATUS;
import com.roya.service.ITableJobService;



/**
 * 日程Controller
 * @author lisu
 *
 */
@Controller("tableJobController")
@RequestMapping("/job")
public class TableJobController{
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private ITableJobService tableJobServiceImpl;
	
	@RequestMapping(value="/list.shtml")
	@ResponseBody
	public ResultMap list(HttpServletRequest request){
		ResultMap result = new ResultMap();
		try {
			log.info("##################TableJob setTableJob begin!");
			tableJobServiceImpl.setTableJob();
			result.setStatus(STATUS.SUCCESS);
			result.setStatusCode(ResultMap.STATUS_CODE_SUCCESS);
			result.setMessage("手动跑批成功！");
			log.info("##################TableJob setTableJob end!");
		} catch (SQLException e) {
			log.error("#################TableJob setTableJob error", e);
		}
		
		return result;
	}
	
}
