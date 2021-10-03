package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1681:int;
      
      private var var_1253:int;
      
      private var var_1678:int;
      
      private var _offerId:int;
      
      private var var_1674:int;
      
      private var var_1677:int;
      
      private var var_1680:Boolean;
      
      private var var_1679:int;
      
      private var var_1675:Boolean;
      
      private var var_1151:String;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1151 = param1.readString();
         var_1253 = param1.readInteger();
         var_1675 = param1.readBoolean();
         var_1680 = param1.readBoolean();
         var_1678 = param1.readInteger();
         var_1679 = param1.readInteger();
         var_1674 = param1.readInteger();
         var_1681 = param1.readInteger();
         var_1677 = param1.readInteger();
      }
      
      public function get year() : int
      {
         return var_1674;
      }
      
      public function get month() : int
      {
         return var_1681;
      }
      
      public function get price() : int
      {
         return var_1253;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get periods() : int
      {
         return var_1678;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1679;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1675;
      }
      
      public function get day() : int
      {
         return var_1677;
      }
      
      public function get vip() : Boolean
      {
         return var_1680;
      }
      
      public function get productCode() : String
      {
         return var_1151;
      }
   }
}
