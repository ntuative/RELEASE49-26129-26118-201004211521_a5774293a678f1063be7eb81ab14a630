package com.sulake.habbo.communication.messages.outgoing.friendlist
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class SendMsgMessageComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_29:Array;
      
      public function SendMsgMessageComposer(param1:int, param2:String)
      {
         var_29 = new Array();
         super();
         this.var_29.push(param1);
         this.var_29.push(param2);
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
      
      public function getMessageArray() : Array
      {
         return this.var_29;
      }
      
      public function dispose() : void
      {
         this.var_29 = null;
      }
   }
}
