package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1209:int = 2;
      
      public static const const_1459:int = 1;
       
      
      private var var_2044:int;
      
      private var var_2042:int;
      
      private var var_1726:Boolean;
      
      private var var_2043:int;
      
      private var var_1272:String;
      
      private var var_2040:Boolean;
      
      private var var_2041:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2042;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1726;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2041;
      }
      
      public function get memberPeriods() : int
      {
         return var_2043;
      }
      
      public function get productName() : String
      {
         return var_1272;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2040;
      }
      
      public function get responseType() : int
      {
         return var_2044;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1272 = param1.readString();
         var_2042 = param1.readInteger();
         var_2043 = param1.readInteger();
         var_2041 = param1.readInteger();
         var_2044 = param1.readInteger();
         var_2040 = param1.readBoolean();
         var_1726 = param1.readBoolean();
         return true;
      }
   }
}
