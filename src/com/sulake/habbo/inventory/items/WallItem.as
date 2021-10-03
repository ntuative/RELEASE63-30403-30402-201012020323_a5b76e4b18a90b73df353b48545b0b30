package com.sulake.habbo.inventory.items
{
   public class WallItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _type:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var var_1417:Number;
      
      protected var var_1856:String;
      
      protected var var_2592:Boolean;
      
      protected var var_2590:Boolean;
      
      protected var var_1896:Boolean;
      
      protected var var_2589:Boolean;
      
      protected var var_887:Boolean;
      
      public function WallItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_1896 = param5;
         this.var_2590 = param6;
         this.var_2592 = param7;
         this.var_2589 = param8;
         this.var_1856 = param9;
         this.var_1417 = param10;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get extra() : Number
      {
         return this.var_1417;
      }
      
      public function get stuffData() : String
      {
         return this.var_1856;
      }
      
      public function set stuffData(param1:String) : void
      {
         this.var_1856 = param1;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2592;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2590;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_1896;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2589;
      }
      
      public function get locked() : Boolean
      {
         return this.var_887;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_887 = param1;
      }
   }
}
