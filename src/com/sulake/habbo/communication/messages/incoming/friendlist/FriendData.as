package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_889:int;
      
      private var var_713:Boolean;
      
      private var var_1519:Boolean;
      
      private var var_586:String;
      
      private var var_1272:int;
      
      private var var_1518:String;
      
      private var var_1520:String;
      
      private var var_1517:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_889 = param1.readInteger();
         this.var_713 = param1.readBoolean();
         this.var_1519 = param1.readBoolean();
         this.var_586 = param1.readString();
         this.var_1272 = param1.readInteger();
         this.var_1518 = param1.readString();
         this.var_1520 = param1.readString();
         this.var_1517 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_889;
      }
      
      public function get online() : Boolean
      {
         return this.var_713;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1519;
      }
      
      public function get figure() : String
      {
         return this.var_586;
      }
      
      public function get categoryId() : int
      {
         return this.var_1272;
      }
      
      public function get motto() : String
      {
         return this.var_1518;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1520;
      }
      
      public function get realName() : String
      {
         return this.var_1517;
      }
   }
}
