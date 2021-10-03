package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var _height:int;
      
      private var _width:int;
      
      private var var_975:Boolean;
      
      private var _offsetX:int;
      
      private var var_909:int;
      
      private var _name:String;
      
      private var var_896:IAsset;
      
      private var var_976:Boolean;
      
      public function GraphicAsset(param1:String, param2:IAsset, param3:Boolean, param4:Boolean, param5:int, param6:int)
      {
         var _loc8_:* = null;
         super();
         _name = param1;
         var _loc7_:BitmapDataAsset = param2 as BitmapDataAsset;
         if(_loc7_ != null)
         {
            _loc8_ = _loc7_.content as BitmapData;
         }
         if(_loc8_ != null)
         {
            var_896 = param2;
            _width = _loc8_.width;
            _height = _loc8_.height;
         }
         else
         {
            var_896 = null;
            _width = 0;
            _height = 0;
         }
         var_976 = param3;
         var_975 = param4;
         _offsetX = param5;
         var_909 = param6;
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
      
      public function dispose() : void
      {
         var_896 = null;
      }
      
      public function get offsetX() : int
      {
         if(!var_976)
         {
            return _offsetX;
         }
         return -(_width + _offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!var_975)
         {
            return var_909;
         }
         return -(_height + var_909);
      }
      
      public function get asset() : IAsset
      {
         return var_896;
      }
   }
}
