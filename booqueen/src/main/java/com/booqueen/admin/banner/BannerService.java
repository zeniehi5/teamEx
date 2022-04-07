package com.booqueen.admin.banner;

import java.util.List;

public interface BannerService {

	public void uploadBanner(BannerVO banner);
	public List<BannerVO> getBannerList();
}
