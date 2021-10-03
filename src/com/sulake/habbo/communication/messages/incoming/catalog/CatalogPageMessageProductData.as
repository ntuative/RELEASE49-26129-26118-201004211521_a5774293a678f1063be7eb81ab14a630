package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_225:String = "e";
      
      public static const const_85:String = "i";
      
      public static const const_84:String = "s";
       
      
      private var var_998:String;
      
      private var var_1172:String;
      
      private var var_1170:int;
      
      private var var_1746:int;
      
      private var var_997:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1172 = param1.readString();
         var_1746 = param1.readInteger();
         var_998 = param1.readString();
         var_997 = param1.readInteger();
         var_1170 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_997;
      }
      
      public function get productType() : String
      {
         return var_1172;
      }
      
      public function get expiration() : int
      {
         return var_1170;
      }
      
      public function get furniClassId() : int
      {
         return var_1746;
      }
      
      public function get extraParam() : String
      {
         return var_998;
      }
   }
}
