package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_164:Number = 0;
      
      private var var_165:Number = 0;
      
      private var var_2508:Number = 0;
      
      private var var_2509:Number = 0;
      
      private var var_2507:Number = 0;
      
      private var var_2510:Number = 0;
      
      private var var_229:int = 0;
      
      private var var_2350:int = 0;
      
      private var var_288:Array;
      
      private var var_2506:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_288 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_164 = param3;
         this.var_165 = param4;
         this.var_2508 = param5;
         this.var_229 = param6;
         this.var_2350 = param7;
         this.var_2509 = param8;
         this.var_2507 = param9;
         this.var_2510 = param10;
         this.var_2506 = param11;
         this.var_288 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_164;
      }
      
      public function get z() : Number
      {
         return this.var_165;
      }
      
      public function get localZ() : Number
      {
         return this.var_2508;
      }
      
      public function get targetX() : Number
      {
         return this.var_2509;
      }
      
      public function get targetY() : Number
      {
         return this.var_2507;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2510;
      }
      
      public function get dir() : int
      {
         return this.var_229;
      }
      
      public function get dirHead() : int
      {
         return this.var_2350;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2506;
      }
      
      public function get actions() : Array
      {
         return this.var_288.slice();
      }
   }
}
