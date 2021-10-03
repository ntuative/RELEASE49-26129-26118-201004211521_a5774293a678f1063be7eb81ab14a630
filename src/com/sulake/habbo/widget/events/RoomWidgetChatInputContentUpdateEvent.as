package com.sulake.habbo.widget.events
{
   public class RoomWidgetChatInputContentUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_966:String = "whisper";
      
      public static const const_1316:String = "shout";
      
      public static const const_712:String = "RWWCIDE_CHAT_INPUT_CONTENT";
       
      
      private var var_1848:String = "";
      
      private var _userName:String = "";
      
      public function RoomWidgetChatInputContentUpdateEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_712,param3,param4);
         var_1848 = param1;
         _userName = param2;
      }
      
      public function get messageType() : String
      {
         return var_1848;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
