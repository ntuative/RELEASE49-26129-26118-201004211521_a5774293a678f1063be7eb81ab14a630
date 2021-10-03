package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_335:Boolean;
      
      private var var_1138:int;
      
      private var var_1587:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1138 = param1.readInteger();
         var_1587 = param1.readString();
         var_335 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_335;
      }
      
      public function get nodeName() : String
      {
         return var_1587;
      }
      
      public function get nodeId() : int
      {
         return var_1138;
      }
   }
}
