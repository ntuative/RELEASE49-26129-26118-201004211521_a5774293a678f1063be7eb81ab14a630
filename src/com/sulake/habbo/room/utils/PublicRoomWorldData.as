package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_2020:Number = 1;
      
      private var var_205:Number = 1;
      
      private var var_1838:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_1838 = param1;
         var_205 = param2;
         var_2020 = param3;
      }
      
      public function get scale() : Number
      {
         return var_205;
      }
      
      public function get heightScale() : Number
      {
         return var_2020;
      }
   }
}
