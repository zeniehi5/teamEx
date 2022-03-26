package com.booqueen.admin.banner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("BannerService")
public class BannerServiceImpl implements BannerService {
	
	@Autowired
	private BannerDAO bannerDAO;

	@Override
	public void uploadBanner(BannerVO banner) {
		bannerDAO.uploadBanner(banner);
	}

}
