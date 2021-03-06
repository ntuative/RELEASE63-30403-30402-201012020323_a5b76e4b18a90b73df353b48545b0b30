package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1210:int = 2;
      
      private static const const_1209:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_273:Array;
      
      private var var_1065:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_273 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1210)
         {
            this.var_273 = new Array();
            this.var_273.push(const_1209);
            this.var_1065 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_1065 > 0)
         {
            --this.var_1065;
         }
         if(this.var_1065 == 0)
         {
            if(this.var_273.length > 0)
            {
               super.setAnimation(this.var_273.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
