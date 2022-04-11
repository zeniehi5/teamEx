package com.booqueen.error;

import org.mybatis.logging.Logger;
import org.mybatis.logging.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ErrorController {
	
	private static Logger LOGGER = LoggerFactory.getLogger(ErrorController.class);
	
	@RequestMapping(value = "/error404")
	public String Error404() {
		return "error/error404";
	}
	
	@RequestMapping(value = "/error500")
	public String Error500() {
		return "error/error500";
	}
	
}
