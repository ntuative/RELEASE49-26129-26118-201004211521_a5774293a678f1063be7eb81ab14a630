package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1058:int = 31;
      
      private static const const_1057:int = 32;
      
      private static const const_493:int = 30;
      
      private static const const_764:int = 20;
      
      private static const const_492:int = 10;
       
      
      private var var_580:Boolean = false;
      
      private var var_222:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_222 = new Array();
         super();
         super.setAnimation(const_493);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_580 = true;
            var_222 = new Array();
            var_222.push(const_1058);
            var_222.push(const_1057);
            return;
         }
         if(param1 > 0 && param1 <= const_492)
         {
            if(var_580)
            {
               var_580 = false;
               var_222 = new Array();
               if(_direction == 2)
               {
                  var_222.push(const_764 + 5 - param1);
                  var_222.push(const_492 + 5 - param1);
               }
               else
               {
                  var_222.push(const_764 + param1);
                  var_222.push(const_492 + param1);
               }
               var_222.push(const_493);
               return;
            }
            super.setAnimation(const_493);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
