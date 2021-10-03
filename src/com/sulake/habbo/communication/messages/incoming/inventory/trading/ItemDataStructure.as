package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1084:String;
      
      private var var_1969:int;
      
      private var var_1967:int;
      
      private var var_1495:int;
      
      private var var_1964:int;
      
      private var _category:int;
      
      private var var_2388:int;
      
      private var var_1963:int;
      
      private var var_1970:int;
      
      private var var_1965:int;
      
      private var var_1968:int;
      
      private var var_1966:Boolean;
      
      private var var_1396:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1969 = param1;
         var_1084 = param2;
         var_1967 = param3;
         var_1965 = param4;
         _category = param5;
         var_1396 = param6;
         var_1495 = param7;
         var_1970 = param8;
         var_1963 = param9;
         var_1968 = param10;
         var_1964 = param11;
         var_1966 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_1965;
      }
      
      public function get extra() : int
      {
         return var_1495;
      }
      
      public function get stuffData() : String
      {
         return var_1396;
      }
      
      public function get groupable() : Boolean
      {
         return var_1966;
      }
      
      public function get creationMonth() : int
      {
         return var_1968;
      }
      
      public function get roomItemID() : int
      {
         return var_1967;
      }
      
      public function get itemType() : String
      {
         return var_1084;
      }
      
      public function get itemID() : int
      {
         return var_1969;
      }
      
      public function get songID() : int
      {
         return var_1495;
      }
      
      public function get timeToExpiration() : int
      {
         return var_1970;
      }
      
      public function get creationYear() : int
      {
         return var_1964;
      }
      
      public function get creationDay() : int
      {
         return var_1963;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
