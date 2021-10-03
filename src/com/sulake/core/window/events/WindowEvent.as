package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_275:String = "WE_CHILD_RESIZED";
      
      public static const const_1220:String = "WE_CLOSE";
      
      public static const const_1244:String = "WE_DESTROY";
      
      public static const const_115:String = "WE_CHANGE";
      
      public static const const_1359:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1500:String = "WE_PARENT_RESIZE";
      
      public static const const_98:String = "WE_UPDATE";
      
      public static const const_1200:String = "WE_MAXIMIZE";
      
      public static const const_441:String = "WE_DESTROYED";
      
      public static const const_829:String = "WE_UNSELECT";
      
      public static const const_1211:String = "WE_MAXIMIZED";
      
      public static const const_1558:String = "WE_UNLOCKED";
      
      public static const const_440:String = "WE_CHILD_REMOVED";
      
      public static const const_175:String = "WE_OK";
      
      public static const const_48:String = "WE_RESIZED";
      
      public static const const_1305:String = "WE_ACTIVATE";
      
      public static const const_262:String = "WE_ENABLED";
      
      public static const const_454:String = "WE_CHILD_RELOCATED";
      
      public static const const_1402:String = "WE_CREATE";
      
      public static const const_670:String = "WE_SELECT";
      
      public static const const_182:String = "";
      
      public static const const_1555:String = "WE_LOCKED";
      
      public static const const_1575:String = "WE_PARENT_RELOCATE";
      
      public static const const_1553:String = "WE_CHILD_REMOVE";
      
      public static const const_1593:String = "WE_CHILD_RELOCATE";
      
      public static const const_1626:String = "WE_LOCK";
      
      public static const const_212:String = "WE_FOCUSED";
      
      public static const const_675:String = "WE_UNSELECTED";
      
      public static const const_890:String = "WE_DEACTIVATED";
      
      public static const const_1342:String = "WE_MINIMIZED";
      
      public static const const_1508:String = "WE_ARRANGED";
      
      public static const const_1517:String = "WE_UNLOCK";
      
      public static const const_1491:String = "WE_ATTACH";
      
      public static const const_1168:String = "WE_OPEN";
      
      public static const const_1341:String = "WE_RESTORE";
      
      public static const const_1489:String = "WE_PARENT_RELOCATED";
      
      public static const const_1331:String = "WE_RELOCATE";
      
      public static const const_1624:String = "WE_CHILD_RESIZE";
      
      public static const const_1447:String = "WE_ARRANGE";
      
      public static const const_1186:String = "WE_OPENED";
      
      public static const const_1346:String = "WE_CLOSED";
      
      public static const const_1524:String = "WE_DETACHED";
      
      public static const const_1601:String = "WE_UPDATED";
      
      public static const const_1401:String = "WE_UNFOCUSED";
      
      public static const const_431:String = "WE_RELOCATED";
      
      public static const const_1221:String = "WE_DEACTIVATE";
      
      public static const const_219:String = "WE_DISABLED";
      
      public static const const_512:String = "WE_CANCEL";
      
      public static const const_740:String = "WE_ENABLE";
      
      public static const const_1361:String = "WE_ACTIVATED";
      
      public static const const_1178:String = "WE_FOCUS";
      
      public static const const_1602:String = "WE_DETACH";
      
      public static const const_1296:String = "WE_RESTORED";
      
      public static const const_1169:String = "WE_UNFOCUS";
      
      public static const const_62:String = "WE_SELECTED";
      
      public static const const_1390:String = "WE_PARENT_RESIZED";
      
      public static const const_1352:String = "WE_CREATED";
      
      public static const const_1579:String = "WE_ATTACHED";
      
      public static const const_1246:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1612:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1386:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1612 = param3;
         var_1386 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1386;
      }
      
      public function get related() : IWindow
      {
         return var_1612;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1386 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
