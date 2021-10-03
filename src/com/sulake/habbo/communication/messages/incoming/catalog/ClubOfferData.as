package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1510:String;
      
      private var var_1463:int;
      
      private var var_2081:Boolean;
      
      private var var_2082:Boolean;
      
      private var var_2086:int;
      
      private var var_2084:int;
      
      private var var_2083:int;
      
      private var var_2079:int;
      
      private var var_2080:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1510 = param1.readString();
         this.var_1463 = param1.readInteger();
         this.var_2081 = param1.readBoolean();
         this.var_2082 = param1.readBoolean();
         this.var_2086 = param1.readInteger();
         this.var_2084 = param1.readInteger();
         this.var_2083 = param1.readInteger();
         this.var_2079 = param1.readInteger();
         this.var_2080 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1510;
      }
      
      public function get price() : int
      {
         return this.var_1463;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2081;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2082;
      }
      
      public function get periods() : int
      {
         return this.var_2086;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2084;
      }
      
      public function get year() : int
      {
         return this.var_2083;
      }
      
      public function get month() : int
      {
         return this.var_2079;
      }
      
      public function get day() : int
      {
         return this.var_2080;
      }
   }
}
