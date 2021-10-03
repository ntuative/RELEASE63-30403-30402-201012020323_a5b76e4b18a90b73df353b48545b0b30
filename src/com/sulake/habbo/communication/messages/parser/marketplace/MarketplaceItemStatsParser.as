package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1937:int;
      
      private var var_2099:int;
      
      private var var_2100:int;
      
      private var _dayOffsets:Array;
      
      private var var_1552:Array;
      
      private var var_1553:Array;
      
      private var var_2101:int;
      
      private var var_2098:int;
      
      public function MarketplaceItemStatsParser()
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1937 = param1.readInteger();
         this.var_2099 = param1.readInteger();
         this.var_2100 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1552 = [];
         this.var_1553 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1552.push(param1.readInteger());
            this.var_1553.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2098 = param1.readInteger();
         this.var_2101 = param1.readInteger();
         return true;
      }
   }
}
