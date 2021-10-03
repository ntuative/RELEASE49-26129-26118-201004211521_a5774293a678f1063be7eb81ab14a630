package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_743:String;
      
      private var var_2012:int;
      
      private var var_1428:Boolean;
      
      private var _roomId:int;
      
      private var var_2013:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1428 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_743 = param1.readString();
         var_2013 = param1.readInteger();
         var_2012 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1428;
      }
      
      public function get roomName() : String
      {
         return var_743;
      }
      
      public function get enterMinute() : int
      {
         return var_2012;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_2013;
      }
   }
}
