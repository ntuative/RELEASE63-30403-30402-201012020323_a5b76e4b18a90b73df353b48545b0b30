package com.sulake.habbo.navigator.roomthumbnails
{
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class ThumbnailImageConfiguration
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _id:int;
      
      private var _type:int;
      
      private var var_1456:String;
      
      private var var_1455:BitmapData;
      
      private var var_186:Boolean;
      
      private var var_1458:BitmapData;
      
      private var var_516:IBitmapWrapperWindow;
      
      private var var_1457:Rectangle;
      
      private var var_1187:int = 1;
      
      public function ThumbnailImageConfiguration(param1:HabboNavigator, param2:int, param3:int, param4:String, param5:BitmapData)
      {
         super();
         this._navigator = param1;
         this._id = param2;
         this._type = param3;
         this.var_1456 = param4;
         this.var_1458 = param5;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get picName() : String
      {
         return this.var_1456;
      }
      
      public function getImg() : BitmapData
      {
         if(this.var_1455 == null)
         {
            this.var_1455 = this._navigator.getButtonImage(this.var_1456);
         }
         return this.var_1455;
      }
      
      public function registerListImg(param1:IBitmapWrapperWindow) : void
      {
         this.var_516 = param1;
         this.refreshListImg();
      }
      
      public function copyTo(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = this.getImg();
         param1.copyPixels(_loc2_,_loc2_.rect,new Point((param1.width - _loc2_.width) / 2,param1.height - _loc2_.height),null,null,true);
      }
      
      public function setSelected(param1:Boolean) : void
      {
         if(this.var_186 == param1)
         {
            return;
         }
         this.var_186 = param1;
         this.refreshListImg();
      }
      
      private function refreshListImg() : void
      {
         var _loc1_:* = null;
         if(this.var_1457 == null)
         {
            _loc1_ = this.var_516.bitmap.rect;
            this.var_1457 = new Rectangle(this.var_1187,this.var_1187,_loc1_.width - 2 * this.var_1187,_loc1_.height - 2 * this.var_1187);
         }
         this.var_516.bitmap.fillRect(this.var_516.bitmap.rect,4281545523);
         this.var_516.bitmap.fillRect(this.var_1457,4284900966);
         this.copyTo(this.var_516.bitmap);
         if(this.var_186)
         {
            this.var_516.bitmap.copyPixels(this.var_1458,this.var_1458.rect,new Point(0,0),null,null,true);
         }
         this.var_516.invalidate();
      }
   }
}
