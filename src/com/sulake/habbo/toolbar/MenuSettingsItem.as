package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1884:String;
      
      private var var_1883:Array;
      
      private var var_1885:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_1884 = param1;
         this.var_1883 = param2;
         this.var_1885 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_1884;
      }
      
      public function get yieldList() : Array
      {
         return this.var_1883;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_1885;
      }
   }
}
