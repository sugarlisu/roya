package com.roya.web.api;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roya.common.ResultMap;
import com.roya.common.ResultMap.STATUS;
import com.roya.dto.DocumentDTO;
import com.roya.dto.UserMeetingDTO;
import com.roya.service.IDocumentService;
import com.roya.util.DTOdateSet;



/**
 * 文件 Controller
 * @author lisu
 *
 */
@Controller("documentController")
@RequestMapping("/document")
public class DocumentController{
	
	Logger logger = Logger.getLogger(getClass());
	
	@Autowired
	IDocumentService documentServiceImpl;
	
	@Value("#{settings['fileWebPath']}")
	private String fileWebPath;
	
	
	@RequestMapping(value="/list.shtml")
	@ResponseBody
	public ResultMap list(HttpServletRequest request){
		
		logger.info("In addressList list Begin!");
		ResultMap result = new ResultMap();
		try{
			HttpServletRequest httpRequest = (HttpServletRequest)request;
			HttpSession session = httpRequest.getSession();
			UserMeetingDTO user  = (UserMeetingDTO) session.getAttribute(DTOdateSet.user);
			if(user == null){
				result.setStatus(STATUS.FAILE);
				result.setStatusCode(ResultMap.STATUS_CODE_ONLOGIN);
				result.setMessage("请登录！");
				return result;
			}
			DocumentDTO dto = new DocumentDTO();
			dto.setUid(user.getUid());
			List<DocumentDTO> list = documentServiceImpl.queryDocumentList(dto);
			for (DocumentDTO viewDto:list) {
				viewDto.setWeburl(fileWebPath+"?path="+viewDto.getWeburl());
				
			}
			result.setAttribute("list", list);
			result.setStatus(STATUS.SUCCESS);
			result.setStatusCode(ResultMap.STATUS_CODE_SUCCESS);
			logger.info("In addressList list end!");
		}catch(Exception e){
			logger.error("addressList list error",e);
			result.setStatus(STATUS.FAILE);
			result.setStatusCode(ResultMap.STATUS_CODE_SYS_EXCEPTION);
		}
		return result;
	}
	
}
