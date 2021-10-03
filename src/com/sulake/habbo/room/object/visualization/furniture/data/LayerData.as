package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_403:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_386:int = 0;
      
      public static const const_951:int = 2;
      
      public static const const_981:int = 1;
      
      public static const const_722:Boolean = false;
      
      public static const const_505:String = "";
      
      public static const const_407:int = 0;
      
      public static const const_435:int = 0;
      
      public static const const_486:int = 0;
       
      
      private var var_1947:int = 0;
      
      private var var_1788:String = "";
      
      private var var_1459:int = 0;
      
      private var var_1948:int = 0;
      
      private var var_1949:Number = 0;
      
      private var var_1790:int = 255;
      
      private var var_1946:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1947;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1459 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1949;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1948 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1947 = param1;
      }
      
      public function get tag() : String
      {
         return var_1788;
      }
      
      public function get alpha() : int
      {
         return var_1790;
      }
      
      public function get ink() : int
      {
         return var_1459;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1949 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1948;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1946 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1946;
      }
      
      public function set tag(param1:String) : void
      {
         var_1788 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1790 = param1;
      }
   }
}
