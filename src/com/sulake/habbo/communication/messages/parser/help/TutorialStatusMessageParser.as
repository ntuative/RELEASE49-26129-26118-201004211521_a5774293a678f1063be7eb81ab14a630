package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1042:Boolean;
      
      private var var_1040:Boolean;
      
      private var var_1041:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_1042;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_1040;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1041 = param1.readBoolean();
         var_1040 = param1.readBoolean();
         var_1042 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_1041;
      }
      
      public function flush() : Boolean
      {
         var_1041 = false;
         var_1040 = false;
         var_1042 = false;
         return true;
      }
   }
}
