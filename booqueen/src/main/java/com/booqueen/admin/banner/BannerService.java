package com.booqueen.admin.banner;

import java.util.List;

public interface BannerService {

	public void uploadBanner(BannerVO banner);
	public List<BannerVO> getBannerList();
	public BannerVO selectBannerBySeq(int seq);
	public BannerVO selectBannerByCity(String city);
	public int updateBanner(BannerVO banner);
	public int deleteBanner(int seq);
}
