package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_574:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2073:int;
      
      private var var_2074:int;
      
      private var _color:uint;
      
      private var var_988:int;
      
      private var var_2072:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_574);
         this.var_2073 = param1;
         this.var_2074 = param2;
         this._color = param3;
         this.var_988 = param4;
         this.var_2072 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2073;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2074;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_988;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2072;
      }
   }
}
