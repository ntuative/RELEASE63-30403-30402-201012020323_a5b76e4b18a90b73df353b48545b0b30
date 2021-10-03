package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class FramerateTracker
   {
       
      
      private var var_1592:int;
      
      private var var_2457:int;
      
      private var var_1095:int;
      
      private var var_442:Number;
      
      private var var_2456:Boolean;
      
      private var var_2458:int;
      
      private var var_1763:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2457 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2458 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2456 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1095;
         var _loc3_:int = getTimer();
         if(this.var_1095 == 1)
         {
            this.var_442 = param1;
            this.var_1592 = _loc3_;
         }
         else
         {
            _loc4_ = Number(this.var_1095);
            this.var_442 = this.var_442 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2456 && _loc3_ - this.var_1592 >= this.var_2457 && this.var_1763 < this.var_2458)
         {
            _loc5_ = 1000 / this.var_442;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1763;
            this.var_1592 = _loc3_;
            this.var_1095 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
