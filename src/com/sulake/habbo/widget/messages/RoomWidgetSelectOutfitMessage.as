package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_865:String = "select_outfit";
       
      
      private var var_2095:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_865);
         var_2095 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2095;
      }
   }
}
