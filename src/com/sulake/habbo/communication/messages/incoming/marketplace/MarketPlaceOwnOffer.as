package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1458:int = 2;
      
      public static const const_1544:int = 1;
      
      public static const const_1536:int = 0;
       
      
      private var var_1253:int;
      
      private var var_213:int;
      
      private var var_2375:int;
      
      private var _offerId:int;
      
      private var var_1729:int;
      
      private var var_1730:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1730 = param2;
         var_1729 = param3;
         var_1253 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1730;
      }
      
      public function get furniType() : int
      {
         return var_1729;
      }
      
      public function get price() : int
      {
         return var_1253;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
