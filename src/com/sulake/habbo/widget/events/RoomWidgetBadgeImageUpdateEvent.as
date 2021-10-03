package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_577:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2153:BitmapData;
      
      private var var_2103:String;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_577,param3,param4);
         var_2103 = param1;
         var_2153 = param2;
      }
      
      public function get badgeImage() : BitmapData
      {
         return var_2153;
      }
      
      public function get badgeID() : String
      {
         return var_2103;
      }
   }
}
