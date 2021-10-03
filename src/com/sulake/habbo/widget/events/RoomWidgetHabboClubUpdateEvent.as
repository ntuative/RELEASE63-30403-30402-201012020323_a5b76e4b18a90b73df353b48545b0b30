package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_209:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2463:int = 0;
      
      private var var_2464:int = 0;
      
      private var var_2461:int = 0;
      
      private var var_2462:Boolean = false;
      
      private var var_2182:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_209,param6,param7);
         this.var_2463 = param1;
         this.var_2464 = param2;
         this.var_2461 = param3;
         this.var_2462 = param4;
         this.var_2182 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2463;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2464;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2461;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2462;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2182;
      }
   }
}
