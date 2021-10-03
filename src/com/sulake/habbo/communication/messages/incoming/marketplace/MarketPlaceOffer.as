package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_1938:int;
      
      private var var_1856:String;
      
      private var var_1463:int;
      
      private var var_346:int;
      
      private var var_1939:int = -1;
      
      private var var_1937:int;
      
      private var var_1462:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_1938 = param3;
         this.var_1856 = param4;
         this.var_1463 = param5;
         this.var_346 = param6;
         this.var_1939 = param7;
         this.var_1937 = param8;
         this.var_1462 = param9;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_1938;
      }
      
      public function get stuffData() : String
      {
         return this.var_1856;
      }
      
      public function get price() : int
      {
         return this.var_1463;
      }
      
      public function get status() : int
      {
         return this.var_346;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_1939;
      }
      
      public function get method_1() : int
      {
         return this.var_1937;
      }
      
      public function get offerCount() : int
      {
         return this.var_1462;
      }
   }
}
