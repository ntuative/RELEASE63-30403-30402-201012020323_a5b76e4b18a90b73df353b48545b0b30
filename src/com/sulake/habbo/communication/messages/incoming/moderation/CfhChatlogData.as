package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1437:int;
      
      private var var_1911:int;
      
      private var var_1203:int;
      
      private var var_1912:int;
      
      private var var_110:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1437 = param1.readInteger();
         this.var_1911 = param1.readInteger();
         this.var_1203 = param1.readInteger();
         this.var_1912 = param1.readInteger();
         this.var_110 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1437);
      }
      
      public function get callId() : int
      {
         return this.var_1437;
      }
      
      public function get callerUserId() : int
      {
         return this.var_1911;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1203;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_1912;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_110;
      }
   }
}
