package com.roya.web;

//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.servlet.ModelAndView;

//import com.financing.platform.dto.ActionDTO;
//import com.financing.platform.service.IActionService;
//import com.financing.platform.util.DTOdateSet;
//import com.financing.platform.util.Dict;

@Controller
public class ActionAction extends BaseAction {

	// @Autowired
	// IActionService actionServiceImpl;
	//
	// @RequestMapping("/addActionPer.shtml")
	// public ModelAndView addActionPer(HttpServletRequest request,
	// HttpServletResponse response) {
	// request.getSession().setAttribute(Dict.requestID, "addActionPer.shtml");
	// return new ModelAndView("addAction");
	// }
	//
	// @RequestMapping("/addAction.shtml")
	// public ModelAndView addAction(HttpServletRequest request,
	// HttpServletResponse response,ActionDTO actionDTO) {
	// DTOdateSet.setCreateInfo(actionDTO, request.getSession());
	// DTOdateSet.setUpdateInfo(actionDTO, request.getSession());
	// actionServiceImpl.addAction(actionDTO);
	//
	// return new ModelAndView("addAction");
	// }
}
