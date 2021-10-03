package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_476:int = -2.147483648E9;
      
      private var var_474:int = 2.147483647E9;
      
      private var var_475:int = -2.147483648E9;
      
      private var var_473:int = 2.147483647E9;
      
      private var _target:IWindow;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         this._target = param1;
      }
      
      public function get minWidth() : int
      {
         return this.var_476;
      }
      
      public function get maxWidth() : int
      {
         return this.var_474;
      }
      
      public function get minHeight() : int
      {
         return this.var_475;
      }
      
      public function get maxHeight() : int
      {
         return this.var_473;
      }
      
      public function set minWidth(param1:int) : void
      {
         this.var_476 = param1;
         if(this.var_476 > int.MIN_VALUE && !this._target.disposed && this._target.width < this.var_476)
         {
            this._target.width = this.var_476;
         }
      }
      
      public function set maxWidth(param1:int) : void
      {
         this.var_474 = param1;
         if(this.var_474 < int.MAX_VALUE && !this._target.disposed && this._target.width > this.var_474)
         {
            this._target.width = this.var_474;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         this.var_475 = param1;
         if(this.var_475 > int.MIN_VALUE && !this._target.disposed && this._target.height < this.var_475)
         {
            this._target.height = this.var_475;
         }
      }
      
      public function set maxHeight(param1:int) : void
      {
         this.var_473 = param1;
         if(this.var_473 < int.MAX_VALUE && !this._target.disposed && this._target.height > this.var_473)
         {
            this._target.height = this.var_473;
         }
      }
      
      public function get isEmpty() : Boolean
      {
         return this.var_476 == int.MIN_VALUE && this.var_474 == int.MAX_VALUE && this.var_475 == int.MIN_VALUE && this.var_473 == int.MAX_VALUE;
      }
      
      public function setEmpty() : void
      {
         this.var_476 = int.MIN_VALUE;
         this.var_474 = int.MAX_VALUE;
         this.var_475 = int.MIN_VALUE;
         this.var_473 = int.MAX_VALUE;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_476 = this.var_476;
         _loc2_.var_474 = this.var_474;
         _loc2_.var_475 = this.var_475;
         _loc2_.var_473 = this.var_473;
         return _loc2_;
      }
   }
}
