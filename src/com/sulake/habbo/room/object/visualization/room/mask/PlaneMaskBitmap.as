package com.sulake.habbo.room.object.visualization.room.mask
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   
   public class PlaneMaskBitmap
   {
      
      public static const const_51:Number = -1;
      
      public static const MAX_NORMAL_COORDINATE_VALUE:Number = 1;
       
      
      private var var_405:IGraphicAsset = null;
      
      private var var_2061:Number = -1.0;
      
      private var _normalMaxX:Number = 1.0;
      
      private var var_2063:Number = -1.0;
      
      private var var_2062:Number = 1.0;
      
      public function PlaneMaskBitmap(param1:IGraphicAsset, param2:Number = -1.0, param3:Number = 1.0, param4:Number = -1.0, param5:Number = 1.0)
      {
         super();
         this.var_2061 = param2;
         this._normalMaxX = param3;
         this.var_2063 = param4;
         this.var_2062 = param5;
         this.var_405 = param1;
      }
      
      public function get asset() : IGraphicAsset
      {
         return this.var_405;
      }
      
      public function get normalMinX() : Number
      {
         return this.var_2061;
      }
      
      public function get normalMaxX() : Number
      {
         return this._normalMaxX;
      }
      
      public function get normalMinY() : Number
      {
         return this.var_2063;
      }
      
      public function get normalMaxY() : Number
      {
         return this.var_2062;
      }
      
      public function dispose() : void
      {
         this.var_405 = null;
      }
   }
}