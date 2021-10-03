package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2212:String;
      
      private var var_2137:int;
      
      private var var_2032:int;
      
      private var var_2136:String;
      
      private var var_2211:int;
      
      private var var_1683:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2212 = param1.readString();
         this.var_2137 = param1.readInteger();
         this.var_2032 = param1.readInteger();
         this.var_2136 = param1.readString();
         this.var_2211 = param1.readInteger();
         this.var_1683 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2212;
      }
      
      public function get unitPort() : int
      {
         return this.var_2137;
      }
      
      public function get worldId() : int
      {
         return this.var_2032;
      }
      
      public function get castLibs() : String
      {
         return this.var_2136;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2211;
      }
      
      public function get nodeId() : int
      {
         return this.var_1683;
      }
   }
}
