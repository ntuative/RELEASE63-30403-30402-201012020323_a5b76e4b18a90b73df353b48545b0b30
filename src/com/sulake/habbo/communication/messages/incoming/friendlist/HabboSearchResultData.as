package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_1976:int;
      
      private var var_1747:String;
      
      private var var_2444:String;
      
      private var var_2520:Boolean;
      
      private var var_2521:Boolean;
      
      private var var_2518:int;
      
      private var var_2445:String;
      
      private var var_2519:String;
      
      private var var_1517:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1976 = param1.readInteger();
         this.var_1747 = param1.readString();
         this.var_2444 = param1.readString();
         this.var_2520 = param1.readBoolean();
         this.var_2521 = param1.readBoolean();
         param1.readString();
         this.var_2518 = param1.readInteger();
         this.var_2445 = param1.readString();
         this.var_2519 = param1.readString();
         this.var_1517 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_1976;
      }
      
      public function get avatarName() : String
      {
         return this.var_1747;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2444;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2520;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2521;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2518;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2445;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2519;
      }
      
      public function get realName() : String
      {
         return this.var_1517;
      }
   }
}
