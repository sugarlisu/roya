package com.roya.web.api;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roya.common.ResultMap;
import com.roya.common.ResultMap.STATUS;
import com.roya.dto.InterfaceInfoDTO;
import com.roya.service.IInterfaceInfoService;
import com.roya.util.DTOdateSet;

@Controller("interfaceInfoAction")
@RequestMapping(value="/api")
public class InterfaceInfoAction extends BaseAction{
	@Autowired
	private IInterfaceInfoService interfaceInfoService;
	
	@ResponseBody
	@RequestMapping("interfaceInfoAdd.shtml")
	public ResultMap interfaceInfoAdd(HttpServletRequest request,HttpServletResponse response,InterfaceInfoDTO dto){
		log.info("in item interfaceInfoAdd begin");
		try {
		DTOdateSet.setCreateInfo(dto, request.getSession());
		DTOdateSet.setUpdateInfo(dto, request.getSession());
			int id=interfaceInfoService.addInfomation(dto);
			resultMap.setAttribute("id",id);
			resultMap.setStatus(STATUS.SUCCESS);
			resultMap.setStatusCode(ResultMap.STATUS_CODE_SUCCESS);
			log.error("in item interfaceInfoAdd end");
		} catch (SQLException e) {
		log.error("interfaceInfoAdd action is exception",e);
		resultMap.setStatus(STATUS.FAILE);
		resultMap.setStatusCode(ResultMap.STATUS_CODE_SYS_EXCEPTION);
		}
		return resultMap;
	}
	
	@ResponseBody
	@RequestMapping("interfaceInfoList.shtml")
	public ResultMap interfaceInfoList(HttpServletRequest request,HttpServletResponse response,InterfaceInfoDTO dto){
		log.info("in item interfaceInfoList begin");
		List<InterfaceInfoDTO> interfaceList;
		try {
			interfaceList = interfaceInfoService.queryInfomation(dto);
			resultMap.setAttribute("interfaceList",interfaceList);
			resultMap.setStatus(STATUS.SUCCESS);
			resultMap.setStatusCode(ResultMap.STATUS_CODE_SUCCESS);
			log.info("in item interfaceInfoList end");
		} catch (SQLException e) {
			log.error("interfaceInfoList action is exception",e);
			resultMap.setStatus(STATUS.FAILE);
			resultMap.setStatusCode(ResultMap.STATUS_CODE_SYS_EXCEPTION);
		}
		
		return resultMap;
	}
	
	@ResponseBody
	@RequestMapping("interfaceInfoDel.shtml")
	public ResultMap interfaceInfoDel(HttpServletRequest request,HttpServletResponse response,InterfaceInfoDTO dto){
		log.info("in item interfaceInfoDel begin");
		try {
			interfaceInfoService.delInfomation(dto);
			resultMap.setStatus(STATUS.SUCCESS);
			resultMap.setStatusCode(ResultMap.STATUS_CODE_SUCCESS);
			log.info("in item interfaceInfoDel end");
		} catch (SQLException e) {
			log.error("interfaceInfoDel action is exception", e);
			resultMap.setStatus(STATUS.FAILE);
			resultMap.setStatusCode(ResultMap.STATUS_CODE_SYS_EXCEPTION);
		}
		return resultMap;
	}
	
	@SuppressWarnings({"unchecked","rawtypes"})
	@ResponseBody
	@RequestMapping("interfaceInfoUpdate.shtml")
	public ResultMap interfaceInfoUpdate(HttpServletRequest request,HttpServletResponse response,InterfaceInfoDTO dto){
		log.info("in item interfaceInfoUpdate begin");
		try {
		DTOdateSet.setUpdateInfo(dto, request.getSession());
		Map map = getParameterMap(request);
		map.put("updateBy",dto.getUpdateBy());
		map.put("updateDate", dto.getUpdateDate());
		interfaceInfoService.updateInfomation(map);
		resultMap.setStatus(STATUS.SUCCESS);
		resultMap.setStatusCode(ResultMap.STATUS_CODE_SUCCESS);
		log.info("in item interfaceInfoUpdate end!!!");
		} catch (SQLException e) {
			log.error("interfaceInfoUpdate action is exception", e);
			resultMap.setStatus(STATUS.FAILE);
			resultMap.setStatusCode(ResultMap.STATUS_CODE_SYS_EXCEPTION);
		}
		
		return resultMap;
	}
	
	/**
	 * 从request中获得参数Map，并返回可读的Map
	 * 
	 * @param request
	 * @return
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public  Map getParameterMap(HttpServletRequest request) {
	    // 参数Map
	    Map properties = request.getParameterMap();
	    // 返回值Map
	    Map returnMap = new HashMap();
	    Iterator entries = properties.entrySet().iterator();
	    Map.Entry entry;
	    String name = "";
	    String value = "";
	    while (entries.hasNext()) {
	        entry = (Map.Entry) entries.next();
	        name = (String) entry.getKey();
	        Object valueObj = entry.getValue();
	        if(null == valueObj){
	            value = "";
	        }else if(valueObj instanceof String[]){
	            String[] values = (String[])valueObj;
	            for(int i=0;i<values.length;i++){
	                value = values[i] + ",";
	            }
	            value = value.substring(0, value.length()-1);
	        }else{
	            value = valueObj.toString();
	        }
	        returnMap.put(name, value);
	    }
	    return returnMap;
	}
	
}
