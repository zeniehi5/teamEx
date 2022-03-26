package com.booqueen.partner.message;

import java.util.List;

import com.booqueen.user.chat.vo.ChatVO;

public interface MessageService {

	List<ChatVO> selectMessageListByHotelSerial(int serialnumber);

}
