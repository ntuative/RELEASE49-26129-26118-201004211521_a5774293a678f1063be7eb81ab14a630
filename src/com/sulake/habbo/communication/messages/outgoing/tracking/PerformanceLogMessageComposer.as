package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_978:int = 0;
      
      private var var_1352:int = 0;
      
      private var var_1701:String = "";
      
      private var var_977:int = 0;
      
      private var var_2236:String = "";
      
      private var var_2237:int = 0;
      
      private var var_1424:String = "";
      
      private var var_2240:int = 0;
      
      private var var_2238:int = 0;
      
      private var var_1699:String = "";
      
      private var var_2239:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_2240 = param1;
         var_1699 = param2;
         var_1424 = param3;
         var_1701 = param4;
         var_2236 = param5;
         if(param6)
         {
            var_1352 = 1;
         }
         else
         {
            var_1352 = 0;
         }
         var_2237 = param7;
         var_2238 = param8;
         var_977 = param9;
         var_2239 = param10;
         var_978 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2240,var_1699,var_1424,var_1701,var_2236,var_1352,var_2237,var_2238,var_977,var_2239,var_978];
      }
      
      public function dispose() : void
      {
      }
   }
}
