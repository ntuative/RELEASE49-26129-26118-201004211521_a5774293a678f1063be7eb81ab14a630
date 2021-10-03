package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1138:int;
      
      private var var_1587:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1138 = param1;
         var_1587 = param2;
         Logger.log("READ NODE: " + var_1138 + ", " + var_1587);
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
