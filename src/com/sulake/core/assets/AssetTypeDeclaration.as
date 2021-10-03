package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2428:String;
      
      private var var_2427:Class;
      
      private var var_2426:Class;
      
      private var var_1739:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2428 = param1;
         this.var_2427 = param2;
         this.var_2426 = param3;
         if(rest == null)
         {
            this.var_1739 = new Array();
         }
         else
         {
            this.var_1739 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2428;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2427;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2426;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1739;
      }
   }
}
