package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1524:String;
      
      private var var_1949:int;
      
      private var _password:String;
      
      private var var_1272:int;
      
      private var var_1954:int;
      
      private var var_755:Array;
      
      private var var_1952:Array;
      
      private var var_1948:Boolean;
      
      private var var_1951:Boolean;
      
      private var var_1953:Boolean;
      
      private var var_1950:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_1948;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_1948 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_1951;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_1951 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_1953;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_1953 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_1950;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_1950 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1524;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1524 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_1949;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_1949 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1272;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1272 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_1954;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_1954 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_755;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_755 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_1952;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_1952 = param1;
      }
   }
}
