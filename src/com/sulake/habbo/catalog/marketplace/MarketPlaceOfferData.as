package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var var_1979:int;
      
      private var var_1253:int;
      
      private var var_1696:int;
      
      private var var_1978:int = -1;
      
      private var var_213:int;
      
      private var var_1729:int;
      
      private var _image:BitmapData;
      
      private var _offerId:int;
      
      private var var_1252:int;
      
      private var var_1730:int;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int = -1)
      {
         super();
         _offerId = param1;
         var_1730 = param2;
         var_1729 = param3;
         var_1253 = param4;
         var_213 = param5;
         var_1696 = param6;
         var_1252 = param7;
      }
      
      public function set imageCallback(param1:int) : void
      {
         var_1979 = param1;
      }
      
      public function get imageCallback() : int
      {
         return var_1979;
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
      
      public function set timeLeftMinutes(param1:int) : void
      {
         var_1978 = param1;
      }
      
      public function dispose() : void
      {
         if(_image)
         {
            _image.dispose();
            _image = null;
         }
      }
      
      public function set price(param1:int) : void
      {
         var_1253 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1252 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get status() : int
      {
         return var_213;
      }
      
      public function get averagePrice() : int
      {
         return var_1696;
      }
      
      public function set offerId(param1:int) : void
      {
         _offerId = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(_image != null)
         {
            _image.dispose();
         }
         _image = param1;
      }
      
      public function get furniId() : int
      {
         return var_1730;
      }
   }
}
