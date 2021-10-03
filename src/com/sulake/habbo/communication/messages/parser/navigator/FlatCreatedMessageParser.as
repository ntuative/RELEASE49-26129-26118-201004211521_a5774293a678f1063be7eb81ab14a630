package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCreatedMessageParser implements IMessageParser
   {
       
      
      private var var_2114:String;
      
      private var var_449:int;
      
      public function FlatCreatedMessageParser()
      {
         super();
      }
      
      public function get flatName() : String
      {
         return var_2114;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_449 = param1.readInteger();
         this.var_2114 = param1.readString();
         Logger.log("FLAT CREATED: " + this.var_449 + ", " + this.var_2114);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get flatId() : int
      {
         return var_449;
      }
   }
}
