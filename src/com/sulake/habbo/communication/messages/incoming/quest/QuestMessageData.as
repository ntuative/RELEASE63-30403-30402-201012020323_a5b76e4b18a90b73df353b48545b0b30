package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var _id:int;
      
      private var var_346:int;
      
      private var _type:String;
      
      private var var_1759:String;
      
      private var var_1757:int;
      
      private var var_1758:String;
      
      private var _localizationCode:String;
      
      private var var_1756:String;
      
      private var var_2449:uint;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this.var_346 = param1.readInteger();
         this._type = param1.readString();
         this.var_1759 = param1.readString();
         this.var_1757 = param1.readInteger();
         this.var_1758 = param1.readString();
         this._localizationCode = param1.readString();
         var _loc2_:String = "";
         var _loc3_:int = this._localizationCode.length - 1;
         while(_loc3_ > 0 && this.isNumber(this._localizationCode.charAt(_loc3_)))
         {
            _loc2_ = this._localizationCode.charAt(_loc3_) + _loc2_;
            _loc3_--;
         }
         if(_loc3_ > 0)
         {
            this.var_1756 = this._localizationCode.substring(0,_loc3_ + 1);
         }
         else
         {
            this.var_1756 = this._localizationCode;
         }
         this.var_2449 = uint(_loc2_);
      }
      
      private function getNumber(param1:String) : int
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ - 48;
      }
      
      private function isNumber(param1:String) : Boolean
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ >= 48 && _loc2_ <= 57;
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this.var_346 = 0;
         this._type = "";
         this.var_1759 = "";
         this.var_1757 = 0;
         this.var_1758 = "";
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get status() : int
      {
         return this.var_346;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get roomItemTypeName() : String
      {
         return this.var_1759;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1757;
      }
      
      public function get endDateTimeStamp() : String
      {
         return this.var_1758;
      }
      
      public function get localizationCode() : String
      {
         return this._localizationCode;
      }
      
      public function get sortCode() : uint
      {
         return this.var_2449;
      }
      
      public function get localizationPrefix() : String
      {
         return this.var_1756;
      }
   }
}
