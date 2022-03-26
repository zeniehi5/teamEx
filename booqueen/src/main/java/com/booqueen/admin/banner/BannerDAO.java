package com.booqueen.admin.banner;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	
}
