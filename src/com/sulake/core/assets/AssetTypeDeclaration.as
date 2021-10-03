package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2261:Class;
      
      private var var_2263:Class;
      
      private var var_2262:String;
      
      private var var_1377:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_2262 = param1;
         var_2263 = param2;
         var_2261 = param3;
         if(rest == null)
         {
            var_1377 = new Array();
         }
         else
         {
            var_1377 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_2261;
      }
      
      public function get assetClass() : Class
      {
         return var_2263;
      }
      
      public function get mimeType() : String
      {
         return var_2262;
      }
      
      public function get fileTypes() : Array
      {
         return var_1377;
      }
   }
}
