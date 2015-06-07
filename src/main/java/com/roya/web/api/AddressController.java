package com.roya.web.api;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roya.common.ResultMap;
import com.roya.common.ResultMap.STATUS;
import com.roya.dto.AddressListDTO;
import com.roya.service.IAddressListService;



/**
 * 通讯录Controller
 * @author lisu
 *
 */
@Controller("addressController")
@RequestMapping("/addressList")
public class AddressController{
	
	Logger logger = Logger.getLogger(getClass());
	
	@Autowired
	IAddressListService addressListServiceImpl;
	@RequestMapping(value="/list.shtml")
	@ResponseBody
	public ResultMap list(HttpServletRequest request){
		
		logger.info("In addressList list Begin!");
		ResultMap result = new ResultMap();
		try{
			List<AddressListDTO> list = addressListServiceImpl.queryAddressList();
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
