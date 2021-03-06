package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IWindowToolTipAgentService
   {
       
      
      protected var var_330:Timer;
      
      protected var var_951:String;
      
      protected var var_950:uint;
      
      protected var var_1114:Point;
      
      protected var var_246:IToolTipWindow;
      
      protected var var_1115:Point;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         var_1114 = new Point();
         var_1115 = new Point(20,20);
         var_950 = 500;
         super(param1);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(var_330 != null)
         {
            var_330.stop();
            var_330.removeEventListener(TimerEvent.TIMER,showToolTip);
            var_330 = null;
         }
         hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,var_1114);
            if(var_246 != null && true)
            {
               var_246.x = param1 + var_1115.x;
               var_246.y = param2 + var_1115.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(var_330 != null)
         {
            var_330.reset();
         }
         if(_window && true)
         {
            if(var_246 == null || false)
            {
               var_246 = _window.context.create("undefined::ToolTip",var_951,WindowType.const_297,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            var_246.x = _loc2_.x + var_1114.x + var_1115.x;
            var_246.y = _loc2_.y + var_1114.y + var_1115.y;
         }
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               var_951 = IInteractiveWindow(param1).toolTipCaption;
               var_950 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               var_951 = param1.caption;
               var_950 = 500;
            }
            _mouse.x = var_118.mouseX;
            _mouse.y = var_118.mouseY;
            getMousePositionRelativeTo(param1,_mouse,var_1114);
            if(var_951 != null && var_951 != "")
            {
               if(var_330 == null)
               {
                  var_330 = new Timer(var_950,1);
                  var_330.addEventListener(TimerEvent.TIMER,showToolTip);
               }
               var_330.reset();
               var_330.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      protected function hideToolTip() : void
      {
         if(var_246 != null && true)
         {
            var_246.destroy();
            var_246 = null;
         }
      }
   }
}
