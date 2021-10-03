package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPetCommandMessage extends RoomWidgetMessage
   {
      
      public static const const_584:String = "RWPCM_REQUEST_PET_COMMANDS";
      
      public static const const_766:String = "RWPCM_PET_COMMAND";
       
      
      private var var_1672:int = 0;
      
      private var var_167:String;
      
      public function RoomWidgetPetCommandMessage(param1:String, param2:int, param3:String = null)
      {
         super(param1);
         this.var_1672 = param2;
         this.var_167 = param3;
      }
      
      public function get petId() : int
      {
         return this.var_1672;
      }
      
      public function get value() : String
      {
         return this.var_167;
      }
   }
}
