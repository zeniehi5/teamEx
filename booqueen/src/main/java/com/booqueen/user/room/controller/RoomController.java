package com.booqueen.user.room.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booqueen.user.room.service.RoomService;
import com.booqueen.user.room.vo.RoomVO;

@Controller
public class RoomController {

	@Autowired
	RoomService roomService;
	
	@PostMapping(value="/selectRoomImgs.do")
	@ResponseBody
	public List<RoomVO> selectRoomImgs(@RequestParam("type") String type){
		List<RoomVO> roomImgList = roomService.selectRoomImgs(type);
		return roomImgList;
	}
}
