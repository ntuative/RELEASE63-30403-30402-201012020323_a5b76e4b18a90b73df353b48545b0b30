package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2035:Number;
      
      private var var_2036:Number;
      
      private var var_800:Number;
      
      private var var_801:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2035 = param1;
         this.var_2036 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_800 = param1;
         this.var_801 = 0;
      }
      
      public function update() : void
      {
         this.var_800 += this.var_2036;
         this.var_801 += this.var_800;
         if(this.var_801 > 0)
         {
            this.var_801 = 0;
            this.var_800 = this.var_2035 * -1 * this.var_800;
         }
      }
      
      public function get location() : Number
      {
         return this.var_801;
      }
   }
}
