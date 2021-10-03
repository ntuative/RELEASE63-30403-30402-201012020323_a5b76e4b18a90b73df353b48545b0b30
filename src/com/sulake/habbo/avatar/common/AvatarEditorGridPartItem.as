package com.sulake.habbo.avatar.common
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IIconWindow;
   import com.sulake.habbo.avatar.AvatarFigureContainer;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.IAvatarRenderManager;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import com.sulake.habbo.avatar.structure.figure.IFigurePart;
   import com.sulake.habbo.avatar.structure.figure.IFigurePartSet;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import com.sulake.habbo.session.HabboClubLevelEnum;
   import com.sulake.habbo.window.enum.HabboIconType;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class AvatarEditorGridPartItem implements IAvatarImageListener
   {
      
      private static var var_51:Array = [];
      
      {
         var_51.push("li");
         var_51.push("lh");
         var_51.push("ls");
         var_51.push("lc");
         var_51.push("bd");
         var_51.push("sh");
         var_51.push("lg");
         var_51.push("ch");
         var_51.push("ca");
         var_51.push("cc");
         var_51.push("cp");
         var_51.push("wa");
         var_51.push("rh");
         var_51.push("rs");
         var_51.push("rc");
         var_51.push("hd");
         var_51.push("fc");
         var_51.push("ey");
         var_51.push("hr");
         var_51.push("hrb");
         var_51.push("fa");
         var_51.push("ea");
         var_51.push("ha");
         var_51.push("he");
         var_51.push("ri");
      }
      
      private var var_62:IAvatarEditorCategoryModel;
      
      private var _window:IWindowContainer;
      
      private var var_653:IFigurePartSet;
      
      private var _colors:Array;
      
      private var var_1508:Boolean;
      
      private var _isSelected:Boolean = false;
      
      private var var_617:BitmapData;
      
      private var var_529:Rectangle;
      
      private var var_1506:int = 0;
      
      private var var_360:IAvatarRenderManager;
      
      private var var_668:Boolean;
      
      private var var_1507:BitmapData;
      
      private const const_1804:int = 13421772;
      
      private const const_1805:int = 16777215;
      
      private const const_309:Array = [2,6,0,4,3,1];
      
      public function AvatarEditorGridPartItem(param1:IWindowContainer, param2:IAvatarEditorCategoryModel, param3:IFigurePartSet, param4:Array, param5:Boolean = true)
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this.var_62 = param2;
         this.var_653 = param3;
         this._window = param1;
         this._colors = param4;
         this.var_1508 = param5;
         if(param3 == null)
         {
            this.var_617 = new BitmapData(1,1,true,16777215);
         }
         if(param3 != null)
         {
            _loc7_ = param3.parts;
            for each(_loc6_ in _loc7_)
            {
               this.var_1506 = Math.max(this.var_1506,_loc6_.colorLayerIndex);
            }
         }
         this.var_360 = this.var_62.controller.avatarRenderManager;
         this.updateThumbVisualization();
      }
      
      public function dispose() : void
      {
         this.var_62 = null;
         this.var_653 = null;
         if(this._window != null)
         {
            if(!this._window.disposed)
            {
               this._window.dispose();
            }
         }
         this._window = null;
         if(this.var_617)
         {
            this.var_617.dispose();
         }
         this.var_617 = null;
         this.var_668 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_668;
      }
      
      public function get view() : IWindowContainer
      {
         return this._window;
      }
      
      public function get isSelected() : Boolean
      {
         return this._isSelected;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         this._isSelected = param1;
         this.updateThumbVisualization();
      }
      
      public function get id() : int
      {
         if(this.var_653 == null)
         {
            return -1;
         }
         return this.var_653.id;
      }
      
      public function get colorLayerCount() : int
      {
         return this.var_1506;
      }
      
      public function update() : void
      {
         this.updateThumbVisualization();
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         this.var_617 = param1;
         this.updateThumbVisualization();
      }
      
      public function get partSet() : IFigurePartSet
      {
         return this.var_653;
      }
      
      public function set colors(param1:Array) : void
      {
         this._colors = param1;
         this.updateThumbVisualization();
      }
      
      private function updateThumbVisualization() : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(!this._window || this._window.disposed)
         {
            return;
         }
         var _loc1_:IBitmapWrapperWindow = this._window.findChildByName("bitmap") as IBitmapWrapperWindow;
         if(_loc1_)
         {
            if(this.var_617 != null && !this.var_1508)
            {
               _loc3_ = this.var_617;
            }
            else
            {
               _loc3_ = this.renderThumb();
               if(!_loc3_)
               {
                  return;
               }
            }
            _loc4_ = !!_loc1_.bitmap ? _loc1_.bitmap : new BitmapData(_loc1_.width,_loc1_.height);
            _loc4_.fillRect(_loc4_.rect,16777215);
            _loc5_ = (_loc4_.width - _loc3_.width) / 2;
            _loc6_ = (_loc4_.height - _loc3_.height) / 2;
            _loc4_.copyPixels(_loc3_,_loc3_.rect,new Point(_loc5_,_loc6_),null,null,true);
            _loc1_.bitmap = _loc4_;
         }
         var _loc2_:IIconWindow = this._window.findChildByTag("CLUB_ICON") as IIconWindow;
         if(_loc2_)
         {
            if(this.var_653)
            {
               switch(this.var_653.clubLevel)
               {
                  case HabboClubLevelEnum.const_49:
                     _loc2_.visible = false;
                     break;
                  case HabboClubLevelEnum.const_60:
                     _loc2_.style = HabboIconType.const_651;
                     break;
                  case HabboClubLevelEnum.const_53:
                     _loc2_.style = HabboIconType.const_626;
               }
            }
            else
            {
               _loc2_.visible = false;
            }
         }
         if(this.isSelected)
         {
            this._window.color = this.const_1804;
         }
         else
         {
            this._window.color = this.const_1805;
         }
         this._window.invalidate();
      }
      
      private function analyzePartLayers() : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(this.var_62 == null)
         {
            this.var_529 = null;
            return false;
         }
         if(!this.partSet || !this.partSet.parts || this.partSet.parts.length == 0)
         {
            this.var_529 = null;
            return false;
         }
         if(!this.var_360)
         {
            return false;
         }
         var _loc1_:AvatarFigureContainer = this.var_360.createFigureContainer(this.partSet.type + "-" + this.partSet.id);
         Logger.log("QUERYING SET:" + this.partSet.type + "-" + this.partSet.id);
         if(!this.var_360.isFigureReady(_loc1_))
         {
            this.var_360.downloadFigure(_loc1_,this);
            return false;
         }
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Rectangle = new Rectangle();
         for each(_loc2_ in this.partSet.parts)
         {
            if(_loc7_)
            {
               _loc3_ = "undefined_undefined_" + _loc2_.type + "_" + _loc2_.id + "_" + this.const_309[_loc6_] + "_" + FigureData.const_137;
               _loc4_ = this.var_360.getAssetByName(_loc3_) as BitmapDataAsset;
            }
            else
            {
               _loc6_ = 0;
               while(!_loc7_ && _loc6_ < this.const_309.length)
               {
                  _loc3_ = "undefined_undefined_" + _loc2_.type + "_" + _loc2_.id + "_" + this.const_309[_loc6_] + "_" + FigureData.const_137;
                  _loc4_ = this.var_360.getAssetByName(_loc3_) as BitmapDataAsset;
                  if(_loc4_ && _loc4_.content)
                  {
                     _loc7_ = true;
                  }
                  else
                  {
                     _loc6_++;
                  }
               }
            }
            if(_loc4_ && _loc4_.content)
            {
               _loc5_ = _loc4_.content as BitmapData;
               _loc8_ = _loc8_.union(new Rectangle(-1 * _loc4_.offset.x,-1 * _loc4_.offset.y,_loc5_.width,_loc5_.height));
            }
         }
         if(_loc8_ && _loc8_.width > 0)
         {
            this.var_529 = _loc8_;
            return true;
         }
         return false;
      }
      
      private function renderThumb() : BitmapData
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc9_:* = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:* = null;
         if(this.partSet == null)
         {
            return null;
         }
         if(this.var_62 == null)
         {
            return null;
         }
         if(this.var_529 == null)
         {
            if(!this.analyzePartLayers())
            {
               if(!this.var_1507)
               {
                  _loc9_ = this.var_62.controller.assets.getAssetByName("avatar_editor_download_icon");
                  this.var_1507 = _loc9_.content as BitmapData;
               }
               return this.var_1507;
            }
         }
         if(!this.var_360)
         {
            return null;
         }
         _loc1_ = new BitmapData(this.var_529.width,this.var_529.height,true,16777215);
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Array = this.partSet.parts.concat().sort(this.sortByDrawOrder);
         for each(_loc2_ in _loc8_)
         {
            if(_loc7_)
            {
               _loc3_ = "undefined_undefined_" + _loc2_.type + "_" + _loc2_.id + "_" + this.const_309[_loc6_] + "_" + FigureData.const_137;
               _loc4_ = this.var_360.getAssetByName(_loc3_) as BitmapDataAsset;
            }
            else
            {
               _loc6_ = 0;
               while(!_loc7_ && _loc6_ < this.const_309.length)
               {
                  _loc3_ = "undefined_undefined_" + _loc2_.type + "_" + _loc2_.id + "_" + this.const_309[_loc6_] + "_" + FigureData.const_137;
                  _loc4_ = this.var_360.getAssetByName(_loc3_) as BitmapDataAsset;
                  if(_loc4_ && _loc4_.content)
                  {
                     _loc7_ = true;
                  }
                  else
                  {
                     _loc6_++;
                  }
               }
            }
            if(_loc4_)
            {
               _loc5_ = (_loc4_.content as BitmapData).clone();
               _loc10_ = -1 * _loc4_.offset.x - this.var_529.x;
               _loc11_ = -1 * _loc4_.offset.y - this.var_529.y;
               if(this.var_1508 && _loc2_.colorLayerIndex > 0)
               {
                  _loc12_ = this._colors[_loc2_.colorLayerIndex - 1];
                  if(_loc12_ != null)
                  {
                     _loc5_.colorTransform(_loc5_.rect,_loc12_.colorTransform);
                  }
               }
               _loc1_.copyPixels(_loc5_,_loc5_.rect,new Point(_loc10_,_loc11_),null,null,true);
            }
            else
            {
               Logger.log("Could not find asset: " + _loc3_);
            }
         }
         return _loc1_;
      }
      
      private function sortByDrawOrder(param1:IFigurePart, param2:IFigurePart) : Number
      {
         var _loc3_:Number = var_51.indexOf(param1.type);
         var _loc4_:Number = var_51.indexOf(param2.type);
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         if(param1.index < param2.index)
         {
            return -1;
         }
         if(param1.index > param2.index)
         {
            return 1;
         }
         return 0;
      }
      
      public function avatarImageReady(param1:String) : void
      {
         if(!this.analyzePartLayers())
         {
            return;
         }
         this.updateThumbVisualization();
      }
   }
}
