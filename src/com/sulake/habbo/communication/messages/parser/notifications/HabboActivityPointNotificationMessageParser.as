package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboActivityPointNotificationMessageParser implements IMessageParser
   {
       
      
      private var var_2235:int = 0;
      
      private var var_2234:int = 0;
      
      public function HabboActivityPointNotificationMessageParser()
      {
         super();
      }
      
      public function get change() : int
      {
         return var_2234;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_2235 = param1.readInteger();
         var_2234 = param1.readInteger();
         return true;
      }
      
      public function get amount() : int
      {
         return var_2235;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
   }
}
