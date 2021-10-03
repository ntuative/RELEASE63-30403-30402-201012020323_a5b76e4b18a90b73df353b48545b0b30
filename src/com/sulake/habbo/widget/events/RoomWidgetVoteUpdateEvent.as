package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_126:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_138:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1124:String;
      
      private var var_1286:Array;
      
      private var var_1103:Array;
      
      private var var_1829:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1124 = param2;
         this.var_1286 = param3;
         this.var_1103 = param4;
         if(this.var_1103 == null)
         {
            this.var_1103 = [];
         }
         this.var_1829 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1124;
      }
      
      public function get choices() : Array
      {
         return this.var_1286.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1103.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1829;
      }
   }
}
