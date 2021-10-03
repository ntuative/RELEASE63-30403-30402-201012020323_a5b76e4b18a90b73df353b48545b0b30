package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_586:String;
      
      private var var_859:String;
      
      private var var_2001:String;
      
      private var var_1517:String;
      
      private var var_2002:int;
      
      private var var_2003:String;
      
      private var var_2004:int;
      
      private var var_2005:int;
      
      private var var_1922:int;
      
      private var _respectLeft:int;
      
      private var var_685:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_586 = param1.readString();
         this.var_859 = param1.readString();
         this.var_2001 = param1.readString();
         this.var_1517 = param1.readString();
         this.var_2002 = param1.readInteger();
         this.var_2003 = param1.readString();
         this.var_2004 = param1.readInteger();
         this.var_2005 = param1.readInteger();
         this.var_1922 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_685 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_586;
      }
      
      public function get sex() : String
      {
         return this.var_859;
      }
      
      public function get customData() : String
      {
         return this.var_2001;
      }
      
      public function get realName() : String
      {
         return this.var_1517;
      }
      
      public function get tickets() : int
      {
         return this.var_2002;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2003;
      }
      
      public function get include() : int
      {
         return this.var_2004;
      }
      
      public function get directMail() : int
      {
         return this.var_2005;
      }
      
      public function get respectTotal() : int
      {
         return this.var_1922;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_685;
      }
   }
}
