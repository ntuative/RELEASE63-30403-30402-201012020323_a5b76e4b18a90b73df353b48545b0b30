package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_2147:int;
      
      private var var_2146:int;
      
      private var var_1182:PetData;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1182 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2147 = param1.readInteger();
         this.var_2146 = param1.readInteger();
         this.var_1182 = new PetData(param1);
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return this.var_2146;
      }
      
      public function get respect() : int
      {
         return this.var_2147;
      }
      
      public function get petData() : PetData
      {
         return this.var_1182;
      }
   }
}
