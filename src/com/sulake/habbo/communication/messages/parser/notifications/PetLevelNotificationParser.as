package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_319:String;
      
      private var var_1712:int;
      
      private var var_2053:String;
      
      private var var_1077:int;
      
      private var var_1146:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1146;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1146 = param1.readInteger();
         var_2053 = param1.readString();
         var_1712 = param1.readInteger();
         var_319 = param1.readString();
         var_1077 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_2053;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_319;
      }
      
      public function get petType() : int
      {
         return var_1077;
      }
      
      public function get level() : int
      {
         return var_1712;
      }
   }
}
