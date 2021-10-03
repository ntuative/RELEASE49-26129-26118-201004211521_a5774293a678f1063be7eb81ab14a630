package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AcceptBuddyFailureData
   {
       
      
      private var var_1147:int;
      
      private var var_650:String;
      
      public function AcceptBuddyFailureData(param1:IMessageDataWrapper)
      {
         super();
         this.var_650 = param1.readString();
         this.var_1147 = param1.readInteger();
      }
      
      public function get senderName() : String
      {
         return this.var_650;
      }
      
      public function get errorCode() : int
      {
         return this.var_1147;
      }
   }
}
