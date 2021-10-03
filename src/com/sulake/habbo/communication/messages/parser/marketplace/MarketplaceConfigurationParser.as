package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1346:Boolean;
      
      private var var_2367:int;
      
      private var var_1728:int;
      
      private var var_1729:int;
      
      private var var_2369:int;
      
      private var var_2366:int;
      
      private var var_2368:int;
      
      private var var_2231:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1346;
      }
      
      public function get commission() : int
      {
         return this.var_2367;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1728;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1729;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2366;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2369;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2368;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2231;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1346 = param1.readBoolean();
         this.var_2367 = param1.readInteger();
         this.var_1728 = param1.readInteger();
         this.var_1729 = param1.readInteger();
         this.var_2366 = param1.readInteger();
         this.var_2369 = param1.readInteger();
         this.var_2368 = param1.readInteger();
         this.var_2231 = param1.readInteger();
         return true;
      }
   }
}
