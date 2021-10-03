package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_356:Number = 0.5;
      
      private static const const_796:int = 3;
      
      private static const const_1137:Number = 1;
       
      
      private var var_2224:Boolean = false;
      
      private var var_2218:Boolean = false;
      
      private var var_1091:int = 0;
      
      private var var_283:Vector3d = null;
      
      private var var_2223:int = 0;
      
      private var var_2221:int = 0;
      
      private var var_2226:Boolean = false;
      
      private var var_2220:int = -2;
      
      private var var_2225:Boolean = false;
      
      private var var_2219:int = 0;
      
      private var var_2222:int = -1;
      
      private var var_447:Vector3d = null;
      
      private var var_2217:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_2223;
      }
      
      public function get targetId() : int
      {
         return var_2222;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_2219 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_2223 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_2224 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_2222 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_2218 = param1;
      }
      
      public function dispose() : void
      {
         var_447 = null;
         var_283 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_447 == null)
         {
            var_447 = new Vector3d();
         }
         var_447.assign(param1);
         var_1091 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_2220;
      }
      
      public function get screenHt() : int
      {
         return var_2217;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_2221 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_283;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_2217 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_2219;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_2224;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_2218;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_447 != null && var_283 != null)
         {
            ++var_1091;
            _loc2_ = Vector3d.dif(var_447,var_283);
            if(_loc2_.length <= const_356)
            {
               var_283 = var_447;
               var_447 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_356 * (const_796 + 1))
               {
                  _loc2_.mul(const_356);
               }
               else if(var_1091 <= const_796)
               {
                  _loc2_.mul(const_356);
               }
               else
               {
                  _loc2_.mul(const_1137);
               }
               var_283 = Vector3d.sum(var_283,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_2226 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_2221;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_2225 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_2220 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_283 != null)
         {
            return;
         }
         var_283 = new Vector3d();
         var_283.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_2226;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_2225;
      }
   }
}
