package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1637:Boolean = false;
      
      private var var_1640:Boolean = false;
      
      private var var_1636:String = "";
      
      private var _type:String = "";
      
      private var var_1639:Boolean = false;
      
      private var var_1631:Number = 0;
      
      private var var_1638:Number = 0;
      
      private var var_1633:Number = 0;
      
      private var var_1634:String = "";
      
      private var var_1635:Number = 0;
      
      private var var_1632:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1634 = param2;
         var_1636 = param3;
         var_1638 = param4;
         var_1633 = param5;
         var_1631 = param6;
         var_1635 = param7;
         var_1632 = param8;
         var_1640 = param9;
         var_1639 = param10;
         var_1637 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1632;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1637;
      }
      
      public function get localX() : Number
      {
         return var_1631;
      }
      
      public function get localY() : Number
      {
         return var_1635;
      }
      
      public function get canvasId() : String
      {
         return var_1634;
      }
      
      public function get altKey() : Boolean
      {
         return var_1640;
      }
      
      public function get spriteTag() : String
      {
         return var_1636;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1638;
      }
      
      public function get screenY() : Number
      {
         return var_1633;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1639;
      }
   }
}
