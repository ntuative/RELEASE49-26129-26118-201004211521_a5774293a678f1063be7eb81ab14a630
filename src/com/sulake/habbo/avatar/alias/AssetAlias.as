package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_975:Boolean;
      
      private var _name:String;
      
      private var var_1849:String;
      
      private var var_976:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_1849 = String(param1.@link);
         var_976 = Boolean(parseInt(param1.@fliph));
         var_975 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_976;
      }
      
      public function get flipV() : Boolean
      {
         return var_975;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_1849;
      }
   }
}
