package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_80:Number = 0;
      
      private var var_219:int = 0;
      
      private var var_1918:int = 0;
      
      private var var_2036:Number = 0;
      
      private var var_2035:Number = 0;
      
      private var var_2037:Number = 0;
      
      private var var_2039:Number = 0;
      
      private var var_2038:Boolean = false;
      
      private var var_79:Number = 0;
      
      private var _id:int = 0;
      
      private var var_204:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_204 = [];
         super();
         _id = param1;
         var_79 = param2;
         _y = param3;
         var_80 = param4;
         var_2039 = param5;
         var_219 = param6;
         var_1918 = param7;
         var_2036 = param8;
         var_2035 = param9;
         var_2037 = param10;
         var_2038 = param11;
         var_204 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_80;
      }
      
      public function get dir() : int
      {
         return var_219;
      }
      
      public function get localZ() : Number
      {
         return var_2039;
      }
      
      public function get isMoving() : Boolean
      {
         return var_2038;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1918;
      }
      
      public function get targetX() : Number
      {
         return var_2036;
      }
      
      public function get targetY() : Number
      {
         return var_2035;
      }
      
      public function get targetZ() : Number
      {
         return var_2037;
      }
      
      public function get x() : Number
      {
         return var_79;
      }
      
      public function get actions() : Array
      {
         return var_204.slice();
      }
   }
}
