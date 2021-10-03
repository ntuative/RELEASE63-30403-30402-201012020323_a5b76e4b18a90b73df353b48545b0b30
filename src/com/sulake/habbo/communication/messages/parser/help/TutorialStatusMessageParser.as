package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1301:Boolean;
      
      private var var_1043:Boolean;
      
      private var var_1300:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1301;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1043;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1300;
      }
      
      public function flush() : Boolean
      {
         this.var_1301 = false;
         this.var_1043 = false;
         this.var_1300 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1301 = param1.readBoolean();
         this.var_1043 = param1.readBoolean();
         this.var_1300 = param1.readBoolean();
         return true;
      }
   }
}
