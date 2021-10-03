package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1551:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1512:String = "ROE_MOUSE_ENTER";
      
      public static const const_400:String = "ROE_MOUSE_MOVE";
      
      public static const const_1540:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_230:String = "ROE_MOUSE_CLICK";
      
      public static const ROOM_OBJECT_MOUSE_DOWN:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1639:Boolean;
      
      private var var_1637:Boolean;
      
      private var var_1640:Boolean;
      
      private var var_1632:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1640 = param4;
         var_1632 = param5;
         var_1639 = param6;
         var_1637 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1637;
      }
      
      public function get altKey() : Boolean
      {
         return var_1640;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1632;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1639;
      }
   }
}
