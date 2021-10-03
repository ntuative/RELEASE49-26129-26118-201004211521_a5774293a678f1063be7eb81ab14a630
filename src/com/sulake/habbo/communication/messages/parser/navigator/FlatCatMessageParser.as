package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCatMessageParser implements IMessageParser
   {
       
      
      private var var_449:int;
      
      private var var_1138:int;
      
      public function FlatCatMessageParser()
      {
         super();
      }
      
      public function get flatId() : int
      {
         return var_449;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_449 = param1.readInteger();
         var_1138 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         var_449 = 0;
         var_1138 = 0;
         return true;
      }
      
      public function get nodeId() : int
      {
         return var_1138;
      }
   }
}
