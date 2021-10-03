package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_125;
         param1["bound_to_parent_rect"] = const_90;
         param1["child_window"] = const_806;
         param1["embedded_controller"] = const_335;
         param1["resize_to_accommodate_children"] = const_66;
         param1["input_event_processor"] = const_50;
         param1["internal_event_handling"] = const_707;
         param1["mouse_dragging_target"] = const_201;
         param1["mouse_dragging_trigger"] = const_334;
         param1["mouse_scaling_target"] = const_245;
         param1["mouse_scaling_trigger"] = const_459;
         param1["horizontal_mouse_scaling_trigger"] = const_234;
         param1["vertical_mouse_scaling_trigger"] = const_202;
         param1["observe_parent_input_events"] = const_937;
         param1["optimize_region_to_layout_size"] = const_473;
         param1["parent_window"] = const_1019;
         param1["relative_horizontal_scale_center"] = const_156;
         param1["relative_horizontal_scale_fixed"] = const_124;
         param1["relative_horizontal_scale_move"] = const_305;
         param1["relative_horizontal_scale_strech"] = const_239;
         param1["relative_scale_center"] = const_908;
         param1["relative_scale_fixed"] = const_699;
         param1["relative_scale_move"] = const_916;
         param1["relative_scale_strech"] = const_816;
         param1["relative_vertical_scale_center"] = const_173;
         param1["relative_vertical_scale_fixed"] = const_128;
         param1["relative_vertical_scale_move"] = const_325;
         param1["relative_vertical_scale_strech"] = const_240;
         param1["on_resize_align_left"] = const_748;
         param1["on_resize_align_right"] = const_482;
         param1["on_resize_align_center"] = const_436;
         param1["on_resize_align_top"] = const_545;
         param1["on_resize_align_bottom"] = const_362;
         param1["on_resize_align_middle"] = const_433;
         param1["on_accommodate_align_left"] = const_809;
         param1["on_accommodate_align_right"] = const_438;
         param1["on_accommodate_align_center"] = const_657;
         param1["on_accommodate_align_top"] = const_813;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_648;
         param1["route_input_events_to_parent"] = const_455;
         param1["use_parent_graphic_context"] = const_35;
         param1["draggable_with_mouse"] = const_819;
         param1["scalable_with_mouse"] = const_970;
         param1["reflect_horizontal_resize_to_parent"] = const_478;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_251;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
