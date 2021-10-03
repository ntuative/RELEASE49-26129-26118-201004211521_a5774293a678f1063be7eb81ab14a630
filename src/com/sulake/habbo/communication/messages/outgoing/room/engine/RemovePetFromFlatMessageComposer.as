package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RemovePetFromFlatMessageComposer implements IMessageComposer
   {
       
      
      private var var_1146:int;
      
      public function RemovePetFromFlatMessageComposer(param1:int)
      {
         super();
         var_1146 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1146];
      }
      
      public function dispose() : void
      {
      }
   }
}
