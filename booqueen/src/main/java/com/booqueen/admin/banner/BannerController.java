package com.booqueen.admin.banner;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BannerController {
	
	@RequestMapping(value = "/bannerCorrection.mdo", method=RequestMethod.GET)
	public String bannerCorrection(HttpSession session) {
		return "bannerCorrection";
	}
}
