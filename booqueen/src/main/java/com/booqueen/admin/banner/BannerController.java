package com.booqueen.admin.banner;

import java.io.File;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
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
	public String bannerCorrection(HttpSession session, Model model, @RequestParam("seq_city") String seq_city) {
		
		int seq_city_int = Integer.parseInt(seq_city);
		BannerVO bannerVO = bannerServiceImpl.selectBannerBySeq(seq_city_int);
		
		model.addAttribute("bannerVO", bannerVO);
		
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
	public String bannerRegister(@RequestParam("uploadFile") MultipartFile[] uploadFile, @RequestParam("city")String city, HttpSession session, Model model, HttpServletResponse response) throws Exception {
	
		String uploadFolder = "C:\\upload";
	    File uploadPath = new File(uploadFolder);
	    int count = 0;
	      
	    if (uploadPath.exists() == false) {
	    	uploadPath.mkdir();
	    }
	      
//	    int length = uploadFile.length;
	    
	    response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
	    
	    for (MultipartFile multipartFile : uploadFile) {
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
	    	    	
	    	    	if (banner != null) {
	    	    		// 새로 등록하는 도시의 seq를 모르기 때문에 도시로 DB 검색
	    	    		BannerVO selectBanner = bannerServiceImpl.selectBannerByCity(city);
	    	    		// 도시 select 했는데 값이 있을 경우
	    	    		if (selectBanner != null) {
	    	    			if (selectBanner.getCity() == banner.getCity() || selectBanner.getCity().equals(banner.getCity()) || selectBanner.getSeq_city() == banner.getSeq_city()) {
		    	    			banner.setSeq_city(selectBanner.getSeq_city());
		    	    			bannerServiceImpl.updateBanner(banner);
		    	    			out.println("<script>alert('배너가 성공적으로 변경되었습니다.')</script>");
	    	    			}
    	    			// 도시 검색했는데 값이 없을 경우
	    	    		} else {
	    	    			if (banner.getCity() == null || banner.getCity().isEmpty()) {
	    	    				out.println("<script>alert('배너 이름을 입력해 주세요.');");
	    	    				out.println("history.back();</script>");
    	    				// 배너 이름만 입력안했을 때
	    	    			} else {
	    	    				bannerServiceImpl.uploadBanner(banner);
		    	    			out.println("<script>alert('신규 배너가 성공적으로 등록되었습니다.')</script>");
	    	    			}
	    	    		}
	    	    		out.flush();
	    	    	}
	    	    }
	        } catch (Exception e) {
	        	e.printStackTrace();
	        }
	    }
	    
	    List<BannerVO> bannerList = bannerServiceImpl.getBannerList();
		model.addAttribute("bannerList", bannerList);
	    
	    return "banner";
	}

	@RequestMapping(value = "/deleteBanner.mdo", method=RequestMethod.GET)
	public String deleteBanner(HttpSession session, HttpServletResponse response, Model model, @RequestParam("seq_city") String seq_city) throws Exception {
		
		int seq_city_int = Integer.parseInt(seq_city);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter(); 
		
		int result = bannerServiceImpl.deleteBanner(seq_city_int);
		if (result > 0) {
			out.println("<script>alert('배너가 성공적으로 삭제되었습니다.');</script>");
			out.flush();
		}
		
		List<BannerVO> bannerList = bannerServiceImpl.getBannerList();
		model.addAttribute("bannerList", bannerList);
		
		return "banner";
	}

	
	
}
