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
import com.roya.dto.ProjectInfoDTO;
import com.roya.service.IProjectInfoService;
import com.roya.util.DTOdateSet;

@Controller("projectInfoAction")
@RequestMapping("/api")
public class ProjectInfoAction extends BaseAction {

	@Autowired
	IProjectInfoService projectInfoService;

	@RequestMapping("projectInfoAdd.shtml")
	@ResponseBody
	public ResultMap projectInfoAdd(HttpServletRequest request, HttpServletResponse response, ProjectInfoDTO pm) {

			log.info("in item projectInfoAdd begin!!!");
		try {
			DTOdateSet.setUpdateInfo(pm, request.getSession());
			DTOdateSet.setCreateInfo(pm, request.getSession());
			int id = projectInfoService.addInformation(pm);
			resultMap.setAttribute("id", id);
			resultMap.setStatus(STATUS.SUCCESS);
			resultMap.setStatusCode(ResultMap.STATUS_CODE_SUCCESS);
			log.info("in item projectInfoAdd end!!!");
		} catch (SQLException e) {
			log.error("projectInfoAdd Action error", e);
			resultMap.setStatus(STATUS.FAILE);
			resultMap.setStatusCode(ResultMap.STATUS_CODE_SYS_EXCEPTION);
		}
		return resultMap;
	}
	@RequestMapping("projectInfoList.shtml")
	@ResponseBody
	public ResultMap projectInfoList(HttpServletRequest request, HttpServletResponse response, ProjectInfoDTO pm) {

			log.info("in item projectInfoList begin!!!");
		try {
			List<ProjectInfoDTO> list = projectInfoService.queryInformationList(pm);
			resultMap.setAttribute("list", list);
			resultMap.setStatus(STATUS.SUCCESS);
			resultMap.setStatusCode(ResultMap.STATUS_CODE_SUCCESS);
			log.info("in item projectInfoList end!!!");
		} catch (SQLException e) {
			log.error("projectInfoList Action error", e);
			resultMap.setStatus(STATUS.FAILE);
			resultMap.setStatusCode(ResultMap.STATUS_CODE_SYS_EXCEPTION);
		}
		return resultMap;
	}
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@RequestMapping("projectInfoUpdate.shtml")
	@ResponseBody
	public ResultMap projectInfoUpdate(HttpServletRequest request, HttpServletResponse response, ProjectInfoDTO pm) {

			log.info("in item projectInfoUpdate begin!!!");
		try {
			DTOdateSet.setUpdateInfo(pm, request.getSession());
			Map map =  getParameterMap(request);
			map.put("updateBy", pm.getUpdateBy());
			map.put("updateDate", pm.getUpdateDate());
			projectInfoService.updateInformation(map);
			resultMap.setStatus(STATUS.SUCCESS);
			resultMap.setStatusCode(ResultMap.STATUS_CODE_SUCCESS);
			log.info("in item projectInfoUpdate end!!!");
		} catch (SQLException e) {
			log.error("projectInfoUpdate Action error", e);
			resultMap.setStatus(STATUS.FAILE);
			resultMap.setStatusCode(ResultMap.STATUS_CODE_SYS_EXCEPTION);
		}
		return resultMap;
	}
	@RequestMapping("projectInfoDesc.shtml")
	@ResponseBody
	public ResultMap projectInfoDesc(HttpServletRequest request, HttpServletResponse response, ProjectInfoDTO pm) {

			log.info("in item projectInfoDesc begin!!!");
		try {
			ProjectInfoDTO dto = projectInfoService.queryInformation(pm);
			resultMap.setAttribute("dto", dto);
			resultMap.setStatus(STATUS.SUCCESS);
			resultMap.setStatusCode(ResultMap.STATUS_CODE_SUCCESS);
			log.info("in item projectInfoDesc end!!!");
		} catch (SQLException e) {
			log.error("projectInfoDesc Action error", e);
			resultMap.setStatus(STATUS.FAILE);
			resultMap.setStatusCode(ResultMap.STATUS_CODE_SYS_EXCEPTION);
		}
		return resultMap;
	}
	@RequestMapping("projectInfoDel.shtml")
	@ResponseBody
	public ResultMap projectInfoDel(HttpServletRequest request, HttpServletResponse response, ProjectInfoDTO pm) {

			log.info("in item projectInfoDel begin!!!");
		try {
			projectInfoService.delInformation(pm);
			resultMap.setStatus(STATUS.SUCCESS);
			resultMap.setStatusCode(ResultMap.STATUS_CODE_SUCCESS);
			log.info("in item projectInfoDel end!!!");
		} catch (SQLException e) {
			log.error("projectInfoDel Action error", e);
			resultMap.setStatus(STATUS.FAILE);
			resultMap.setStatusCode(ResultMap.STATUS_CODE_SYS_EXCEPTION);
		}
		return resultMap;
	}
	@RequestMapping("projectInfoHome.shtml")
	@ResponseBody
	public ResultMap projectInfoHome(HttpServletRequest request, HttpServletResponse response) {

			log.info("in item projectInfoDel begin!!!");
		try {
			List<ProjectInfoDTO> list = projectInfoService.queryInformationHome();
			resultMap.setAttribute("list", list);
			resultMap.setStatus(STATUS.SUCCESS);
			resultMap.setStatusCode(ResultMap.STATUS_CODE_SUCCESS);
			log.info("in item projectInfoDel end!!!");
		} catch (SQLException e) {
			log.error("projectInfoDel Action error", e);
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
