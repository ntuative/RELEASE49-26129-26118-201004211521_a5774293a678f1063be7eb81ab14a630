package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeMessageData
   {
       
      
      private var var_1478:int;
      
      private var var_1893:String;
      
      public function PrizeMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_1893 = param1.readString();
         var_1478 = param1.readInteger();
      }
      
      public function get productItemTypeId() : int
      {
         return var_1478;
      }
      
      public function get productItemType() : String
      {
         return var_1893;
      }
   }
}
