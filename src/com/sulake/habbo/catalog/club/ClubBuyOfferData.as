package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_1681:int;
      
      private var var_1676:Boolean = false;
      
      private var var_1678:int;
      
      private var var_1674:int;
      
      private var var_1679:int;
      
      private var var_1151:String;
      
      private var var_1253:int;
      
      private var _offerId:int;
      
      private var var_1677:int;
      
      private var var_1680:Boolean;
      
      private var var_1675:Boolean;
      
      private var var_398:ICatalogPage;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         _offerId = param1;
         var_1151 = param2;
         var_1253 = param3;
         var_1675 = param4;
         var_1680 = param5;
         var_1678 = param6;
         var_1679 = param7;
         var_1674 = param8;
         var_1681 = param9;
         var_1677 = param10;
      }
      
      public function get month() : int
      {
         return var_1681;
      }
      
      public function get page() : ICatalogPage
      {
         return var_398;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get vip() : Boolean
      {
         return var_1680;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         var_398 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function get priceInPixels() : int
      {
         return 0;
      }
      
      public function get priceType() : String
      {
         return Offer.const_307;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1675;
      }
      
      public function get localizationId() : String
      {
         return var_1151;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1679;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return var_1676;
      }
      
      public function get day() : int
      {
         return var_1677;
      }
      
      public function get year() : int
      {
         return var_1674;
      }
      
      public function get price() : int
      {
         return var_1253;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         var_1676 = param1;
      }
      
      public function get periods() : int
      {
         return var_1678;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get priceInCredits() : int
      {
         return var_1253;
      }
      
      public function get productCode() : String
      {
         return var_1151;
      }
   }
}
