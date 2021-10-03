package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1942:int;
      
      private var var_2349:int;
      
      private var var_2348:String;
      
      private var var_2347:String;
      
      private var var_2346:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_1942 = param1;
         this.var_2349 = param2;
         this.var_2348 = param3;
         this.var_2347 = param4;
      }
      
      public function get id() : int
      {
         return this.var_1942;
      }
      
      public function get length() : int
      {
         return this.var_2349;
      }
      
      public function get name() : String
      {
         return this.var_2348;
      }
      
      public function get creator() : String
      {
         return this.var_2347;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2346;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2346 = param1;
      }
   }
}
