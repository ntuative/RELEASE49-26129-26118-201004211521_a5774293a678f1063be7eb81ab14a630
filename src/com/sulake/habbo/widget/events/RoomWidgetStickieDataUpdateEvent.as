package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_538:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_206:String;
      
      private var var_665:String;
      
      private var var_1443:String;
      
      private var var_159:int = -1;
      
      private var var_47:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_159 = param2;
         var_1443 = param3;
         var_206 = param4;
         var_665 = param5;
         var_47 = param6;
      }
      
      public function get objectType() : String
      {
         return var_1443;
      }
      
      public function get colorHex() : String
      {
         return var_665;
      }
      
      public function get text() : String
      {
         return var_206;
      }
      
      public function get objectId() : int
      {
         return var_159;
      }
      
      public function get controller() : Boolean
      {
         return var_47;
      }
   }
}
