package com.booqueen.admin.banner.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booqueen.admin.banner.BannerVO;

@Repository("BannerDAO")
public class BannerDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	public void uploadBanner(BannerVO banner) {
		sqlSessionTemplate.insert("BannerDAO.uploadBanner", banner);
	}
	
	public List<BannerVO> getBannerList() {
		List<BannerVO> bannerList = sqlSessionTemplate.selectList("BannerDAO.getBannerList");
		return bannerList;
	}
	
	public BannerVO selectBannerBySeq(int seq) {
		return sqlSessionTemplate.selectOne("BannerDAO.selectBannerBySeq", seq);
	}
	
	public BannerVO selectBannerByCity(String city) {
		return sqlSessionTemplate.selectOne("BannerDAO.selectBannerByCity", city);
	}
	
	public int updateBanner(BannerVO banner) {
		return sqlSessionTemplate.update("BannerDAO.updateBanner", banner);
	}
	
	public int deleteBanner(int seq) {
		return sqlSessionTemplate.delete("BannerDAO.deleteBanner", seq);
	}
	
}
