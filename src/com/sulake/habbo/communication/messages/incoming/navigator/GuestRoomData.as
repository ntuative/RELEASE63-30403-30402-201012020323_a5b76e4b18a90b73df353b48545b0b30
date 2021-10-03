package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_341:int;
      
      private var var_714:Boolean;
      
      private var var_894:String;
      
      private var _ownerName:String;
      
      private var var_1949:int;
      
      private var var_1890:int;
      
      private var var_2190:int;
      
      private var var_1524:String;
      
      private var var_2191:int;
      
      private var var_2187:Boolean;
      
      private var var_469:int;
      
      private var var_1272:int;
      
      private var var_2188:String;
      
      private var var_755:Array;
      
      private var var_2189:RoomThumbnailData;
      
      private var var_1948:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_755 = new Array();
         super();
         this.var_341 = param1.readInteger();
         this.var_714 = param1.readBoolean();
         this.var_894 = param1.readString();
         this._ownerName = param1.readString();
         this.var_1949 = param1.readInteger();
         this.var_1890 = param1.readInteger();
         this.var_2190 = param1.readInteger();
         this.var_1524 = param1.readString();
         this.var_2191 = param1.readInteger();
         this.var_2187 = param1.readBoolean();
         this.var_469 = param1.readInteger();
         this.var_1272 = param1.readInteger();
         this.var_2188 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_755.push(_loc4_);
            _loc3_++;
         }
         this.var_2189 = new RoomThumbnailData(param1);
         this.var_1948 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_341;
      }
      
      public function get event() : Boolean
      {
         return this.var_714;
      }
      
      public function get roomName() : String
      {
         return this.var_894;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_1949;
      }
      
      public function get userCount() : int
      {
         return this.var_1890;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2190;
      }
      
      public function get description() : String
      {
         return this.var_1524;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2191;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2187;
      }
      
      public function get score() : int
      {
         return this.var_469;
      }
      
      public function get categoryId() : int
      {
         return this.var_1272;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2188;
      }
      
      public function get tags() : Array
      {
         return this.var_755;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2189;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_1948;
      }
   }
}
