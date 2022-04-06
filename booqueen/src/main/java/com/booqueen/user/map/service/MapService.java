package com.booqueen.user.map.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.user.map.dao.MapDAO;
import com.booqueen.user.map.vo.DistanceVO;

@Service
public class MapService {

	@Autowired
	MapDAO mapDAO;
	
	public List<DistanceVO> selectAttraction(String city){
		return mapDAO.selectAttraction(city);
	}
	
}
