package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_515:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1788:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_515);
         var_1788 = param1;
      }
      
      public function get tag() : String
      {
         return var_1788;
      }
   }
}
