package com.booqueen.admin.banner.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.admin.banner.BannerService;
import com.booqueen.admin.banner.BannerVO;

@Service("BannerService")
public class BannerServiceImpl implements BannerService {
	
	@Autowired
	private BannerDAO bannerDAO;

	@Override
	public void uploadBanner(BannerVO banner) {
		bannerDAO.uploadBanner(banner);
	}
	
	@Override
	public List<BannerVO> getBannerList() {
		return bannerDAO.getBannerList();
	}

}
