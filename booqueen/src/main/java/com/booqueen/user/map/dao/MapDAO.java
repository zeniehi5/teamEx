package com.booqueen.user.map.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.booqueen.user.map.vo.DistanceVO;

@Repository
public class MapDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<DistanceVO> selectAttraction(String city) throws DataAccessException{
		return sqlSession.selectList("com.booqueen.user.map.dao.mapmapper.selectAttraction", city);
	}
}
