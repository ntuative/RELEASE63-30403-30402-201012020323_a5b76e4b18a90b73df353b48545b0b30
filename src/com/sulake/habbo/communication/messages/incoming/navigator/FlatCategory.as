package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1683:int;
      
      private var var_2424:String;
      
      private var var_347:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1683 = param1.readInteger();
         this.var_2424 = param1.readString();
         this.var_347 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1683;
      }
      
      public function get nodeName() : String
      {
         return this.var_2424;
      }
      
      public function get visible() : Boolean
      {
         return this.var_347;
      }
   }
}
