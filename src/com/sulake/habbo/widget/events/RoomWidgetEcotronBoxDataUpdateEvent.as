package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetEcotronBoxDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_81:String = "RWEBDUE_CONTENTS";
      
      public static const const_69:String = "RWEBDUE_PACKAGEINFO";
       
      
      private var var_206:String;
      
      private var var_1794:BitmapData;
      
      private var var_159:int = -1;
      
      private var var_47:Boolean;
      
      public function RoomWidgetEcotronBoxDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_159 = param2;
         var_206 = param3;
         var_47 = param4;
         var_1794 = param5;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return var_1794;
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
