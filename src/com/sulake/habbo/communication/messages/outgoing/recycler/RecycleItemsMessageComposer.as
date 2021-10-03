package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_936:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_936 = new Array();
         var_936.push(param1.length);
         var_936 = var_936.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_936;
      }
   }
}
