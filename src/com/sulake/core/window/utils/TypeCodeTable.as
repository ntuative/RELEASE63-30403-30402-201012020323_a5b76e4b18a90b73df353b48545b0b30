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
         param1["background"] = const_727;
         param1["bitmap"] = const_628;
         param1["border"] = const_750;
         param1["border_notify"] = const_1288;
         param1["button"] = const_491;
         param1["button_thick"] = const_747;
         param1["button_icon"] = const_1404;
         param1["button_group_left"] = const_778;
         param1["button_group_center"] = const_793;
         param1["button_group_right"] = const_663;
         param1["canvas"] = const_686;
         param1["checkbox"] = const_592;
         param1["closebutton"] = const_1083;
         param1["container"] = const_367;
         param1["container_button"] = const_744;
         param1["display_object_wrapper"] = const_812;
         param1["dropmenu"] = const_436;
         param1["dropmenu_item"] = const_537;
         param1["frame"] = const_326;
         param1["frame_notify"] = const_1380;
         param1["header"] = const_618;
         param1["icon"] = const_1081;
         param1["itemgrid"] = const_981;
         param1["itemgrid_horizontal"] = const_504;
         param1["itemgrid_vertical"] = const_605;
         param1["itemlist"] = const_958;
         param1["itemlist_horizontal"] = const_347;
         param1["itemlist_vertical"] = const_351;
         param1["maximizebox"] = WINDOW_TYPE_MAXIMIZEBOX;
         param1["menu"] = const_1349;
         param1["menu_item"] = const_1332;
         param1["submenu"] = const_990;
         param1["minimizebox"] = const_1416;
         param1["notify"] = const_1324;
         param1["PetData"] = const_572;
         param1["password"] = const_707;
         param1["radiobutton"] = const_712;
         param1["region"] = const_694;
         param1["restorebox"] = const_1333;
         param1["scaler"] = const_729;
         param1["scaler_horizontal"] = const_1352;
         param1["scaler_vertical"] = const_1435;
         param1["scrollbar_horizontal"] = const_510;
         param1["scrollbar_vertical"] = const_736;
         param1["scrollbar_slider_button_up"] = const_1044;
         param1["scrollbar_slider_button_down"] = const_1064;
         param1["scrollbar_slider_button_left"] = const_893;
         param1["scrollbar_slider_button_right"] = const_906;
         param1["scrollbar_slider_bar_horizontal"] = const_1017;
         param1["scrollbar_slider_bar_vertical"] = const_1066;
         param1["scrollbar_slider_track_horizontal"] = const_1074;
         param1["scrollbar_slider_track_vertical"] = const_1104;
         param1["scrollable_itemlist"] = const_1394;
         param1["scrollable_itemlist_vertical"] = const_450;
         param1["scrollable_itemlist_horizontal"] = const_1056;
         param1["selector"] = const_573;
         param1["selector_list"] = const_649;
         param1["submenu"] = const_990;
         param1["tab_button"] = const_674;
         param1["tab_container_button"] = const_1069;
         param1["tab_context"] = const_378;
         param1["tab_content"] = const_925;
         param1["tab_selector"] = const_669;
         param1["text"] = const_738;
         param1["input"] = const_630;
         param1["toolbar"] = const_1443;
         param1["tooltip"] = const_379;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
