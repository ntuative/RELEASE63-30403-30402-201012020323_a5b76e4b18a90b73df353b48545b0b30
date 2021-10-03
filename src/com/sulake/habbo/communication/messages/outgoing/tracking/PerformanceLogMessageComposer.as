package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1904:int = 0;
      
      private var var_1251:String = "";
      
      private var var_1591:String = "";
      
      private var var_2164:String = "";
      
      private var var_2300:String = "";
      
      private var var_1677:int = 0;
      
      private var var_2303:int = 0;
      
      private var var_2302:int = 0;
      
      private var var_1253:int = 0;
      
      private var var_2301:int = 0;
      
      private var var_1254:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_1904 = param1;
         this.var_1251 = param2;
         this.var_1591 = param3;
         this.var_2164 = param4;
         this.var_2300 = param5;
         if(param6)
         {
            this.var_1677 = 1;
         }
         else
         {
            this.var_1677 = 0;
         }
         this.var_2303 = param7;
         this.var_2302 = param8;
         this.var_1253 = param9;
         this.var_2301 = param10;
         this.var_1254 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1904,this.var_1251,this.var_1591,this.var_2164,this.var_2300,this.var_1677,this.var_2303,this.var_2302,this.var_1253,this.var_2301,this.var_1254];
      }
   }
}
