package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var var_320:int;
      
      private var var_2102:int;
      
      private var var_2184:String;
      
      private var _x:int = 0;
      
      private var var_164:int = 0;
      
      private var var_229:int = 0;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         this.var_320 = param1;
         this.var_2102 = param2;
         this.var_2184 = param3;
         this._x = param4;
         this.var_164 = param5;
         this.var_229 = param6;
         this._roomId = param7;
         this._roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(this.var_2102)
         {
            case RoomObjectCategoryEnum.const_28:
               return [this.var_320 + " " + this._x + " " + this.var_164 + " " + this.var_229];
            case RoomObjectCategoryEnum.OBJECT_CATEGORY_WALLITEM:
               return [this.var_320 + " " + this.var_2184];
            default:
               return [];
         }
      }
   }
}
