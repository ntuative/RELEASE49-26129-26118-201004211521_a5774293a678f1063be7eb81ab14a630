package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1479:String;
      
      private var var_2026:int;
      
      private var var_2027:int;
      
      private var var_2029:int;
      
      private var var_2028:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_2026 = param1.readInteger();
         var_2029 = param1.readInteger();
         var_2027 = param1.readInteger();
         var_2028 = param1.readString();
         var_1479 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1479;
      }
      
      public function get hour() : int
      {
         return var_2026;
      }
      
      public function get minute() : int
      {
         return var_2029;
      }
      
      public function get chatterName() : String
      {
         return var_2028;
      }
      
      public function get chatterId() : int
      {
         return var_2027;
      }
   }
}
