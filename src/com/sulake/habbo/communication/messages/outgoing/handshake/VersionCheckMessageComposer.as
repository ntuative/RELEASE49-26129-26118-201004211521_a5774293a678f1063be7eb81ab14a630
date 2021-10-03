package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1737:String;
      
      private var var_1132:String;
      
      private var var_1738:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1738 = param1;
         var_1132 = param2;
         var_1737 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1738,var_1132,var_1737];
      }
      
      public function dispose() : void
      {
      }
   }
}
