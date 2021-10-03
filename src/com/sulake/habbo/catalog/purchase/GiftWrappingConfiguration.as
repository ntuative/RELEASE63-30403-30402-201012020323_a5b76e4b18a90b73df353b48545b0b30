package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1346:Boolean = false;
      
      private var var_1463:int;
      
      private var var_1497:Array;
      
      private var var_647:Array;
      
      private var var_646:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1346 = _loc2_.isWrappingEnabled;
         this.var_1463 = _loc2_.wrappingPrice;
         this.var_1497 = _loc2_.stuffTypes;
         this.var_647 = _loc2_.boxTypes;
         this.var_646 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1346;
      }
      
      public function get price() : int
      {
         return this.var_1463;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1497;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_647;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_646;
      }
   }
}
