package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1129:int = 1;
      
      private static const const_1057:int = 3;
      
      private static const const_1128:int = 2;
      
      private static const const_1130:int = 15;
       
      
      private var var_917:int;
      
      private var var_222:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_222 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1128)
         {
            var_222 = new Array();
            var_222.push(const_1129);
            var_917 = const_1130;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_917 > 0)
         {
            --var_917;
         }
         if(var_917 == 0)
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
