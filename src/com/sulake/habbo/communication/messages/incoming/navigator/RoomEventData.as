package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1020:Boolean;
      
      private var var_2556:int;
      
      private var var_2555:String;
      
      private var var_341:int;
      
      private var var_2557:int;
      
      private var var_2527:String;
      
      private var var_2554:String;
      
      private var var_2558:String;
      
      private var var_755:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_755 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1020 = false;
            return;
         }
         this.var_1020 = true;
         this.var_2556 = int(_loc2_);
         this.var_2555 = param1.readString();
         this.var_341 = int(param1.readString());
         this.var_2557 = param1.readInteger();
         this.var_2527 = param1.readString();
         this.var_2554 = param1.readString();
         this.var_2558 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_755.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_755 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2556;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2555;
      }
      
      public function get flatId() : int
      {
         return this.var_341;
      }
      
      public function get eventType() : int
      {
         return this.var_2557;
      }
      
      public function get eventName() : String
      {
         return this.var_2527;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2554;
      }
      
      public function get creationTime() : String
      {
         return this.var_2558;
      }
      
      public function get tags() : Array
      {
         return this.var_755;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1020;
      }
   }
}
