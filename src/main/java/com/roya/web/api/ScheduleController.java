package com.roya.web.api;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roya.common.ResultMap;
import com.roya.common.ResultMap.STATUS;
import com.roya.dto.ScheduleDTO;
import com.roya.dto.UserMeetingDTO;
import com.roya.service.IScheduleService;
import com.roya.util.DTOdateSet;



/**
 * 日程Controller
 * @author lisu
 *
 */
@Controller("scheduleController")
@RequestMapping("/schedule")
public class ScheduleController{
	
	Logger logger = Logger.getLogger(getClass());
	
	@Autowired
	IScheduleService scheduleServiceImpl;
	@RequestMapping(value="/list.shtml")
	@ResponseBody
	public ResultMap list(HttpServletRequest request){
		
		logger.info("In scheduleList  Begin!");
		ResultMap result = new ResultMap();
		try{
			HttpServletRequest httpRequest = (HttpServletRequest)request;
			HttpSession session = httpRequest.getSession();
			UserMeetingDTO user  = (UserMeetingDTO) session.getAttribute(DTOdateSet.user);
			if(user == null){
				result.setStatus(STATUS.NEED_LOGIN);
				result.setStatusCode(ResultMap.STATUS_CODE_ONLOGIN);
				result.setMessage("请登录！");
				return result;
			}
			ScheduleDTO dto = new ScheduleDTO();
			dto.setUid(user.getUid());
			List<ScheduleDTO> list = scheduleServiceImpl.queryScheduleList(dto);
			result.setAttribute("list", list);
			result.setStatus(STATUS.SUCCESS);
			result.setStatusCode(ResultMap.STATUS_CODE_SUCCESS);
			result.setMessage("获取日程管理列表成功");
			logger.info("In scheduleList  end!");
		}catch(Exception e){
			logger.error("scheduleList  error",e);
			result.setStatus(STATUS.FAILE);
			result.setStatusCode(ResultMap.STATUS_CODE_SYS_EXCEPTION);
			result.setMessage("获取日程管理列表失败");
		}
		return result;
	}
	
}
