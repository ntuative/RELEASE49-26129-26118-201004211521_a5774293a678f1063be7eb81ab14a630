package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1915:int;
      
      private var var_1916:String;
      
      private var var_993:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_993 = param1.readInteger();
         this.var_1916 = param1.readString();
         this.var_1915 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_993;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_1915;
      }
      
      public function get requesterName() : String
      {
         return this.var_1916;
      }
   }
}
