package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_77:String = "i";
      
      public static const const_82:String = "s";
      
      public static const const_241:String = "e";
       
      
      private var var_1554:String;
      
      private var var_2364:int;
      
      private var var_1234:String;
      
      private var var_1235:int;
      
      private var var_1557:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1554 = param1.readString();
         this.var_2364 = param1.readInteger();
         this.var_1234 = param1.readString();
         this.var_1235 = param1.readInteger();
         this.var_1557 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1554;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2364;
      }
      
      public function get extraParam() : String
      {
         return this.var_1234;
      }
      
      public function get productCount() : int
      {
         return this.var_1235;
      }
      
      public function get expiration() : int
      {
         return this.var_1557;
      }
   }
}
