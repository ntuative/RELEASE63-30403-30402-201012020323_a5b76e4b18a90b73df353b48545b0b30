package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_565:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_889:String = "inventory_effects";
      
      public static const const_1080:String = "inventory_badges";
      
      public static const const_1285:String = "inventory_clothes";
      
      public static const const_1417:String = "inventory_furniture";
       
      
      private var var_2207:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_565);
         this.var_2207 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2207;
      }
   }
}
