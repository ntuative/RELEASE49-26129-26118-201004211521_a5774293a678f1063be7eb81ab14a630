package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_730;
         param1["bitmap"] = const_631;
         param1["border"] = const_572;
         param1["border_notify"] = const_1215;
         param1["button"] = const_457;
         param1["button_thick"] = const_704;
         param1["button_icon"] = const_1150;
         param1["button_group_left"] = const_666;
         param1["button_group_center"] = const_643;
         param1["button_group_right"] = const_701;
         param1["canvas"] = const_685;
         param1["checkbox"] = const_513;
         param1["closebutton"] = const_860;
         param1["container"] = const_299;
         param1["container_button"] = const_560;
         param1["display_object_wrapper"] = const_570;
         param1["dropmenu"] = const_396;
         param1["dropmenu_item"] = const_437;
         param1["frame"] = const_339;
         param1["frame_notify"] = const_1314;
         param1["header"] = const_640;
         param1["icon"] = const_895;
         param1["itemgrid"] = const_935;
         param1["itemgrid_horizontal"] = const_420;
         param1["itemgrid_vertical"] = const_554;
         param1["itemlist"] = const_864;
         param1["itemlist_horizontal"] = const_340;
         param1["itemlist_vertical"] = const_315;
         param1["maximizebox"] = const_1351;
         param1["menu"] = const_1391;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_861;
         param1["minimizebox"] = const_1195;
         param1["notify"] = const_1284;
         param1["null"] = const_647;
         param1["password"] = const_507;
         param1["radiobutton"] = const_556;
         param1["region"] = const_479;
         param1["restorebox"] = const_1198;
         param1["scaler"] = const_619;
         param1["scaler_horizontal"] = const_1142;
         param1["scaler_vertical"] = const_1232;
         param1["scrollbar_horizontal"] = const_429;
         param1["scrollbar_vertical"] = const_726;
         param1["scrollbar_slider_button_up"] = const_1026;
         param1["scrollbar_slider_button_down"] = const_846;
         param1["scrollbar_slider_button_left"] = const_1000;
         param1["scrollbar_slider_button_right"] = const_946;
         param1["scrollbar_slider_bar_horizontal"] = const_815;
         param1["scrollbar_slider_bar_vertical"] = const_1005;
         param1["scrollbar_slider_track_horizontal"] = const_897;
         param1["scrollbar_slider_track_vertical"] = const_923;
         param1["scrollable_itemlist"] = const_1207;
         param1["scrollable_itemlist_vertical"] = const_425;
         param1["scrollable_itemlist_horizontal"] = const_950;
         param1["selector"] = const_573;
         param1["selector_list"] = const_591;
         param1["submenu"] = const_861;
         param1["tab_button"] = const_731;
         param1["tab_container_button"] = const_856;
         param1["tab_context"] = const_357;
         param1["tab_content"] = const_968;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_566;
         param1["input"] = const_697;
         param1["toolbar"] = const_1266;
         param1["tooltip"] = const_297;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
