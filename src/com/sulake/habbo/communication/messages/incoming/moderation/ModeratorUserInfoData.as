package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_1969:int;
      
      private var var_1968:int;
      
      private var var_713:Boolean;
      
      private var var_1971:int;
      
      private var var_1970:int;
      
      private var var_1967:int;
      
      private var var_1972:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_1969 = param1.readInteger();
         this.var_1968 = param1.readInteger();
         this.var_713 = param1.readBoolean();
         this.var_1971 = param1.readInteger();
         this.var_1970 = param1.readInteger();
         this.var_1967 = param1.readInteger();
         this.var_1972 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_1969;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_1968;
      }
      
      public function get online() : Boolean
      {
         return this.var_713;
      }
      
      public function get cfhCount() : int
      {
         return this.var_1971;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_1970;
      }
      
      public function get cautionCount() : int
      {
         return this.var_1967;
      }
      
      public function get banCount() : int
      {
         return this.var_1972;
      }
   }
}
