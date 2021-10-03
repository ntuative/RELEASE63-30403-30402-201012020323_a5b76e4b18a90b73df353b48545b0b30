package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1438:int = 1;
      
      public static const const_1649:int = 2;
      
      public static const const_1299:int = 3;
      
      public static const const_1319:int = 4;
       
      
      private var var_1211:int = 0;
      
      private var var_1212:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1211 = 0;
         this.var_1212 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1211 = param1.readInteger();
         if(this.var_1211 == 3)
         {
            this.var_1212 = param1.readString();
         }
         else
         {
            this.var_1212 = "";
         }
         return true;
      }
      
      public function get reason() : int
      {
         return this.var_1211;
      }
      
      public function get parameter() : String
      {
         return this.var_1212;
      }
   }
}
