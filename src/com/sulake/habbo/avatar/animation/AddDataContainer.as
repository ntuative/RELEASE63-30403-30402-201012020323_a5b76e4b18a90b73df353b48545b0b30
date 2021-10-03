package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var _id:String;
      
      private var var_1731:String;
      
      private var var_1057:String;
      
      private var var_1616:String;
      
      private var var_720:Number = 1;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         this._id = String(param1.@id);
         this.var_1731 = String(param1.@align);
         this.var_1057 = String(param1.@base);
         this.var_1616 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            this.var_720 = Number(_loc2_);
            if(this.var_720 > 1)
            {
               this.var_720 /= 100;
            }
         }
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function get align() : String
      {
         return this.var_1731;
      }
      
      public function get base() : String
      {
         return this.var_1057;
      }
      
      public function get ink() : String
      {
         return this.var_1616;
      }
      
      public function get blend() : Number
      {
         return this.var_720;
      }
      
      public function get isBlended() : Boolean
      {
         return this.var_720 != 1;
      }
   }
}
