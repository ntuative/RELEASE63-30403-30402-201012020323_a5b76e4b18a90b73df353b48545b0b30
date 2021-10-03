package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_989:int = 0;
       
      
      private var var_405:BitmapData = null;
      
      private var var_1819:String = "";
      
      private var var_347:Boolean = true;
      
      private var var_1889:String = "";
      
      private var var_2316:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_2550:String = "normal";
      
      private var var_1317:Boolean = false;
      
      private var var_1318:Boolean = false;
      
      private var _offset:Point;
      
      private var _width:int = 0;
      
      private var _height:int = 0;
      
      private var var_1011:Number = 0;
      
      private var var_2033:Boolean = false;
      
      private var var_2549:Boolean = true;
      
      private var var_2034:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var _instanceId:int = 0;
      
      private var var_1811:Array;
      
      public function RoomObjectSprite()
      {
         this._offset = new Point(0,0);
         this.var_1811 = [];
         super();
         this._instanceId = var_989++;
      }
      
      public function dispose() : void
      {
         this.var_405 = null;
         this._width = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_405;
      }
      
      public function get assetName() : String
      {
         return this.var_1819;
      }
      
      public function get visible() : Boolean
      {
         return this.var_347;
      }
      
      public function get tag() : String
      {
         return this.var_1889;
      }
      
      public function get alpha() : int
      {
         return this.var_2316;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_2550;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1318;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1317;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this._width;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1011;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2033;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2549;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2034;
      }
      
      public function get instanceId() : int
      {
         return this._instanceId;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_1811;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this._width = param1.width;
            this._height = param1.height;
         }
         this.var_405 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_1819 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_347 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_1889 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2316 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_2550 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_1811 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1317 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1318 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1011 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2033 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2549 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2034 = param1;
         ++this._updateID;
      }
   }
}
