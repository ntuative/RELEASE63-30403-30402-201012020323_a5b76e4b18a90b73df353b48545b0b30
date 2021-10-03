package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1690:int = 1;
      
      public static const const_1311:int = 2;
       
      
      private var var_818:String;
      
      private var var_2381:int;
      
      private var var_2382:int;
      
      private var var_2384:int;
      
      private var var_2385:int;
      
      private var var_2383:Boolean;
      
      private var var_1963:Boolean;
      
      private var var_1964:int;
      
      private var var_1966:int;
      
      private var var_2378:Boolean;
      
      private var var_2380:int;
      
      private var var_2379:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_818 = param1.readString();
         this.var_2381 = param1.readInteger();
         this.var_2382 = param1.readInteger();
         this.var_2384 = param1.readInteger();
         this.var_2385 = param1.readInteger();
         this.var_2383 = param1.readBoolean();
         this.var_1963 = param1.readBoolean();
         this.var_1964 = param1.readInteger();
         this.var_1966 = param1.readInteger();
         this.var_2378 = param1.readBoolean();
         this.var_2380 = param1.readInteger();
         this.var_2379 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_818;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2381;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2382;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2384;
      }
      
      public function get responseType() : int
      {
         return this.var_2385;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2383;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_1963;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_1964;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_1966;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2378;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2380;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2379;
      }
   }
}
