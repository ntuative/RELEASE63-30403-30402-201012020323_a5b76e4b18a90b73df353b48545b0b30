package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_586:String;
      
      private var var_2108:String;
      
      private var var_889:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_586 = param1;
         this.var_889 = param2;
         this.var_2108 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_586;
      }
      
      public function get race() : String
      {
         return this.var_2108;
      }
      
      public function get gender() : String
      {
         return this.var_889;
      }
   }
}
