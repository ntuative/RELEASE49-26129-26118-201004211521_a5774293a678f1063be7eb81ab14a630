package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1852:int;
      
      private var var_448:Boolean;
      
      private var var_1851:Boolean;
      
      private var var_832:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1851 = param1.readBoolean();
         if(var_1851)
         {
            var_1852 = param1.readInteger();
            var_448 = param1.readBoolean();
         }
         else
         {
            var_832 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_832 != null)
         {
            var_832.dispose();
            var_832 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1852;
      }
      
      public function get owner() : Boolean
      {
         return var_448;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1851;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_832;
      }
   }
}
