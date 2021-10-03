package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_782:int = 1;
      
      public static const const_613:int = 2;
      
      public static const const_802:int = 3;
      
      public static const const_1005:int = 4;
      
      public static const const_803:int = 5;
      
      public static const const_1033:int = 6;
       
      
      private var _type:int;
      
      private var var_1003:int;
      
      private var var_1917:String;
      
      private var var_2309:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1003 = param2;
         this.var_1917 = param3;
         this.var_2309 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_1917;
      }
      
      public function get time() : String
      {
         return this.var_2309;
      }
      
      public function get senderId() : int
      {
         return this.var_1003;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
