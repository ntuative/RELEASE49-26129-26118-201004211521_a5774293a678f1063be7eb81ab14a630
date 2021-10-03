package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_121:int = 0;
      
      public static const const_126:int = 1;
      
      public static const const_103:int = 2;
      
      public static const const_709:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1125:int = 0;
      
      private var var_1751:String = "";
      
      private var var_206:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_206 = param2;
         var_1125 = param3;
         var_1751 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1751;
      }
      
      public function get chatType() : int
      {
         return var_1125;
      }
      
      public function get text() : String
      {
         return var_206;
      }
   }
}
