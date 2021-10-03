package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_625:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1015:String = "RWOCM_CLUB_MAIN";
       
      
      private var var_2321:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_625);
         this.var_2321 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2321;
      }
   }
}
