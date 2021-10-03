package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1864:int;
      
      private var var_1494:int;
      
      private var var_1865:int;
      
      private var var_1866:int;
      
      private var var_1867:int;
      
      private var var_1493:int;
      
      private var var_1868:int;
      
      private var var_1282:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1864;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1494;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1868;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1866;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1867;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1493;
      }
      
      public function get commission() : int
      {
         return var_1865;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1282 = param1.readBoolean();
         var_1865 = param1.readInteger();
         var_1494 = param1.readInteger();
         var_1493 = param1.readInteger();
         var_1866 = param1.readInteger();
         var_1864 = param1.readInteger();
         var_1867 = param1.readInteger();
         var_1868 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1282;
      }
   }
}
