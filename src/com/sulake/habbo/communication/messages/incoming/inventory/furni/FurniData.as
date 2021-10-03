package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1396:String;
      
      private var var_1084:String;
      
      private var var_1862:Boolean;
      
      private var var_1495:int;
      
      private var var_1807:int;
      
      private var var_1860:Boolean;
      
      private var var_1526:String = "";
      
      private var var_1858:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1379:int;
      
      private var var_1859:Boolean;
      
      private var var_1873:int = -1;
      
      private var var_1861:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1807 = param1;
         var_1084 = param2;
         _objId = param3;
         var_1379 = param4;
         _category = param5;
         var_1396 = param6;
         var_1862 = param7;
         var_1858 = param8;
         var_1859 = param9;
         var_1860 = param10;
         var_1861 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1526;
      }
      
      public function get extra() : int
      {
         return var_1495;
      }
      
      public function get classId() : int
      {
         return var_1379;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1860;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1862;
      }
      
      public function get stripId() : int
      {
         return var_1807;
      }
      
      public function get stuffData() : String
      {
         return var_1396;
      }
      
      public function get songId() : int
      {
         return var_1873;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1526 = param1;
         var_1495 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1084;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1861;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1859;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1858;
      }
   }
}
