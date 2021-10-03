package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_216:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1810:Boolean = false;
      
      private var var_1811:int = 0;
      
      private var var_1809:int = 0;
      
      private var var_1755:int;
      
      private var var_1808:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_216,param6,param7);
         var_1808 = param1;
         var_1809 = param2;
         var_1811 = param3;
         var_1810 = param4;
         var_1755 = param5;
      }
      
      public function get clubLevel() : int
      {
         return var_1755;
      }
      
      public function get pastPeriods() : int
      {
         return var_1811;
      }
      
      public function get periodsLeft() : int
      {
         return var_1809;
      }
      
      public function get daysLeft() : int
      {
         return var_1808;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1810;
      }
   }
}
