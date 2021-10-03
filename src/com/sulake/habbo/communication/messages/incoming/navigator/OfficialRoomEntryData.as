package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1040:int = 1;
      
      public static const const_721:int = 2;
      
      public static const const_678:int = 3;
      
      public static const const_1246:int = 4;
       
      
      private var _index:int;
      
      private var var_1887:String;
      
      private var var_1888:String;
      
      private var var_1886:Boolean;
      
      private var var_1892:String;
      
      private var var_823:String;
      
      private var var_1891:int;
      
      private var var_1890:int;
      
      private var _type:int;
      
      private var var_1889:String;
      
      private var var_763:GuestRoomData;
      
      private var var_764:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_1887 = param1.readString();
         this.var_1888 = param1.readString();
         this.var_1886 = param1.readInteger() == 1;
         this.var_1892 = param1.readString();
         this.var_823 = param1.readString();
         this.var_1891 = param1.readInteger();
         this.var_1890 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1040)
         {
            this.var_1889 = param1.readString();
         }
         else if(this._type == const_678)
         {
            this.var_764 = new PublicRoomData(param1);
         }
         else if(this._type == const_721)
         {
            this.var_763 = new GuestRoomData(param1);
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_763 != null)
         {
            this.var_763.dispose();
            this.var_763 = null;
         }
         if(this.var_764 != null)
         {
            this.var_764.dispose();
            this.var_764 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_1887;
      }
      
      public function get popupDesc() : String
      {
         return this.var_1888;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_1886;
      }
      
      public function get picText() : String
      {
         return this.var_1892;
      }
      
      public function get picRef() : String
      {
         return this.var_823;
      }
      
      public function get folderId() : int
      {
         return this.var_1891;
      }
      
      public function get tag() : String
      {
         return this.var_1889;
      }
      
      public function get userCount() : int
      {
         return this.var_1890;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_763;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_764;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1040)
         {
            return 0;
         }
         if(this.type == const_721)
         {
            return this.var_763.maxUserCount;
         }
         if(this.type == const_678)
         {
            return this.var_764.maxUsers;
         }
         return 0;
      }
   }
}
