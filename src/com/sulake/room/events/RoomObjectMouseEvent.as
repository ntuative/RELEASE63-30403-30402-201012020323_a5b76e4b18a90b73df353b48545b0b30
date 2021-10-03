package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_222:String = "ROE_MOUSE_CLICK";
      
      public static const const_1675:String = "ROE_MOUSE_ENTER";
      
      public static const const_475:String = "ROE_MOUSE_MOVE";
      
      public static const const_1746:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1641:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_530:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1558:String = "";
      
      private var var_2007:Boolean;
      
      private var var_2013:Boolean;
      
      private var var_2009:Boolean;
      
      private var var_2010:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1558 = param2;
         this.var_2007 = param5;
         this.var_2013 = param6;
         this.var_2009 = param7;
         this.var_2010 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1558;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2007;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2013;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2009;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2010;
      }
   }
}
