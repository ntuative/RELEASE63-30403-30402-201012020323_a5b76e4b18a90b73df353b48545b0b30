package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2048:Boolean;
      
      private var var_2047:int;
      
      private var var_1497:Array;
      
      private var var_647:Array;
      
      private var var_646:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2048;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2047;
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1497 = [];
         this.var_647 = [];
         this.var_646 = [];
         this.var_2048 = param1.readBoolean();
         this.var_2047 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1497.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_647.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_646.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
