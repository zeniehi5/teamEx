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
   RoomFacilitiesVO roomFacilitiesVO;
}