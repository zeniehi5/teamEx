package com.booqueen.admin.banner;

import java.io.File;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.booqueen.admin.banner.impl.BannerServiceImpl;
import com.booqueen.partner.common.S3Service;

@Controller
public class BannerController {

	@Autowired
	private S3Service s3service;
	
	@Autowired
	private BannerServiceImpl bannerServiceImpl;
	
	@RequestMapping(value = "/bannerCorrection.mdo", method=RequestMethod.GET)
	public String bannerCorrection(HttpSession session) {
		return "bannerCorrection";
	}
	@RequestMapping(value = "/banner.mdo", method=RequestMethod.GET)
	public String banner(HttpSession session, Model model) {
		
		List<BannerVO> bannerList = bannerServiceImpl.getBannerList();
		model.addAttribute("bannerList", bannerList);
		
		return "banner";
	}
	@RequestMapping(value = "/bannerUpload.mdo", method=RequestMethod.GET)
	public String bannerUpload(HttpSession session) {
		return "bannerUpload";
	}
	@RequestMapping(value = "/bannerRegister.mdo", method=RequestMethod.POST)
	public String bannerRegister(@RequestParam("uploadFile") MultipartFile[] uploadFile, @RequestParam("city")String city, HttpSession session) {
	
		String uploadFolder = "C:\\upload";
	    File uploadPath = new File(uploadFolder);
	    int count = 0;
	      
	    if(uploadPath.exists() == false) {
	    	uploadPath.mkdir();
	    }
	      
	    int length = uploadFile.length;
	    
	    for(MultipartFile multipartFile : uploadFile) {
	    	String uploadFileName = multipartFile.getOriginalFilename();
	        uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
	        try {
	        	File saveFile = new File(uploadPath, uploadFileName);
	            multipartFile.transferTo(saveFile);
	            count++;
	            
	            if(count != 0) {
	    	    	try {
	    	    		InputStream is = multipartFile.getInputStream();
	    	    		String contentType = multipartFile.getContentType();
	    	    		long contentLength = multipartFile.getSize();
	    	    		s3service.upload(is, "banner/" + uploadFileName, contentType, contentLength);
	    	    		System.out.println("https://booqueen.s3.ap-northeast-2.amazonaws.com/banner/" + uploadFileName);
	    	    		
	    	    	} catch(Exception e) {
	    	    		e.printStackTrace();
	    	    	}
	    	    	BannerVO banner = new BannerVO();
	    	    	banner.setCity(city);
	    	    	banner.setFile_url("https://booqueen.s3.ap-northeast-2.amazonaws.com/banner/"+ uploadFileName);
	    	    	
	    	    	if(banner != null) {
	    	    		bannerServiceImpl.uploadBanner(banner);
	    	    	}
	    	    }
	        } catch (Exception e) {
	        	e.printStackTrace();
	        }
	    }  
	    return "banner";
	}
	 
}
