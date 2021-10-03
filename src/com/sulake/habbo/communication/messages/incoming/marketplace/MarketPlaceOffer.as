package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1253:int;
      
      private var var_1978:int = -1;
      
      private var var_213:int;
      
      private var var_1696:int;
      
      private var var_1729:int;
      
      private var _offerId:int;
      
      private var var_1252:int;
      
      private var var_1730:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1730 = param2;
         var_1729 = param3;
         var_1253 = param4;
         var_213 = param5;
         var_1978 = param6;
         var_1696 = param7;
         var_1252 = param8;
      }
      
      public function get status() : int
      {
         return var_213;
      }
      
      public function get price() : int
      {
         return var_1253;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1978;
      }
      
      public function get offerCount() : int
      {
         return var_1252;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1729;
      }
      
      public function get averagePrice() : int
      {
         return var_1696;
      }
      
      public function get furniId() : int
      {
         return var_1730;
      }
   }
}
