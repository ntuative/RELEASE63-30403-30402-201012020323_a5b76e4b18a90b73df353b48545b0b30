package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1525:int;
      
      private var var_1780:int;
      
      private var var_2052:int;
      
      private var var_1526:int;
      
      private var var_1229:int;
      
      private var var_2057:String = "";
      
      private var var_2077:String = "";
      
      private var var_2078:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1525 = param1.readInteger();
         this.var_2057 = param1.readString();
         this.var_1780 = param1.readInteger();
         this.var_2052 = param1.readInteger();
         this.var_1526 = param1.readInteger();
         this.var_1229 = param1.readInteger();
         this.var_2078 = param1.readInteger();
         this.var_2077 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1525;
      }
      
      public function get points() : int
      {
         return this.var_1780;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2052;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1526;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1229;
      }
      
      public function get badgeID() : String
      {
         return this.var_2057;
      }
      
      public function get achievementID() : int
      {
         return this.var_2078;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2077;
      }
   }
}
