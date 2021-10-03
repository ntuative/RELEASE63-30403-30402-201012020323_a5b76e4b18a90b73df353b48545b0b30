package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1755:int;
      
      private var var_2163:String;
      
      private var var_889:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1755 = param1.readInteger();
         this.var_2163 = param1.readString();
         this.var_889 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1755;
      }
      
      public function get figureString() : String
      {
         return this.var_2163;
      }
      
      public function get gender() : String
      {
         return this.var_889;
      }
   }
}
