package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1672:int;
      
      private var var_2320:String;
      
      private var var_1525:int;
      
      private var var_586:String;
      
      private var var_1337:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1672 = param1.readInteger();
         this.var_2320 = param1.readString();
         this.var_1525 = param1.readInteger();
         this.var_586 = param1.readString();
         this.var_1337 = param1.readInteger();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1672;
      }
      
      public function get petName() : String
      {
         return this.var_2320;
      }
      
      public function get level() : int
      {
         return this.var_1525;
      }
      
      public function get figure() : String
      {
         return this.var_586;
      }
      
      public function get petType() : int
      {
         return this.var_1337;
      }
   }
}
