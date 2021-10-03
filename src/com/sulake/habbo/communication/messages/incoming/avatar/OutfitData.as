package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1725:String;
      
      private var var_604:String;
      
      private var var_1526:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1526 = param1.readInteger();
         var_1725 = param1.readString();
         var_604 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_604;
      }
      
      public function get figureString() : String
      {
         return var_1725;
      }
      
      public function get slotId() : int
      {
         return var_1526;
      }
   }
}
