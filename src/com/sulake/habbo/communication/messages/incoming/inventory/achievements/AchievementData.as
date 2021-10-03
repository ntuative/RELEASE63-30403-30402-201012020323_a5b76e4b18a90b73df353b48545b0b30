package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1525:int;
      
      private var var_262:String;
      
      private var var_2466:int;
      
      private var var_2052:int;
      
      private var var_1526:int;
      
      private var var_2465:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1525 = param1.readInteger();
         this.var_262 = param1.readString();
         this.var_2466 = param1.readInteger();
         this.var_2052 = param1.readInteger();
         this.var_1526 = param1.readInteger();
         this.var_2465 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_262;
      }
      
      public function get level() : int
      {
         return this.var_1525;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2466;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2052;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1526;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2465;
      }
   }
}
