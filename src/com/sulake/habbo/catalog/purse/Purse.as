package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_497:int = 0;
       
      
      private var var_1965:int = 0;
      
      private var var_1196:Dictionary;
      
      private var var_1483:int = 0;
      
      private var var_1484:int = 0;
      
      private var var_1963:Boolean = false;
      
      private var var_1964:int = 0;
      
      private var var_1966:int = 0;
      
      public function Purse()
      {
         this.var_1196 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1965;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1965 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1483;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1483 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1484;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1484 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1483 > 0 || this.var_1484 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_1963;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_1963 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_1964;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_1964 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_1966;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_1966 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1196;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1196 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1196[param1];
      }
   }
}
