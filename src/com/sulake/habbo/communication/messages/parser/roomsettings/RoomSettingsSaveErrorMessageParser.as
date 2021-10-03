package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1464:int = 9;
      
      public static const const_1549:int = 4;
      
      public static const const_1530:int = 1;
      
      public static const const_1148:int = 10;
      
      public static const const_1621:int = 2;
      
      public static const const_1185:int = 7;
      
      public static const const_1394:int = 11;
      
      public static const const_1541:int = 3;
      
      public static const const_1197:int = 8;
      
      public static const const_1388:int = 5;
      
      public static const const_1556:int = 6;
      
      public static const const_1223:int = 12;
       
      
      private var var_1657:String;
      
      private var _roomId:int;
      
      private var var_1147:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1657;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1147 = param1.readInteger();
         var_1657 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1147;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
