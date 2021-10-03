package com.sulake.room.object
{
   import com.sulake.room.object.logic.IRoomObjectEventHandler;
   import com.sulake.room.object.logic.IRoomObjectMouseHandler;
   import com.sulake.room.object.visualization.IRoomObjectVisualization;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObject implements IRoomObjectController
   {
      
      private static var var_989:int = 0;
       
      
      private var _id:int;
      
      private var _type:String = "";
      
      private var var_74:Vector3d;
      
      private var var_229:Vector3d;
      
      private var var_1814:Vector3d;
      
      private var var_1813:Vector3d;
      
      private var var_609:Array;
      
      private var var_62:RoomObjectModel;
      
      private var _visualization:IRoomObjectVisualization;
      
      private var var_610:IRoomObjectEventHandler;
      
      private var _updateID:int;
      
      private var _instanceId:int = 0;
      
      public function RoomObject(param1:int, param2:int)
      {
         super();
         this._id = param1;
         this.var_74 = new Vector3d();
         this.var_229 = new Vector3d();
         this.var_1814 = new Vector3d();
         this.var_1813 = new Vector3d();
         this.var_609 = new Array(param2);
         var _loc3_:Number = param2 - 1;
         while(_loc3_ >= 0)
         {
            this.var_609[_loc3_] = 0;
            _loc3_--;
         }
         this.var_62 = new RoomObjectModel();
         this._visualization = null;
         this.var_610 = null;
         this._updateID = 0;
         this._instanceId = var_989++;
      }
      
      public function dispose() : void
      {
         this.var_74 = null;
         this.var_229 = null;
         if(this.var_62 != null)
         {
            this.var_62.dispose();
            this.var_62 = null;
         }
         this.var_609 = null;
         this.setVisualization(null);
         this.setEventHandler(null);
      }
      
      public function getId() : int
      {
         return this._id;
      }
      
      public function getType() : String
      {
         return this._type;
      }
      
      public function getInstanceId() : int
      {
         return this._instanceId;
      }
      
      public function getLocation() : IVector3d
      {
         this.var_1814.assign(this.var_74);
         return this.var_1814;
      }
      
      public function getDirection() : IVector3d
      {
         this.var_1813.assign(this.var_229);
         return this.var_1813;
      }
      
      public function getModel() : IRoomObjectModel
      {
         return this.var_62;
      }
      
      public function getModelController() : IRoomObjectModelController
      {
         return this.var_62;
      }
      
      public function getState(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.var_609.length)
         {
            return this.var_609[param1];
         }
         return -1;
      }
      
      public function getVisualization() : IRoomObjectVisualization
      {
         return this._visualization;
      }
      
      public function setType(param1:String) : void
      {
         this._type = param1;
      }
      
      public function setLocation(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(this.var_74.x != param1.x || this.var_74.y != param1.y || this.var_74.z != param1.z)
         {
            this.var_74.x = param1.x;
            this.var_74.y = param1.y;
            this.var_74.z = param1.z;
            ++this._updateID;
         }
      }
      
      public function setDirection(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(this.var_229.x != param1.x || this.var_229.y != param1.y || this.var_229.z != param1.z)
         {
            this.var_229.x = (param1.x % 360 + 360) % 360;
            this.var_229.y = (param1.y % 360 + 360) % 360;
            this.var_229.z = (param1.z % 360 + 360) % 360;
            ++this._updateID;
         }
      }
      
      public function setState(param1:int, param2:int) : Boolean
      {
         if(param2 >= 0 && param2 < this.var_609.length)
         {
            if(this.var_609[param2] != param1)
            {
               this.var_609[param2] = param1;
               ++this._updateID;
            }
            return true;
         }
         return false;
      }
      
      public function setVisualization(param1:IRoomObjectVisualization) : void
      {
         if(param1 != this._visualization)
         {
            if(this._visualization != null)
            {
               this._visualization.dispose();
            }
            this._visualization = param1;
            if(this._visualization != null)
            {
               this._visualization.object = this;
            }
         }
      }
      
      public function setEventHandler(param1:IRoomObjectEventHandler) : void
      {
         if(param1 == this.var_610)
         {
            return;
         }
         var _loc2_:IRoomObjectEventHandler = this.var_610;
         if(_loc2_ != null)
         {
            this.var_610 = null;
            _loc2_.object = null;
         }
         this.var_610 = param1;
         if(this.var_610 != null)
         {
            this.var_610.object = this;
         }
      }
      
      public function getEventHandler() : IRoomObjectEventHandler
      {
         return this.var_610;
      }
      
      public function getUpdateID() : int
      {
         return this._updateID;
      }
      
      public function getMouseHandler() : IRoomObjectMouseHandler
      {
         return this.getEventHandler();
      }
   }
}
