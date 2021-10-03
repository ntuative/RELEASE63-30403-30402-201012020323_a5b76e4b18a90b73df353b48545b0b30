package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1984:int;
      
      private var var_1224:String;
      
      private var _objId:int;
      
      private var var_1545:int;
      
      private var _category:int;
      
      private var var_1856:String;
      
      private var var_2530:Boolean;
      
      private var var_2529:Boolean;
      
      private var var_2528:Boolean;
      
      private var var_2404:Boolean;
      
      private var var_2313:int;
      
      private var var_1417:int;
      
      private var var_1755:String = "";
      
      private var var_1942:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_1984 = param1;
         this.var_1224 = param2;
         this._objId = param3;
         this.var_1545 = param4;
         this._category = param5;
         this.var_1856 = param6;
         this.var_2530 = param7;
         this.var_2529 = param8;
         this.var_2528 = param9;
         this.var_2404 = param10;
         this.var_2313 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1755 = param1;
         this.var_1417 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_1984;
      }
      
      public function get itemType() : String
      {
         return this.var_1224;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1545;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1856;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2530;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2529;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2528;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2404;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2313;
      }
      
      public function get slotId() : String
      {
         return this.var_1755;
      }
      
      public function get songId() : int
      {
         return this.var_1942;
      }
      
      public function get extra() : int
      {
         return this.var_1417;
      }
   }
}
