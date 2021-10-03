package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2266:Number;
      
      private var var_633:Number = 0;
      
      private var var_2267:Number;
      
      private var var_632:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_2266 = param1;
         var_2267 = param2;
      }
      
      public function update() : void
      {
         var_632 += var_2267;
         var_633 += var_632;
         if(var_633 > 0)
         {
            var_633 = 0;
            var_632 = var_2266 * -1 * var_632;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_632 = param1;
         var_633 = 0;
      }
      
      public function get location() : Number
      {
         return var_633;
      }
   }
}
