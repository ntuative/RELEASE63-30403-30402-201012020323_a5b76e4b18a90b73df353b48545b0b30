package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1937:int;
      
      private var var_2099:int;
      
      private var var_2100:int;
      
      private var _dayOffsets:Array;
      
      private var var_1552:Array;
      
      private var var_1553:Array;
      
      private var var_2101:int;
      
      private var var_2098:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get method_1() : int
      {
         return this.var_1937;
      }
      
      public function get offerCount() : int
      {
         return this.var_2099;
      }
      
      public function get historyLength() : int
      {
         return this.var_2100;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1552;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1553;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2101;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2098;
      }
      
      public function set method_1(param1:int) : void
      {
         this.var_1937 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2099 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2100 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1552 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1553 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2101 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2098 = param1;
      }
   }
}
