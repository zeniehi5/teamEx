package com.booqueen.user.map.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booqueen.user.map.service.MapService;
import com.booqueen.user.map.vo.DistanceVO;

@Controller
public class MapController {

	@Autowired
	MapService mapService;
	
	@PostMapping(value="/getAttractions.do")
	@ResponseBody
	public List<DistanceVO> getAttractions(@RequestParam("city") String city){
		List<DistanceVO> distanceVO = mapService.selectAttraction(city);
		return distanceVO;
	}
}
