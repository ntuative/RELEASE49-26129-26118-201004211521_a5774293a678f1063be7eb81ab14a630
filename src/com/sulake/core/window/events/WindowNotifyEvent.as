package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1268:String = "WN_CREATED";
      
      public static const const_903:String = "WN_DISABLE";
      
      public static const const_990:String = "WN_DEACTIVATED";
      
      public static const const_989:String = "WN_OPENED";
      
      public static const const_830:String = "WN_CLOSED";
      
      public static const const_1028:String = "WN_DESTROY";
      
      public static const const_1471:String = "WN_ARRANGED";
      
      public static const const_413:String = "WN_PARENT_RESIZED";
      
      public static const const_920:String = "WN_ENABLE";
      
      public static const const_834:String = "WN_RELOCATE";
      
      public static const const_974:String = "WN_FOCUS";
      
      public static const const_961:String = "WN_PARENT_RELOCATED";
      
      public static const const_421:String = "WN_PARAM_UPDATED";
      
      public static const const_578:String = "WN_PARENT_ACTIVATED";
      
      public static const const_165:String = "WN_RESIZED";
      
      public static const const_992:String = "WN_CLOSE";
      
      public static const const_858:String = "WN_PARENT_REMOVED";
      
      public static const const_247:String = "WN_CHILD_RELOCATED";
      
      public static const const_533:String = "WN_ENABLED";
      
      public static const const_269:String = "WN_CHILD_RESIZED";
      
      public static const const_997:String = "WN_MINIMIZED";
      
      public static const const_720:String = "WN_DISABLED";
      
      public static const const_222:String = "WN_CHILD_ACTIVATED";
      
      public static const const_483:String = "WN_STATE_UPDATED";
      
      public static const const_744:String = "WN_UNSELECTED";
      
      public static const const_453:String = "WN_STYLE_UPDATED";
      
      public static const const_1560:String = "WN_UPDATE";
      
      public static const const_372:String = "WN_PARENT_ADDED";
      
      public static const const_680:String = "WN_RESIZE";
      
      public static const const_644:String = "WN_CHILD_REMOVED";
      
      public static const const_1615:String = "";
      
      public static const const_948:String = "WN_RESTORED";
      
      public static const const_332:String = "WN_SELECTED";
      
      public static const const_929:String = "WN_MINIMIZE";
      
      public static const const_1008:String = "WN_FOCUSED";
      
      public static const const_1175:String = "WN_LOCK";
      
      public static const const_342:String = "WN_CHILD_ADDED";
      
      public static const const_934:String = "WN_UNFOCUSED";
      
      public static const const_380:String = "WN_RELOCATED";
      
      public static const const_894:String = "WN_DEACTIVATE";
      
      public static const const_1308:String = "WN_CRETAE";
      
      public static const const_999:String = "WN_RESTORE";
      
      public static const const_336:String = "WN_ACTVATED";
      
      public static const const_1353:String = "WN_LOCKED";
      
      public static const const_475:String = "WN_SELECT";
      
      public static const const_958:String = "WN_MAXIMIZE";
      
      public static const const_826:String = "WN_OPEN";
      
      public static const const_548:String = "WN_UNSELECT";
      
      public static const const_1580:String = "WN_ARRANGE";
      
      public static const const_1347:String = "WN_UNLOCKED";
      
      public static const const_1532:String = "WN_UPDATED";
      
      public static const const_1023:String = "WN_ACTIVATE";
      
      public static const const_1325:String = "WN_UNLOCK";
      
      public static const const_1011:String = "WN_MAXIMIZED";
      
      public static const const_880:String = "WN_DESTROYED";
      
      public static const const_941:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1612,cancelable);
      }
   }
}
