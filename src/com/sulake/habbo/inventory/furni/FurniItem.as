package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1807:int;
      
      private var var_1858:Boolean;
      
      private var var_1873:int;
      
      private var var_1396:String;
      
      private var var_1872:Boolean = false;
      
      private var var_1861:int;
      
      private var var_456:int;
      
      private var var_1084:String;
      
      private var var_1526:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1379:int;
      
      private var var_1859:Boolean;
      
      private var var_1871:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1807 = param1;
         var_1084 = param2;
         _objId = param3;
         var_1379 = param4;
         var_1396 = param5;
         var_1858 = param6;
         var_1859 = param7;
         var_1861 = param8;
         var_1526 = param9;
         var_1873 = param10;
         var_456 = -1;
      }
      
      public function get songId() : int
      {
         return var_1873;
      }
      
      public function get iconCallbackId() : int
      {
         return var_456;
      }
      
      public function get expiryTime() : int
      {
         return var_1861;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_1871 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_1872 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_456 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1859;
      }
      
      public function get slotId() : String
      {
         return var_1526;
      }
      
      public function get classId() : int
      {
         return var_1379;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1858;
      }
      
      public function get stuffData() : String
      {
         return var_1396;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1807;
      }
      
      public function get isLocked() : Boolean
      {
         return var_1872;
      }
      
      public function get prevCallbackId() : int
      {
         return var_1871;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1084;
      }
   }
}
