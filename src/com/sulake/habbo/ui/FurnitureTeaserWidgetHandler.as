package com.sulake.habbo.ui
{
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.habbo.widget.RoomWidgetEnum;
   import com.sulake.habbo.widget.events.RoomWidgetTeaserDataUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetFurniToWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetViralFurniMessage;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import flash.events.Event;
   
   public class FurnitureTeaserWidgetHandler implements IRoomWidgetHandler
   {
       
      
      private var var_668:Boolean = false;
      
      private var _container:IRoomWidgetHandlerContainer = null;
      
      public function FurnitureTeaserWidgetHandler()
      {
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this.var_668;
      }
      
      public function get type() : String
      {
         return RoomWidgetEnum.const_502;
      }
      
      public function set container(param1:IRoomWidgetHandlerContainer) : void
      {
         this._container = param1;
      }
      
      public function dispose() : void
      {
         this.var_668 = true;
         this._container = null;
      }
      
      public function getWidgetMessages() : Array
      {
         return [RoomWidgetFurniToWidgetMessage.const_780,RoomWidgetViralFurniMessage.const_598];
      }
      
      public function processWidgetMessage(param1:RoomWidgetMessage) : RoomWidgetUpdateEvent
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(param1.type)
         {
            case RoomWidgetFurniToWidgetMessage.const_780:
               _loc2_ = param1 as RoomWidgetFurniToWidgetMessage;
               _loc3_ = this._container.roomEngine.getRoomObject(_loc2_.roomId,_loc2_.roomCategory,_loc2_.id,_loc2_.category);
               if(_loc3_ != null)
               {
                  _loc4_ = _loc3_.getModel();
                  if(_loc4_ != null)
                  {
                     _loc5_ = _loc4_.getString(RoomObjectVariableEnum.const_99);
                     _loc6_ = new RoomWidgetTeaserDataUpdateEvent(RoomWidgetTeaserDataUpdateEvent.const_722,_loc5_);
                     this._container.events.dispatchEvent(_loc6_);
                  }
               }
               break;
            case RoomWidgetViralFurniMessage.const_598:
               if(this._container != null && this._container.roomSession != null)
               {
                  this._container.roomSession.sendViralFurniFoundMessage();
               }
         }
         return null;
      }
      
      public function getProcessedEvents() : Array
      {
         return [];
      }
      
      public function processEvent(param1:Event) : void
      {
      }
      
      public function update() : void
      {
      }
   }
}
