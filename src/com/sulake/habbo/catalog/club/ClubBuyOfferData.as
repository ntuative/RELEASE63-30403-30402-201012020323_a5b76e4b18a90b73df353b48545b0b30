package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1510:String;
      
      private var var_1463:int;
      
      private var var_2081:Boolean;
      
      private var var_2082:Boolean;
      
      private var var_2086:int;
      
      private var var_2084:int;
      
      private var var_357:ICatalogPage;
      
      private var var_2083:int;
      
      private var var_2079:int;
      
      private var var_2080:int;
      
      private var var_2085:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1510 = param2;
         this.var_1463 = param3;
         this.var_2081 = param4;
         this.var_2082 = param5;
         this.var_2086 = param6;
         this.var_2084 = param7;
         this.var_2083 = param8;
         this.var_2079 = param9;
         this.var_2080 = param10;
      }
      
      public function dispose() : void
      {
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
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_497;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1463;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_357;
      }
      
      public function get priceType() : String
      {
         return Offer.const_432;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1510;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_357 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2085;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2085 = param1;
      }
   }
}
