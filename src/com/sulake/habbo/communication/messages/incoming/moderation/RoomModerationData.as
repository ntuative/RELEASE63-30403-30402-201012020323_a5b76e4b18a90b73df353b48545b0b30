package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_341:int;
      
      private var var_1890:int;
      
      private var var_2242:Boolean;
      
      private var var_1995:int;
      
      private var _ownerName:String;
      
      private var var_110:RoomData;
      
      private var var_714:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_341 = param1.readInteger();
         this.var_1890 = param1.readInteger();
         this.var_2242 = param1.readBoolean();
         this.var_1995 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_110 = new RoomData(param1);
         this.var_714 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_110 != null)
         {
            this.var_110.dispose();
            this.var_110 = null;
         }
         if(this.var_714 != null)
         {
            this.var_714.dispose();
            this.var_714 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_341;
      }
      
      public function get userCount() : int
      {
         return this.var_1890;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2242;
      }
      
      public function get ownerId() : int
      {
         return this.var_1995;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_110;
      }
      
      public function get event() : RoomData
      {
         return this.var_714;
      }
   }
}
