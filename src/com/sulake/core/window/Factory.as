package com.sulake.core.window
{
   import com.sulake.core.window.components.ActivatorController;
   import com.sulake.core.window.components.BackgroundController;
   import com.sulake.core.window.components.BitmapWrapperController;
   import com.sulake.core.window.components.BorderController;
   import com.sulake.core.window.components.ButtonController;
   import com.sulake.core.window.components.CanvasController;
   import com.sulake.core.window.components.CheckBoxController;
   import com.sulake.core.window.components.ContainerButtonController;
   import com.sulake.core.window.components.ContainerController;
   import com.sulake.core.window.components.DisplayObjectWrapperController;
   import com.sulake.core.window.components.DropMenuController;
   import com.sulake.core.window.components.DropMenuItemController;
   import com.sulake.core.window.components.FrameController;
   import com.sulake.core.window.components.HeaderController;
   import com.sulake.core.window.components.IconController;
   import com.sulake.core.window.components.InteractiveController;
   import com.sulake.core.window.components.ItemGridController;
   import com.sulake.core.window.components.ItemListController;
   import com.sulake.core.window.components.PasswordFieldController;
   import com.sulake.core.window.components.RadioButtonController;
   import com.sulake.core.window.components.RegionController;
   import com.sulake.core.window.components.ScalerController;
   import com.sulake.core.window.components.ScrollableItemListWindow;
   import com.sulake.core.window.components.ScrollbarController;
   import com.sulake.core.window.components.ScrollbarLiftController;
   import com.sulake.core.window.components.SelectableButtonController;
   import com.sulake.core.window.components.SelectorController;
   import com.sulake.core.window.components.TabButtonController;
   import com.sulake.core.window.components.TabContainerButtonController;
   import com.sulake.core.window.components.TabContextController;
   import com.sulake.core.window.components.TabSelectorController;
   import com.sulake.core.window.components.TextController;
   import com.sulake.core.window.components.TextFieldController;
   import com.sulake.core.window.components.ToolTipController;
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class Factory
   {
       
      
      protected var var_12:Dictionary;
      
      public function Factory()
      {
         super();
         var_12 = new Dictionary();
         var_12["null"] = WindowController;
         var_12["null"] = ActivatorController;
         var_12["null"] = BackgroundController;
         var_12["null"] = BorderController;
         var_12["null"] = ButtonController;
         var_12["null"] = ButtonController;
         var_12["null"] = SelectableButtonController;
         var_12["null"] = SelectableButtonController;
         var_12["null"] = SelectableButtonController;
         var_12["null"] = BitmapWrapperController;
         var_12["null"] = CanvasController;
         var_12["null"] = CheckBoxController;
         var_12["null"] = ContainerController;
         var_12["null"] = ContainerButtonController;
         var_12["null"] = InteractiveController;
         var_12["null"] = DisplayObjectWrapperController;
         var_12["null"] = ScrollbarLiftController;
         var_12["null"] = DropMenuController;
         var_12["null"] = DropMenuItemController;
         var_12["null"] = FrameController;
         var_12["null"] = HeaderController;
         var_12["null"] = IconController;
         var_12["null"] = ItemListController;
         var_12["null"] = ItemListController;
         var_12["null"] = ItemListController;
         var_12["null"] = ItemGridController;
         var_12["null"] = ItemGridController;
         var_12["null"] = ItemGridController;
         var_12["null"] = PasswordFieldController;
         var_12["null"] = RadioButtonController;
         var_12["null"] = RegionController;
         var_12["null"] = ScalerController;
         var_12["null"] = ScrollbarController;
         var_12["null"] = ScrollbarController;
         var_12["null"] = ButtonController;
         var_12["null"] = ButtonController;
         var_12["null"] = ButtonController;
         var_12["null"] = ButtonController;
         var_12["null"] = ScrollbarLiftController;
         var_12["null"] = ScrollbarLiftController;
         var_12["null"] = WindowController;
         var_12["null"] = WindowController;
         var_12["null"] = ScrollableItemListWindow;
         var_12["null"] = SelectorController;
         var_12["null"] = TabSelectorController;
         var_12["null"] = TabButtonController;
         var_12["null"] = TabContainerButtonController;
         var_12["null"] = ContainerController;
         var_12["null"] = TabContextController;
         var_12["null"] = TabSelectorController;
         var_12["null"] = TextController;
         var_12["null"] = TextFieldController;
         var_12["null"] = ToolTipController;
      }
      
      public function getWindowClassByType(param1:uint) : Class
      {
         return var_12[param1];
      }
   }
}
