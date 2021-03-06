package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_427:int = -2147483648;
      
      private var var_426:int = 2147483647;
      
      private var var_424:int = 2147483647;
      
      private var _target:IWindow;
      
      private var var_425:int = -2147483648;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         _target = param1;
      }
      
      public function get maxWidth() : int
      {
         return var_426;
      }
      
      public function get isEmpty() : Boolean
      {
         return var_425 == int.MIN_VALUE && var_426 == int.MAX_VALUE && var_427 == int.MIN_VALUE && var_424 == int.MAX_VALUE;
      }
      
      public function set maxWidth(param1:int) : void
      {
         var_426 = param1;
         if(var_426 < int.MAX_VALUE && true && _target.width > var_426)
         {
            _target.width = var_426;
         }
      }
      
      public function setEmpty() : void
      {
         var_425 = int.MIN_VALUE;
         var_426 = int.MAX_VALUE;
         var_427 = int.MIN_VALUE;
         var_424 = int.MAX_VALUE;
      }
      
      public function set maxHeight(param1:int) : void
      {
         var_424 = param1;
         if(var_424 < int.MAX_VALUE && true && _target.height > var_424)
         {
            _target.height = var_424;
         }
      }
      
      public function get minHeight() : int
      {
         return var_427;
      }
      
      public function get minWidth() : int
      {
         return var_425;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_425 = var_425;
         _loc2_.var_426 = var_426;
         _loc2_.var_427 = var_427;
         _loc2_.var_424 = var_424;
         return _loc2_;
      }
      
      public function set minWidth(param1:int) : void
      {
         var_425 = param1;
         if(var_425 > int.MIN_VALUE && true && _target.width < var_425)
         {
            _target.width = var_425;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         var_427 = param1;
         if(var_427 > int.MIN_VALUE && true && _target.height < var_427)
         {
            _target.height = var_427;
         }
      }
      
      public function get maxHeight() : int
      {
         return var_424;
      }
   }
}
