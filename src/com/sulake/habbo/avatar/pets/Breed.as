package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_604:String;
      
      private var _id:int;
      
      private var var_1856:String = "";
      
      private var var_1855:int;
      
      private var var_1854:String;
      
      private var var_1756:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_1855 = parseInt(param1.@pattern);
         var_604 = String(param1.@gender);
         var_1756 = Boolean(parseInt(param1.@colorable));
         var_1856 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_1856;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1756;
      }
      
      public function get gender() : String
      {
         return var_604;
      }
      
      public function get patternId() : int
      {
         return var_1855;
      }
      
      public function get avatarFigureString() : String
      {
         return var_1854;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_1854 = param1;
      }
   }
}
