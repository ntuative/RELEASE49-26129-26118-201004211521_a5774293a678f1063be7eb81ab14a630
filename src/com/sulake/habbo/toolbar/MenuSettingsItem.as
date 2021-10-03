package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2205:Array;
      
      private var var_2069:String;
      
      private var var_2204:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_2069 = param1;
         var_2205 = param2;
         var_2204 = param3;
      }
      
      public function get menuId() : String
      {
         return var_2069;
      }
      
      public function get yieldList() : Array
      {
         return var_2205;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_2204;
      }
   }
}
