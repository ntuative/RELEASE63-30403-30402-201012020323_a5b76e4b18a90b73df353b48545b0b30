package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2446:Number = 0.0;
      
      private var var_2447:Number = 0.0;
      
      private var var_2483:Number = 0.0;
      
      private var var_2484:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2446 = param1;
         this.var_2447 = param2;
         this.var_2483 = param3;
         this.var_2484 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2446;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2447;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2483;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2484;
      }
   }
}
