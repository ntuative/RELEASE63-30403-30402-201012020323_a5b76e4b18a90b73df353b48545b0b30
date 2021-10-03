package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1899:int;
      
      private var var_1224:String;
      
      private var var_1897:int;
      
      private var var_1900:int;
      
      private var _category:int;
      
      private var var_1856:String;
      
      private var var_1417:int;
      
      private var var_1893:int;
      
      private var var_1895:int;
      
      private var var_1894:int;
      
      private var var_1898:int;
      
      private var var_1896:Boolean;
      
      private var var_2646:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_1899 = param1;
         this.var_1224 = param2;
         this.var_1897 = param3;
         this.var_1900 = param4;
         this._category = param5;
         this.var_1856 = param6;
         this.var_1417 = param7;
         this.var_1893 = param8;
         this.var_1895 = param9;
         this.var_1894 = param10;
         this.var_1898 = param11;
         this.var_1896 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_1899;
      }
      
      public function get itemType() : String
      {
         return this.var_1224;
      }
      
      public function get roomItemID() : int
      {
         return this.var_1897;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_1900;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1856;
      }
      
      public function get extra() : int
      {
         return this.var_1417;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_1893;
      }
      
      public function get creationDay() : int
      {
         return this.var_1895;
      }
      
      public function get creationMonth() : int
      {
         return this.var_1894;
      }
      
      public function get creationYear() : int
      {
         return this.var_1898;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_1896;
      }
      
      public function get songID() : int
      {
         return this.var_1417;
      }
   }
}
