package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2399:int;
      
      private var var_2398:int;
      
      private var var_2400:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2399 = param1;
         this.var_2398 = param2;
         this.var_2400 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2399,this.var_2398,this.var_2400];
      }
      
      public function dispose() : void
      {
      }
   }
}
