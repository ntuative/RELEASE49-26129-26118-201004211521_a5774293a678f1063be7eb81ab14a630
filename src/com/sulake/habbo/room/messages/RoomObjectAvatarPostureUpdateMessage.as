package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1772:String;
      
      private var var_789:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_1772 = param1;
         var_789 = param2;
      }
      
      public function get postureType() : String
      {
         return var_1772;
      }
      
      public function get parameter() : String
      {
         return var_789;
      }
   }
}
