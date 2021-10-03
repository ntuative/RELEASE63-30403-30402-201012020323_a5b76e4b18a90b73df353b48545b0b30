package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1672:int;
      
      private var var_1525:int;
      
      private var var_1988:int;
      
      private var var_1989:int;
      
      private var var_1994:int;
      
      private var _energy:int;
      
      private var var_1996:int;
      
      private var _nutrition:int;
      
      private var var_1991:int;
      
      private var var_1995:int;
      
      private var _ownerName:String;
      
      private var var_2147:int;
      
      private var var_1987:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1672;
      }
      
      public function get level() : int
      {
         return this.var_1525;
      }
      
      public function get levelMax() : int
      {
         return this.var_1988;
      }
      
      public function get experience() : int
      {
         return this.var_1989;
      }
      
      public function get experienceMax() : int
      {
         return this.var_1994;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_1996;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_1991;
      }
      
      public function get ownerId() : int
      {
         return this.var_1995;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2147;
      }
      
      public function get age() : int
      {
         return this.var_1987;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1672 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1525 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_1988 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_1989 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_1994 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_1996 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_1991 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_1995 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2147 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_1987 = param1;
      }
   }
}
