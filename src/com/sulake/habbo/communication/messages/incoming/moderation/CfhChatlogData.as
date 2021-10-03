package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1668:int;
      
      private var var_996:int;
      
      private var var_2260:int;
      
      private var var_1600:int;
      
      private var var_114:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1600 = param1.readInteger();
         var_2260 = param1.readInteger();
         var_996 = param1.readInteger();
         var_1668 = param1.readInteger();
         var_114 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1600);
      }
      
      public function get chatRecordId() : int
      {
         return var_1668;
      }
      
      public function get reportedUserId() : int
      {
         return var_996;
      }
      
      public function get callerUserId() : int
      {
         return var_2260;
      }
      
      public function get callId() : int
      {
         return var_1600;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_114;
      }
   }
}
