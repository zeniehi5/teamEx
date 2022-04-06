package com.booqueen.user.room.vo;

import lombok.Data;

@Data
public class RoomVO {
   private Integer sequence;
   private Integer room_id;
   private Integer serialnumber;
   private String type;
   private Integer price;
   private Integer smoking;
   private Integer available;
   private Integer count_room;
   private Integer quota;
   private Integer bed;
   private String file_url;
   RoomAvailableVO roomAvailableVO;
   RoomFacilitiesVO roomFacilitiesVO;
}