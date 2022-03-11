package com.booqueen.user.room.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.booqueen.user.room.service.RoomService;

@Controller
public class RoomController {

	@Autowired
	RoomService roomService;
	
}
