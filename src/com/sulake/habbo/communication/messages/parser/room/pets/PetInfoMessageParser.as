package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1672:int;
      
      private var _name:String;
      
      private var var_1525:int;
      
      private var var_2288:int;
      
      private var var_1989:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_586:String;
      
      private var var_2290:int;
      
      private var var_2291:int;
      
      private var var_2289:int;
      
      private var var_2147:int;
      
      private var var_1995:int;
      
      private var _ownerName:String;
      
      private var var_1987:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1672;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1525;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2288;
      }
      
      public function get experience() : int
      {
         return this.var_1989;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_586;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2290;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2291;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2289;
      }
      
      public function get respect() : int
      {
         return this.var_2147;
      }
      
      public function get ownerId() : int
      {
         return this.var_1995;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_1987;
      }
      
      public function flush() : Boolean
      {
         this.var_1672 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1672 = param1.readInteger();
         this._name = param1.readString();
         this.var_1525 = param1.readInteger();
         this.var_2288 = param1.readInteger();
         this.var_1989 = param1.readInteger();
         this.var_2290 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2291 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2289 = param1.readInteger();
         this.var_586 = param1.readString();
         this.var_2147 = param1.readInteger();
         this.var_1995 = param1.readInteger();
         this.var_1987 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
