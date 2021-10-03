package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_668:int = -1;
      
      public static const const_878:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_1846:int = -1;
      
      private var var_79:int = 0;
      
      private var var_1201:int = 1;
      
      private var var_831:int = 1;
      
      private var var_1847:Boolean = false;
      
      private var var_1845:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_79 = param2;
         _y = param3;
         var_1847 = param5;
         if(param4 < 0)
         {
            param4 = const_668;
         }
         var_831 = param4;
         var_1201 = param4;
         if(param6 >= 0)
         {
            var_1846 = param6;
            var_1845 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_831 > 0 && param1 > var_831)
         {
            param1 = var_831;
         }
         var_1201 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_831;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_1845;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_831 < 0)
         {
            return const_668;
         }
         return var_1201;
      }
      
      public function get activeSequence() : int
      {
         return var_1846;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_1847;
      }
      
      public function get x() : int
      {
         return var_79;
      }
   }
}
