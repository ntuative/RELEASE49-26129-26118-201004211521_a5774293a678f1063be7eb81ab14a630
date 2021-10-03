package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_272:String = "RWFAM_MOVE";
      
      public static const const_637:String = "RWFUAM_ROTATE";
      
      public static const const_693:String = "RWFAM_PICKUP";
       
      
      private var var_1730:int = 0;
      
      private var var_2246:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1730 = param2;
         var_2246 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1730;
      }
      
      public function get furniCategory() : int
      {
         return var_2246;
      }
   }
}
