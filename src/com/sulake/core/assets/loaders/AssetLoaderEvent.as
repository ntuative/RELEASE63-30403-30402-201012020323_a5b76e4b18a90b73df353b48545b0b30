package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_30:String = "AssetLoaderEventComplete";
      
      public static const const_1025:String = "AssetLoaderEventProgress";
      
      public static const const_975:String = "AssetLoaderEventUnload";
      
      public static const const_930:String = "AssetLoaderEventStatus";
      
      public static const const_43:String = "AssetLoaderEventError";
      
      public static const const_883:String = "AssetLoaderEventOpen";
       
      
      private var var_346:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_346 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_346;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_346);
      }
   }
}
