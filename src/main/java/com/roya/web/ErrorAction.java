package com.roya.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller 
public class ErrorAction extends BaseAction {
	
	@RequestMapping("/error.shtml")
	public ModelAndView addActionPer(HttpServletRequest request,
			HttpServletResponse response) {
			return new ModelAndView("error");
	}
}
