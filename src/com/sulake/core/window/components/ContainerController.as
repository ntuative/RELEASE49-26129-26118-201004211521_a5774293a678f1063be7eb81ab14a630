package com.sulake.core.window.components
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.WindowContext;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.graphics.GraphicContext;
   import com.sulake.core.window.graphics.IGraphicContext;
   import com.sulake.core.window.utils.IIterator;
   import com.sulake.core.window.utils.Iterator;
   import flash.geom.Rectangle;
   
   public class ContainerController extends WindowController implements IWindowContainer
   {
       
      
      public function ContainerController(param1:String, param2:uint, param3:uint, param4:uint, param5:WindowContext, param6:Rectangle, param7:IWindow, param8:Function = null, param9:Array = null, param10:Array = null, param11:uint = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         var_163 = var_637 || testParamFlag(WindowParam.const_50) || !testParamFlag(WindowParam.const_35);
      }
      
      override public function getGraphicContext(param1:Boolean) : IGraphicContext
      {
         if(param1 && !var_16)
         {
            var_16 = new GraphicContext("GC {" + _name + "}",!!testParamFlag(WindowParam.const_35) ? 0 : uint(GraphicContext.const_576),var_7);
            var_16.visible = var_335;
         }
         return var_16;
      }
      
      public function get iterator() : IIterator
      {
         return new Iterator(this);
      }
   }
}
