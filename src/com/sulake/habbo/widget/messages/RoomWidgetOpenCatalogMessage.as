package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_896:String = "RWOCM_CLUB_MAIN";
      
      public static const const_555:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_1869:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_555);
         var_1869 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_1869;
      }
   }
}
