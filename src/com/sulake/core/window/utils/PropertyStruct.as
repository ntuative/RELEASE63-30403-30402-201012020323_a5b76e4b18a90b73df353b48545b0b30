package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_176:String = "hex";
      
      public static const const_52:String = "int";
      
      public static const const_292:String = "uint";
      
      public static const const_212:String = "Number";
      
      public static const const_54:String = "Boolean";
      
      public static const const_89:String = "String";
      
      public static const const_239:String = "Point";
      
      public static const const_235:String = "Rectangle";
      
      public static const const_158:String = "Array";
      
      public static const const_248:String = "Map";
       
      
      private var var_596:String;
      
      private var var_167:Object;
      
      private var _type:String;
      
      private var var_2491:Boolean;
      
      private var var_2636:Boolean;
      
      private var var_2492:Array;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean, param5:Array = null)
      {
         super();
         this.var_596 = param1;
         this.var_167 = param2;
         this._type = param3;
         this.var_2491 = param4;
         this.var_2636 = param3 == const_248 || param3 == const_158 || param3 == const_239 || param3 == const_235;
         this.var_2492 = param5;
      }
      
      public function get key() : String
      {
         return this.var_596;
      }
      
      public function get value() : Object
      {
         return this.var_167;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get valid() : Boolean
      {
         return this.var_2491;
      }
      
      public function get range() : Array
      {
         return this.var_2492;
      }
      
      public function toString() : String
      {
         switch(this._type)
         {
            case const_176:
               return "0x" + uint(this.var_167).toString(16);
            case const_54:
               return Boolean(this.var_167) == true ? "true" : "false";
            case const_239:
               return "Point(" + Point(this.var_167).x + ", " + Point(this.var_167).y + ")";
            case const_235:
               return "Rectangle(" + Rectangle(this.var_167).x + ", " + Rectangle(this.var_167).y + ", " + Rectangle(this.var_167).width + ", " + Rectangle(this.var_167).height + ")";
            default:
               return String(this.value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(this._type)
         {
            case const_248:
               _loc3_ = this.var_167 as Map;
               _loc1_ = "<var key=\"" + this.var_596 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_158:
               _loc4_ = this.var_167 as Array;
               _loc1_ = "<var key=\"" + this.var_596 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_239:
               _loc5_ = this.var_167 as Point;
               _loc1_ = "<var key=\"" + this.var_596 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_52 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_52 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_235:
               _loc6_ = this.var_167 as Rectangle;
               _loc1_ = "<var key=\"" + this.var_596 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_52 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_52 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_52 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_52 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_176:
               _loc1_ = "<var key=\"" + this.var_596 + "\" value=\"" + "0x" + uint(this.var_167).toString(16) + "\" type=\"" + this._type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + this.var_596 + "\" value=\"" + this.var_167 + "\" type=\"" + this._type + "\" />";
         }
         return _loc1_;
      }
   }
}
