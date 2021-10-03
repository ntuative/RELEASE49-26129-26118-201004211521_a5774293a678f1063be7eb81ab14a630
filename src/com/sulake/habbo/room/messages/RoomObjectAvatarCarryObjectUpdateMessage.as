package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1084:int;
      
      private var var_1342:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_1084 = param1;
         var_1342 = param2;
      }
      
      public function get itemType() : int
      {
         return var_1084;
      }
      
      public function get itemName() : String
      {
         return var_1342;
      }
   }
}
