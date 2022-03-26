package com.booqueen.admin.banner;

import java.io.File;
import java.io.InputStream;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.booqueen.partner.common.S3Service;

@Controller
public class BannerController {

	@Autowired
	private S3Service s3service;
	
	@Autowired
	private BannerService bannerService;
	
	@RequestMapping(value = "/bannerCorrection.mdo", method=RequestMethod.GET)
	public String bannerCorrection(HttpSession session) {
		return "bannerCorrection";
	}
	@RequestMapping(value = "/banner.mdo", method=RequestMethod.GET)
	public String banner(HttpSession session) {
		return "banner";
	}
	@RequestMapping(value = "/bannerUpload.mdo", method=RequestMethod.GET)
	public String bannerUpload(HttpSession session) {
		return "bannerUpload";
	}
	@RequestMapping(value = "/bannerRegister.mdo", method=RequestMethod.POST)
	public String bannerRegister(@RequestParam("uploadFile") MultipartFile[] uploadFile, @RequestParam("file_name")String file_name, HttpSession session) {
	
		String uploadFolder = "C:\\upload";
	    File uploadPath = new File(uploadFolder);
	    int count = 0;
	      
	    if(uploadPath.exists() == false) {
	    	uploadPath.mkdir();
	    }
	      
	    int length = uploadFile.length;
	    System.out.println("길이: " + length);
	    for(MultipartFile multipartFile : uploadFile) {
	    	String uploadFileName = multipartFile.getOriginalFilename();
	        uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
	        try {
	        	File saveFile = new File(uploadPath, uploadFileName);
	            multipartFile.transferTo(saveFile);
	            count++;
	            System.out.println(count);
	            if(count != 0) {
	    	    	try {
	    	    		InputStream is = multipartFile.getInputStream();
	    	    		String contentType = multipartFile.getContentType();
	    	    		long contentLength = multipartFile.getSize();
	    	    		s3service.upload(is, "banner/" + uploadFileName, contentType, contentLength);
	    	    		System.out.println(count + ": 성공");
	    	    		System.out.println("https://booqueen.s3.ap-northeast-2.amazonaws.com/banner/" + uploadFileName);
	    	    		
	    	    	} catch(Exception e) {
	    	    		e.printStackTrace();
	    	    	}
	    	    	BannerVO banner = new BannerVO();
	    	    	banner.setFile_name(file_name);
	    	    	banner.setFile_url("https://booqueen.s3.ap-northeast-2.amazonaws.com/banner/"+ uploadFileName);
	    	    	
	    	    	if(banner != null) {
	    	    		bannerService.uploadBanner(banner);
	    	    		
	    	    	}
	    	    }
	        } catch (Exception e) {
	        	e.printStackTrace();
	        }
	    }  
	    return "banner";
	}
	 
}
