package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1419:Array;
      
      private var var_1696:int;
      
      private var var_1697:int;
      
      private var var_1695:int;
      
      private var var_1698:int;
      
      private var _dayOffsets:Array;
      
      private var var_1694:int;
      
      private var var_1420:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1419;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1419 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1697;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1420 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1696 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1695;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1698;
      }
      
      public function get offerCount() : int
      {
         return var_1694;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1694 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1420;
      }
      
      public function get averagePrice() : int
      {
         return var_1696;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1698 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1695 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1697 = param1;
      }
   }
}
