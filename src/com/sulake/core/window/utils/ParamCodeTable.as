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
         param1["PetData"] = const_161;
         param1["bound_to_parent_rect"] = const_91;
         param1["child_window"] = const_1089;
         param1["embedded_controller"] = const_1072;
         param1["resize_to_accommodate_children"] = const_65;
         param1["input_event_processor"] = const_27;
         param1["internal_event_handling"] = const_772;
         param1["mouse_dragging_target"] = const_201;
         param1["mouse_dragging_trigger"] = const_346;
         param1["mouse_scaling_target"] = const_304;
         param1["mouse_scaling_trigger"] = const_456;
         param1["horizontal_mouse_scaling_trigger"] = const_210;
         param1["vertical_mouse_scaling_trigger"] = const_199;
         param1["observe_parent_input_events"] = const_921;
         param1["optimize_region_to_layout_size"] = const_532;
         param1["parent_window"] = const_905;
         param1["relative_horizontal_scale_center"] = const_167;
         param1["relative_horizontal_scale_fixed"] = const_128;
         param1["relative_horizontal_scale_move"] = const_373;
         param1["relative_horizontal_scale_strech"] = WINDOW_PARAM_RELATIVE_HORIZONTAL_SCALE_STRECH;
         param1["relative_scale_center"] = const_1023;
         param1["relative_scale_fixed"] = const_563;
         param1["relative_scale_move"] = const_1010;
         param1["relative_scale_strech"] = const_946;
         param1["relative_vertical_scale_center"] = const_183;
         param1["relative_vertical_scale_fixed"] = const_140;
         param1["relative_vertical_scale_move"] = const_315;
         param1["relative_vertical_scale_strech"] = const_348;
         param1["on_resize_align_left"] = const_596;
         param1["on_resize_align_right"] = const_414;
         param1["on_resize_align_center"] = const_499;
         param1["on_resize_align_top"] = const_682;
         param1["on_resize_align_bottom"] = const_429;
         param1["on_resize_align_middle"] = const_520;
         param1["on_accommodate_align_left"] = const_971;
         param1["on_accommodate_align_right"] = const_531;
         param1["on_accommodate_align_center"] = const_745;
         param1["on_accommodate_align_top"] = const_931;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_725;
         param1["route_input_events_to_parent"] = const_462;
         param1["use_parent_graphic_context"] = const_31;
         param1["draggable_with_mouse"] = const_1085;
         param1["scalable_with_mouse"] = const_969;
         param1["reflect_horizontal_resize_to_parent"] = const_451;
         param1["reflect_vertical_resize_to_parent"] = const_514;
         param1["reflect_resize_to_parent"] = const_293;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
