package com.booqueen.admin.banner.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booqueen.admin.banner.BannerVO;

@Repository("bannerDAO")
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
	
}
