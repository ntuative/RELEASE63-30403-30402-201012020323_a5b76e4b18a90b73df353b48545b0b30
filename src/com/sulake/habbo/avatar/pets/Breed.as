package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var _id:int;
      
      private var var_2401:String = "";
      
      private var var_889:String;
      
      private var var_1312:Boolean;
      
      private var var_2404:Boolean = true;
      
      private var var_2402:int;
      
      private var var_2403:String;
      
      public function Breed(param1:XML)
      {
         super(param1);
         this._id = parseInt(param1.@id);
         this.var_2402 = parseInt(param1.@pattern);
         this.var_889 = String(param1.@gender);
         this.var_1312 = Boolean(parseInt(param1.@colorable));
         this.var_2401 = String(param1.@localizationKey);
         if(param1.@sellable && param1.@sellable == "0")
         {
            this.var_2404 = false;
         }
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get gender() : String
      {
         return this.var_889;
      }
      
      public function get isColorable() : Boolean
      {
         return this.var_1312;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2404;
      }
      
      public function get patternId() : int
      {
         return this.var_2402;
      }
      
      public function get avatarFigureString() : String
      {
         return this.var_2403;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         this.var_2403 = param1;
      }
      
      public function get localizationKey() : String
      {
         return this.var_2401;
      }
   }
}
