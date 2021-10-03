package com.sulake.core.window.graphics.renderer
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.utils.IBitmapDataContainer;
   import flash.display.BitmapData;
   import flash.display.IBitmapDrawable;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   
   public class BitmapDataRenderer extends SkinRenderer
   {
       
      
      private var var_928:Matrix;
      
      private var var_1600:ColorTransform;
      
      public function BitmapDataRenderer(param1:String)
      {
         super(param1);
         this.var_928 = new Matrix();
         this.var_1600 = new ColorTransform();
      }
      
      override public function draw(param1:IWindow, param2:IBitmapDrawable, param3:Rectangle, param4:uint, param5:Boolean) : void
      {
         var _loc6_:BitmapData = IBitmapDataContainer(param1).bitmapData;
         var _loc7_:BitmapData = BitmapData(param2);
         if(param2 != null && _loc6_ != null)
         {
            this.var_928.a = param1.width / _loc6_.width;
            this.var_928.d = param1.height / _loc6_.height;
            _loc7_.lock();
            _loc7_.draw(_loc6_,this.var_928,this.var_1600,null,null,false);
            _loc7_.unlock();
         }
      }
      
      override public function isStateDrawable(param1:uint) : Boolean
      {
         return param1 == 0;
      }
   }
}