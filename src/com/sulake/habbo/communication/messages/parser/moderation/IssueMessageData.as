package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_151:int = 1;
      
      public static const const_354:int = 2;
      
      public static const const_1503:int = 3;
       
      
      private var var_2123:int;
      
      private var _state:int;
      
      private var var_1272:int;
      
      private var var_2331:int;
      
      private var var_1609:int;
      
      private var var_2327:int;
      
      private var var_2328:int = 0;
      
      private var var_2324:int;
      
      private var var_2332:String;
      
      private var var_1203:int;
      
      private var var_1489:String;
      
      private var var_1986:int;
      
      private var var_2325:String;
      
      private var _message:String;
      
      private var var_1912:int;
      
      private var var_894:String;
      
      private var var_1760:int;
      
      private var var_2329:String;
      
      private var var_341:int;
      
      private var var_2330:String;
      
      private var var_2326:String;
      
      private var var_2137:int;
      
      private var var_2032:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function get issueId() : int
      {
         return this.var_2123;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get categoryId() : int
      {
         return this.var_1272;
      }
      
      public function get reportedCategoryId() : int
      {
         return this.var_2331;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1609;
      }
      
      public function get priority() : int
      {
         return this.var_2327 + this.var_2328;
      }
      
      public function get reporterUserId() : int
      {
         return this.var_2324;
      }
      
      public function get reporterUserName() : String
      {
         return this.var_2332;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1203;
      }
      
      public function get reportedUserName() : String
      {
         return this.var_1489;
      }
      
      public function get pickerUserId() : int
      {
         return this.var_1986;
      }
      
      public function get pickerUserName() : String
      {
         return this.var_2325;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_1912;
      }
      
      public function get roomName() : String
      {
         return this.var_894;
      }
      
      public function get roomType() : int
      {
         return this.var_1760;
      }
      
      public function get flatType() : String
      {
         return this.var_2329;
      }
      
      public function get flatId() : int
      {
         return this.var_341;
      }
      
      public function get flatOwnerName() : String
      {
         return this.var_2330;
      }
      
      public function get roomResources() : String
      {
         return this.var_2326;
      }
      
      public function get unitPort() : int
      {
         return this.var_2137;
      }
      
      public function get worldId() : int
      {
         return this.var_2032;
      }
      
      public function set issueId(param1:int) : void
      {
         this.var_2123 = param1;
      }
      
      public function set state(param1:int) : void
      {
         this._state = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1272 = param1;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         this.var_2331 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         this.var_1609 = param1;
      }
      
      public function set priority(param1:int) : void
      {
         this.var_2327 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         this.var_2328 = param1;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         this.var_2324 = param1;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         this.var_2332 = param1;
      }
      
      public function set reportedUserId(param1:int) : void
      {
         this.var_1203 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         this.var_1489 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         this.var_1986 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         this.var_2325 = param1;
      }
      
      public function set message(param1:String) : void
      {
         this._message = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         this.var_1912 = param1;
      }
      
      public function set roomName(param1:String) : void
      {
         this.var_894 = param1;
      }
      
      public function set roomType(param1:int) : void
      {
         this.var_1760 = param1;
      }
      
      public function set flatType(param1:String) : void
      {
         this.var_2329 = param1;
      }
      
      public function set flatId(param1:int) : void
      {
         this.var_341 = param1;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         this.var_2330 = param1;
      }
      
      public function set roomResources(param1:String) : void
      {
         this.var_2326 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         this.var_2137 = param1;
      }
      
      public function set worldId(param1:int) : void
      {
         this.var_2032 = param1;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - this.var_1609) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
   }
}
