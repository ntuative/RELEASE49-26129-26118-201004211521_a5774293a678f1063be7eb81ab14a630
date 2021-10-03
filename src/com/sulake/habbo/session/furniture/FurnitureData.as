package com.sulake.habbo.session.furniture
{
   public class FurnitureData implements IFurnitureData
   {
      
      public static const const_1546:String = "e";
      
      public static const const_1534:String = "i";
      
      public static const const_1591:String = "s";
       
      
      private var _id:int;
      
      private var _title:String;
      
      private var _type:String;
      
      private var var_2077:int;
      
      private var var_1345:Array;
      
      private var var_2075:int;
      
      private var var_2078:int;
      
      private var var_2074:int;
      
      private var _name:String;
      
      private var var_2076:int;
      
      private var var_1276:String;
      
      public function FurnitureData(param1:String, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array, param10:String, param11:String)
      {
         super();
         _type = param1;
         _id = param2;
         _name = param3;
         var_2077 = param4;
         var_2076 = param5;
         var_2075 = param6;
         var_2078 = param7;
         var_2074 = param8;
         var_1345 = param9;
         _title = param10;
         var_1276 = param11;
      }
      
      public function get tileSizeY() : int
      {
         return var_2078;
      }
      
      public function get tileSizeZ() : int
      {
         return var_2074;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get title() : String
      {
         return _title;
      }
      
      public function get revision() : int
      {
         return var_2076;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get colourIndex() : int
      {
         return var_2077;
      }
      
      public function get tileSizeX() : int
      {
         return var_2075;
      }
      
      public function get colours() : Array
      {
         return var_1345;
      }
      
      public function get description() : String
      {
         return var_1276;
      }
   }
}
