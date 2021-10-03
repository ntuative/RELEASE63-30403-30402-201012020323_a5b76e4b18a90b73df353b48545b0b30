package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_593:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_799:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_593);
         this.var_799 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_799;
      }
   }
}
