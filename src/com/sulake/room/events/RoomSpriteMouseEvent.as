package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1558:String = "";
      
      private var var_2011:String = "";
      
      private var var_2008:String = "";
      
      private var var_2012:Number = 0;
      
      private var var_2016:Number = 0;
      
      private var var_2014:Number = 0;
      
      private var var_2015:Number = 0;
      
      private var var_2013:Boolean = false;
      
      private var var_2007:Boolean = false;
      
      private var var_2009:Boolean = false;
      
      private var var_2010:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1558 = param2;
         this.var_2011 = param3;
         this.var_2008 = param4;
         this.var_2012 = param5;
         this.var_2016 = param6;
         this.var_2014 = param7;
         this.var_2015 = param8;
         this.var_2013 = param9;
         this.var_2007 = param10;
         this.var_2009 = param11;
         this.var_2010 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1558;
      }
      
      public function get canvasId() : String
      {
         return this.var_2011;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2008;
      }
      
      public function get screenX() : Number
      {
         return this.var_2012;
      }
      
      public function get screenY() : Number
      {
         return this.var_2016;
      }
      
      public function get localX() : Number
      {
         return this.var_2014;
      }
      
      public function get localY() : Number
      {
         return this.var_2015;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2013;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2007;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2009;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2010;
      }
   }
}
