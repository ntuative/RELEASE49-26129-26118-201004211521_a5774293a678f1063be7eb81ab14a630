package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1058:int = 31;
      
      private static const const_1057:int = 32;
      
      private static const const_764:int = 10;
      
      private static const const_492:int = 20;
       
      
      private var var_580:Boolean = false;
      
      private var var_222:Array;
      
      public function FurnitureHabboWheelVisualization()
      {
         var_222 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_580 = true;
            var_222 = new Array();
            var_222.push(const_1058);
            var_222.push(const_1057);
            return;
         }
         if(param1 > 0 && param1 <= const_764)
         {
            if(var_580)
            {
               var_580 = false;
               var_222 = new Array();
               var_222.push(const_764 + param1);
               var_222.push(const_492 + param1);
               var_222.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(false)
            {
               super.setAnimation(var_222.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
