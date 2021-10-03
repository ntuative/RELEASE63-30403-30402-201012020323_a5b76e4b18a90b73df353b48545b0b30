package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_988:String = "select_outfit";
       
      
      private var var_2132:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_988);
         this.var_2132 = param1;
      }
      
      public function get outfitId() : int
      {
         return this.var_2132;
      }
   }
}
