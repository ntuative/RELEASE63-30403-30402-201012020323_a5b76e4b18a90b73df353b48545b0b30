package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_865:int = 3;
       
      
      private var var_2438:int = -1;
      
      private var var_2436:int = -2;
      
      private var var_332:Vector3d = null;
      
      private var var_391:Vector3d = null;
      
      private var var_2440:Boolean = false;
      
      private var var_2431:Boolean = false;
      
      private var var_2439:Boolean = false;
      
      private var var_2433:Boolean = false;
      
      private var var_2434:int = 0;
      
      private var var_2432:int = 0;
      
      private var var_2435:int = 0;
      
      private var var_2437:int = 0;
      
      private var var_1341:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_391;
      }
      
      public function get targetId() : int
      {
         return this.var_2438;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2436;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2440;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2431;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2439;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2433;
      }
      
      public function get screenWd() : int
      {
         return this.var_2434;
      }
      
      public function get screenHt() : int
      {
         return this.var_2432;
      }
      
      public function get roomWd() : int
      {
         return this.var_2435;
      }
      
      public function get roomHt() : int
      {
         return this.var_2437;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2438 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2436 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2440 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2431 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2439 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2433 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2434 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2432 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2435 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2437 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_332 == null)
         {
            this.var_332 = new Vector3d();
         }
         if(this.var_332.x != param1.x || this.var_332.y != param1.y || this.var_332.z != param1.z)
         {
            this.var_332.assign(param1);
            this.var_1341 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_332 = null;
         this.var_391 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_391 != null)
         {
            return;
         }
         this.var_391 = new Vector3d();
         this.var_391.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_332 != null && this.var_391 != null)
         {
            ++this.var_1341;
            _loc4_ = Vector3d.dif(this.var_332,this.var_391);
            if(_loc4_.length <= param2)
            {
               this.var_391 = this.var_332;
               this.var_332 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_865 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1341 <= const_865)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_391 = Vector3d.sum(this.var_391,_loc4_);
            }
         }
      }
   }
}
