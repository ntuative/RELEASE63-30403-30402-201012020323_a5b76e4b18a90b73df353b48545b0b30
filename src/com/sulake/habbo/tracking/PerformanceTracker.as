package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var var_166:IHabboConfigurationManager = null;
      
      private var var_512:int = 0;
      
      private var var_442:Number = 0;
      
      private var var_2618:Array;
      
      private var var_1251:String = "";
      
      private var var_1591:String = "";
      
      private var var_2164:String = "";
      
      private var var_2300:String = "";
      
      private var var_1677:Boolean = false;
      
      private var var_1590:GarbageMonitor = null;
      
      private var var_1253:int = 0;
      
      private var var_1588:int = 1000;
      
      private var var_1254:int = 0;
      
      private var var_1589:int = 60;
      
      private var var_1592:int = 0;
      
      private var var_1593:int = 10;
      
      private var var_1252:int = 0;
      
      private var var_2165:Number = 0.15;
      
      private var var_2166:Boolean = true;
      
      private var var_2167:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_2618 = [];
         super();
         this.var_1591 = Capabilities.version;
         this.var_2164 = Capabilities.os;
         this.var_1677 = Capabilities.isDebugger;
         this.var_1251 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1251 == null)
         {
            this.var_1251 = "unknown";
         }
         this.var_1590 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1592 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1591;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_442;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1588 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this.var_1589 = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1593 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_166 = param1;
         this.var_1589 = int(this.var_166.getKey("performancetest.interval","60"));
         this.var_1588 = int(this.var_166.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1593 = int(this.var_166.getKey("performancetest.reportlimit","10"));
         this.var_2165 = Number(this.var_166.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_2166 = Boolean(int(this.var_166.getKey("performancetest.distribution.enabled","1")));
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1590.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1590.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = this.updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++this.var_1253;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1588)
         {
            ++this.var_1254;
            _loc3_ = true;
         }
         else
         {
            ++this.var_512;
            if(this.var_512 <= 1)
            {
               this.var_442 = param1;
            }
            else
            {
               _loc4_ = Number(this.var_512);
               this.var_442 = this.var_442 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - this.var_1592 > this.var_1589 * 1000 && this.var_1252 < this.var_1593)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_442);
            _loc5_ = true;
            if(this.var_2166 && this.var_1252 > 0)
            {
               _loc6_ = this.differenceInPercents(this.var_2167,this.var_442);
               if(_loc6_ < this.var_2165)
               {
                  _loc5_ = false;
               }
            }
            this.var_1592 = getTimer();
            if(_loc5_ || _loc3_)
            {
               this.var_2167 = this.var_442;
               if(this.sendReport())
               {
                  ++this.var_1252;
               }
            }
         }
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this._connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,this.var_1251,this.var_1591,this.var_2164,this.var_2300,this.var_1677,_loc4_,_loc3_,this.var_1253,this.var_442,this.var_1254);
            this._connection.send(_loc1_);
            this.var_1253 = 0;
            this.var_442 = 0;
            this.var_512 = 0;
            this.var_1254 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
