package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.avatar.ChangeUserNameResultMessageParser;
   
   public class ChangeUserNameResultMessageEvent extends MessageEvent implements IMessageEvent
   {
      
      public static var var_945:int = 3;
      
      public static var var_941:int = 5;
      
      public static var var_1107:int = 7;
      
      public static var var_636:int = 0;
      
      public static var var_1108:int = 6;
      
      public static var var_944:int = 4;
      
      public static var var_943:int = 2;
      
      public static var var_942:int = 1;
       
      
      public function ChangeUserNameResultMessageEvent(param1:Function)
      {
         super(param1,ChangeUserNameResultMessageParser);
      }
      
      public function getParser() : ChangeUserNameResultMessageParser
      {
         return var_6 as ChangeUserNameResultMessageParser;
      }
   }
}
