package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1425:int;
      
      private var var_1564:int;
      
      private var var_1563:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1564 = param1.readInteger();
         this.var_1425 = param1.readInteger();
         this.var_1563 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1425 = 0;
         this.var_1564 = 0;
         this.var_1563 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1425;
      }
      
      public function get messageId() : int
      {
         return this.var_1564;
      }
      
      public function get timestamp() : String
      {
         return this.var_1563;
      }
   }
}
