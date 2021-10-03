package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1483:int = 0;
      
      private var var_1484:int = 0;
      
      private var var_2202:int = 0;
      
      private var var_2201:Boolean = false;
      
      private var var_1963:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1483 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1484 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2202 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2201 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_1963 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1483;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1484;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2202;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2201;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_1963;
      }
   }
}
