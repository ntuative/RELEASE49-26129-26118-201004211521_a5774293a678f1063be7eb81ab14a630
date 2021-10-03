package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_988:String = "price_type_none";
      
      public static const const_416:String = "pricing_model_multi";
      
      public static const const_307:String = "price_type_credits";
      
      public static const const_474:String = "price_type_credits_and_pixels";
      
      public static const const_444:String = "pricing_model_bundle";
      
      public static const const_371:String = "pricing_model_single";
      
      public static const const_575:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1217:String = "pricing_model_unknown";
      
      public static const const_484:String = "price_type_pixels";
       
      
      private var var_1775:int;
      
      private var var_801:int;
      
      private var _offerId:int;
      
      private var var_800:int;
      
      private var var_401:String;
      
      private var var_570:String;
      
      private var var_398:ICatalogPage;
      
      private var var_400:IProductContainer;
      
      private var var_1174:String;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1174 = param1.localizationId;
         var_801 = param1.priceInCredits;
         var_800 = param1.priceInPixels;
         var_398 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_401;
      }
      
      public function get page() : ICatalogPage
      {
         return var_398;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1775 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_400;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_800;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1174 = "";
         var_801 = 0;
         var_800 = 0;
         var_398 = null;
         if(var_400 != null)
         {
            var_400.dispose();
            var_400 = null;
         }
      }
      
      public function get previewCallbackId() : int
      {
         return var_1775;
      }
      
      public function get priceInCredits() : int
      {
         return var_801;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_401 = const_371;
            }
            else
            {
               var_401 = const_416;
            }
         }
         else if(param1.length > 1)
         {
            var_401 = const_444;
         }
         else
         {
            var_401 = const_1217;
         }
      }
      
      public function get priceType() : String
      {
         return var_570;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_401)
         {
            case const_371:
               var_400 = new SingleProductContainer(this,param1);
               break;
            case const_416:
               var_400 = new MultiProductContainer(this,param1);
               break;
            case const_444:
               var_400 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_401);
         }
      }
      
      public function get localizationId() : String
      {
         return var_1174;
      }
      
      private function analyzePriceType() : void
      {
         if(var_801 > 0 && var_800 > 0)
         {
            var_570 = const_474;
         }
         else if(var_801 > 0)
         {
            var_570 = const_307;
         }
         else if(var_800 > 0)
         {
            var_570 = const_484;
         }
         else
         {
            var_570 = const_988;
         }
      }
   }
}
