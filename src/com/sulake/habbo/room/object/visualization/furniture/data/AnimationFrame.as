package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_480:int = -1;
      
      public static const const_1021:int = -1;
       
      
      private var _id:int = 0;
      
      private var _x:int = 0;
      
      private var var_164:int = 0;
      
      private var var_1958:int = 1;
      
      private var var_880:int = 1;
      
      private var var_1725:int = 1;
      
      private var var_2395:int = -1;
      
      private var var_2393:int = 0;
      
      private var var_2394:Boolean = false;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Boolean, param7:int = -1, param8:int = 0)
      {
         super();
         this._id = param1;
         this._x = param2;
         this.var_164 = param3;
         this.var_2394 = param6;
         if(param4 < 1)
         {
            param4 = 1;
         }
         this.var_1958 = param4;
         if(param5 < 0)
         {
            param5 = const_480;
         }
         this.var_880 = param5;
         this.var_1725 = param5;
         if(param7 >= 0)
         {
            this.var_2395 = param7;
            this.var_2393 = param8;
         }
      }
      
      public function get id() : int
      {
         if(this._id >= 0)
         {
            return this._id;
         }
         return -this._id * Math.random();
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this.var_164;
      }
      
      public function get repeats() : int
      {
         return this.var_1958;
      }
      
      public function get frameRepeats() : int
      {
         return this.var_880;
      }
      
      public function get isLastFrame() : Boolean
      {
         return this.var_2394;
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(this.var_880 < 0)
         {
            return const_480;
         }
         return this.var_1725;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(this.var_880 > 0 && param1 > this.var_880)
         {
            param1 = this.var_880;
         }
         this.var_1725 = param1;
      }
      
      public function get activeSequence() : int
      {
         return this.var_2395;
      }
      
      public function get activeSequenceOffset() : int
      {
         return this.var_2393;
      }
   }
}
