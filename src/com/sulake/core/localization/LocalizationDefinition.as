package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1475:String;
      
      private var var_640:String;
      
      private var var_1474:String;
      
      private var var_1473:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1473 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1475 = _loc5_[0];
         var_1474 = _loc5_[1];
         _name = param2;
         var_640 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1475;
      }
      
      public function get languageCode() : String
      {
         return var_1473;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_640;
      }
      
      public function get encoding() : String
      {
         return var_1474;
      }
      
      public function get id() : String
      {
         return var_1473 + "_" + var_1475 + "." + var_1474;
      }
   }
}
