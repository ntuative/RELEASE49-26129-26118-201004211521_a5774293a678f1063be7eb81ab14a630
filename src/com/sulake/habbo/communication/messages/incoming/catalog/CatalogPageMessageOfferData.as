package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_811:Array;
      
      private var var_801:int;
      
      private var var_1174:String;
      
      private var _offerId:int;
      
      private var var_800:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1174 = param1.readString();
         var_801 = param1.readInteger();
         var_800 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_811 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_811.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_811;
      }
      
      public function get priceInCredits() : int
      {
         return var_801;
      }
      
      public function get localizationId() : String
      {
         return var_1174;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_800;
      }
   }
}
