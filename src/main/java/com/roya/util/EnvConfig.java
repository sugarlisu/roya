package com.roya.util;

import javax.annotation.PostConstruct;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * 用于读取系统环境变量信息
 * @author hetaihe
 *
 */

@Component("envConfig")
public class EnvConfig {
	
	@Autowired 
	private ServletContext context;
	
	@PostConstruct
	public void addToApplicationContext(){
		context.setAttribute("envConfig", this);
	}
}
