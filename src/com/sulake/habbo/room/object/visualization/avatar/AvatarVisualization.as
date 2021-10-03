package com.sulake.habbo.room.object.visualization.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class AvatarVisualization extends RoomObjectSpriteVisualization implements IAvatarImageListener
   {
      
      private static const const_847:String = "avatar";
      
      private static const const_551:Number = -0.01;
      
      private static const const_550:Number = -0.409;
      
      private static const const_849:int = 2;
      
      private static const const_1158:Array = [0,0,0];
       
      
      private var var_567:AvatarVisualizationData = null;
      
      private var var_443:Map;
      
      private var var_1008:int = 0;
      
      private var var_851:Boolean;
      
      private var var_586:String;
      
      private var var_889:String;
      
      private var var_1007:int = 0;
      
      private var var_569:BitmapDataAsset;
      
      private var var_874:BitmapDataAsset;
      
      private var var_1599:int = -1;
      
      private var var_1693:int = -1;
      
      private var var_1692:int = -1;
      
      private const const_848:int = 0;
      
      private const const_1540:int = 1;
      
      private const const_1548:int = 2;
      
      private const const_1547:int = 3;
      
      private const const_1157:int = 4;
      
      private var var_1772:int = -1;
      
      private var var_235:String = "";
      
      private var _postureParameter:String = "";
      
      private var var_1696:Boolean = false;
      
      private var var_1697:Boolean = false;
      
      private var var_1691:Boolean = false;
      
      private var var_1305:Boolean = false;
      
      private var var_799:Boolean = false;
      
      private var var_1256:int = 0;
      
      private var var_1304:int = 0;
      
      private var var_2318:int = 0;
      
      private var var_1302:int = 0;
      
      private var var_700:int = 0;
      
      private var var_568:int = 0;
      
      private var var_1303:int = 0;
      
      private var var_1046:Boolean = false;
      
      private var var_1695:Boolean = false;
      
      private var var_1044:int = 0;
      
      private var var_701:int = 0;
      
      private var var_1694:Boolean = false;
      
      private var var_1045:int = 0;
      
      private var var_54:IAvatarImage = null;
      
      private var var_668:Boolean;
      
      public function AvatarVisualization()
      {
         super();
         this.var_443 = new Map();
         this.var_851 = false;
      }
      
      override public function dispose() : void
      {
         if(this.var_443 != null)
         {
            this.resetImages();
            this.var_443.dispose();
            this.var_443 = null;
         }
         this.var_567 = null;
         this.var_569 = null;
         this.var_874 = null;
         super.dispose();
         this.var_668 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_668;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.var_567 = param1 as AvatarVisualizationData;
         createSprites(this.const_1157);
         return true;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number, param3:Boolean) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:* = false;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(param1.getUpdateID() != var_215)
         {
            _loc4_ = false;
            _loc5_ = false;
            _loc6_ = 0;
            _loc7_ = "";
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_251) > 0 && param3);
            if(_loc5_ != this.var_1696)
            {
               this.var_1696 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_250) > 0;
            if(_loc5_ != this.var_1697)
            {
               this.var_1697 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_402) > 0;
            if(_loc5_ != this.var_1691)
            {
               this.var_1691 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_644) > 0 && param3);
            if(_loc5_ != this.var_1305)
            {
               this.var_1305 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_1013) > 0;
            if(_loc5_ != this.var_799)
            {
               this.var_799 = _loc5_;
               _loc4_ = true;
               this.updateTypingBubble(param2);
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_280);
            if(_loc6_ != this.var_1256)
            {
               this.var_1256 = _loc6_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_471);
            if(_loc7_ != this.var_235)
            {
               this.var_235 = _loc7_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_568);
            if(_loc7_ != this._postureParameter)
            {
               this._postureParameter = _loc7_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_1026);
            if(_loc6_ != this.var_1304)
            {
               this.var_1304 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_395);
            if(_loc6_ != this.var_1302)
            {
               this.var_1302 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_444);
            if(_loc6_ != this.var_700)
            {
               this.var_700 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_361);
            if(_loc6_ != this.var_568)
            {
               this.var_568 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_334);
            if(_loc6_ != this.var_1599)
            {
               this.var_1599 = _loc6_;
               _loc4_ = true;
            }
            if(this.var_700 > 0 && param1.getNumber(RoomObjectVariableEnum.const_361) > 0)
            {
               if(this.var_568 != this.var_700)
               {
                  this.var_568 = this.var_700;
                  _loc4_ = true;
               }
            }
            else if(this.var_568 != 0)
            {
               this.var_568 = 0;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_774);
            if(_loc6_ != this.var_1044)
            {
               this.var_1044 = _loc6_;
               _loc4_ = true;
               this.updateNumberBubble(param2);
            }
            this.validateActions(param2);
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_955);
            if(_loc7_ != this.var_889)
            {
               this.var_889 = _loc7_;
               _loc4_ = true;
            }
            _loc8_ = param1.getString(RoomObjectVariableEnum.const_175);
            if(this.updateFigure(_loc8_))
            {
               _loc4_ = true;
            }
            var_215 = param1.getUpdateID();
            return _loc4_;
         }
         return false;
      }
      
      private function updateFigure(param1:String) : Boolean
      {
         if(this.var_586 != param1)
         {
            this.var_586 = param1;
            this.resetImages();
            return true;
         }
         return false;
      }
      
      private function resetImages() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in this.var_443)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.var_443.reset();
         this.var_54 = null;
         _loc2_ = getSprite(this.const_848);
         if(_loc2_ != null)
         {
            _loc2_.asset = null;
            _loc2_.alpha = 255;
         }
      }
      
      private function validateActions(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(param1 < 48)
         {
            this.var_1305 = false;
         }
         if(this.var_235 == "sit" || this.var_235 == "lay")
         {
            this.var_1303 = param1 / 2;
         }
         else
         {
            this.var_1303 = 0;
         }
         this.var_1695 = false;
         this.var_1046 = false;
         if(this.var_235 == "lay")
         {
            this.var_1046 = true;
            _loc2_ = int(this._postureParameter);
            if(_loc2_ < 0)
            {
               this.var_1695 = true;
            }
         }
      }
      
      private function getAvatarImage(param1:Number) : IAvatarImage
      {
         var _loc2_:String = "avatarImage" + param1.toString();
         var _loc3_:IAvatarImage = this.var_443.getValue(_loc2_) as IAvatarImage;
         if(_loc3_ == null)
         {
            _loc3_ = this.var_567.getAvatar(this.var_586,param1,this.var_889,this);
            if(_loc3_ != null)
            {
               this.var_443.add(_loc2_,_loc3_);
            }
         }
         return _loc3_;
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean, param4:Boolean = false) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param4 || var_408 != param1.getUpdateID() || this.var_1772 != param2.updateId)
         {
            _loc5_ = param3;
            _loc6_ = param1.getDirection().x - param2.direction.x;
            _loc6_ = (_loc6_ % 360 + 360) % 360;
            _loc7_ = this.var_1599;
            if(this.var_235 == "float")
            {
               _loc7_ = _loc6_;
            }
            else
            {
               _loc7_ -= param2.direction.x;
            }
            _loc7_ = (_loc7_ % 360 + 360) % 360;
            if(_loc6_ != this.var_1693 || param4)
            {
               _loc5_ = true;
               this.var_1693 = _loc6_;
               _loc6_ -= 112.5;
               _loc6_ = (_loc6_ + 360) % 360;
               this.var_54.setDirectionAngle(AvatarSetType.const_32,_loc6_);
            }
            if(_loc7_ != this.var_1692 || param4)
            {
               _loc5_ = true;
               this.var_1692 = _loc7_;
               if(this.var_1692 != this.var_1693)
               {
                  _loc7_ -= 112.5;
                  _loc7_ = (_loc7_ + 360) % 360;
                  this.var_54.setDirectionAngle(AvatarSetType.const_44,_loc7_);
               }
            }
            var_408 = param1.getUpdateID();
            this.var_1772 = param2.updateId;
            return _loc5_;
         }
         return false;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1540);
         this.var_569 = null;
         if(this.var_235 == "mv" || this.var_235 == "std")
         {
            _loc2_.visible = true;
            if(this.var_569 == null || param1 != var_252)
            {
               _loc3_ = 0;
               _loc4_ = 0;
               if(param1 < 48)
               {
                  this.var_569 = this.var_54.getAsset("sh_std_sd_1_0_0");
                  _loc3_ = -8;
                  _loc4_ = -3;
               }
               else
               {
                  this.var_569 = this.var_54.getAsset("h_std_sd_1_0_0");
                  _loc3_ = -17;
                  _loc4_ = -7;
               }
               if(this.var_569 != null)
               {
                  _loc2_.asset = this.var_569.content as BitmapData;
                  _loc2_.offsetX = _loc3_;
                  _loc2_.offsetY = _loc4_;
                  _loc2_.alpha = 50;
                  _loc2_.relativeDepth = 1;
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
         }
         else
         {
            this.var_569 = null;
            _loc2_.visible = false;
         }
      }
      
      private function updateTypingBubble(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.var_874 = null;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1548);
         if(this.var_799)
         {
            _loc2_.visible = true;
            _loc5_ = 64;
            if(param1 < 48)
            {
               this.var_874 = this.var_567.getAvatarRendererAsset("user_typing_small_png") as BitmapDataAsset;
               _loc3_ = 3;
               _loc4_ = -42;
               _loc5_ = 32;
            }
            else
            {
               this.var_874 = this.var_567.getAvatarRendererAsset("user_typing_png") as BitmapDataAsset;
               _loc3_ = 14;
               _loc4_ = -83;
            }
            if(this.var_235 == "sit")
            {
               _loc4_ += _loc5_ / 2;
            }
            else if(this.var_235 == "lay")
            {
               _loc4_ += _loc5_;
            }
            if(this.var_874 != null)
            {
               _loc2_.asset = this.var_874.content as BitmapData;
               _loc2_.offsetX = _loc3_;
               _loc2_.offsetY = _loc4_;
               _loc2_.relativeDepth = -0.02;
            }
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function updateNumberBubble(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:* = null;
         var _loc3_:IRoomObjectSprite = getSprite(this.const_1547);
         if(this.var_1044 > 0)
         {
            _loc6_ = 64;
            if(param1 < 48)
            {
               _loc2_ = this.var_567.getAvatarRendererAsset("number_" + this.var_1044 + "_small_png") as BitmapDataAsset;
               _loc4_ = -6;
               _loc5_ = -52;
               _loc6_ = 32;
            }
            else
            {
               _loc2_ = this.var_567.getAvatarRendererAsset("number_" + this.var_1044 + "_png") as BitmapDataAsset;
               _loc4_ = -8;
               _loc5_ = -105;
            }
            if(this.var_235 == "sit")
            {
               _loc5_ += _loc6_ / 2;
            }
            else if(this.var_235 == "lay")
            {
               _loc5_ += _loc6_;
            }
            if(_loc2_ != null)
            {
               _loc3_.visible = true;
               _loc3_.asset = _loc2_.content as BitmapData;
               _loc3_.offsetX = _loc4_;
               _loc3_.offsetY = _loc5_;
               _loc3_.relativeDepth = -0.01;
               this.var_701 = 1;
               this.var_1694 = true;
               this.var_1045 = 0;
               _loc3_.alpha = 0;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         else if(_loc3_.visible)
         {
            this.var_701 = -1;
         }
      }
      
      private function animateNumberBubble(param1:int) : Boolean
      {
         var _loc5_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1547);
         var _loc3_:int = _loc2_.alpha;
         var _loc4_:Boolean = false;
         if(this.var_1694)
         {
            ++this.var_1045;
            if(this.var_1045 < 10)
            {
               return false;
            }
            if(this.var_701 < 0)
            {
               if(param1 < 48)
               {
                  _loc2_.offsetY -= 2;
               }
               else
               {
                  _loc2_.offsetY -= 4;
               }
            }
            else
            {
               _loc5_ = 4;
               if(param1 < 48)
               {
                  _loc5_ = 8;
               }
               if(this.var_1045 % _loc5_ == 0)
               {
                  --_loc2_.offsetY;
                  _loc4_ = true;
               }
            }
         }
         if(this.var_701 > 0)
         {
            if(_loc3_ < 255)
            {
               _loc3_ += 32;
            }
            if(_loc3_ >= 255)
            {
               _loc3_ = 255;
               this.var_701 = 0;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         if(this.var_701 < 0)
         {
            if(_loc3_ >= 0)
            {
               _loc3_ -= 32;
            }
            if(_loc3_ <= 0)
            {
               this.var_701 = 0;
               this.var_1694 = false;
               _loc3_ = 0;
               _loc2_.visible = false;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         return _loc4_;
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean) : void
      {
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:int = 0;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:* = null;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:int = 0;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:* = null;
         var _loc29_:* = null;
         var _loc4_:IRoomObject = object;
         if(_loc4_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(this.var_567 == null)
         {
            return;
         }
         var _loc5_:IRoomObjectModel = _loc4_.getModel();
         var _loc6_:Number = param1.scale;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = this.updateModel(_loc5_,_loc6_,param3);
         if(this.animateNumberBubble(_loc6_))
         {
            increaseUpdateId();
         }
         if(_loc10_ || _loc6_ != var_252 || this.var_54 == null)
         {
            if(_loc6_ != var_252)
            {
               _loc8_ = true;
               this.validateActions(_loc6_);
            }
            if(_loc8_ || this.var_54 == null)
            {
               this.var_54 = this.getAvatarImage(_loc6_);
               if(this.var_54 == null)
               {
                  return;
               }
               _loc7_ = true;
               _loc13_ = getSprite(this.const_848);
               if(_loc13_ && this.var_54 && this.var_54.isPlaceholder())
               {
                  _loc13_.alpha = 150;
               }
               else if(_loc13_)
               {
                  _loc13_.alpha = 255;
               }
            }
            if(this.var_54 == null)
            {
               return;
            }
            this.updateShadow(_loc6_);
            if(_loc8_)
            {
               this.updateTypingBubble(_loc6_);
               this.updateNumberBubble(_loc6_);
            }
            _loc9_ = this.updateObject(_loc4_,param1,param3,true);
            this.updateActions(this.var_54);
            var_252 = _loc6_;
         }
         else
         {
            _loc9_ = this.updateObject(_loc4_,param1,param3);
         }
         var _loc11_:Boolean = _loc9_ || _loc10_ || _loc8_;
         var _loc12_:Boolean = (this.var_851 || this.var_1007 > 0) && param3;
         if(_loc11_)
         {
            this.var_1007 = const_849;
         }
         if(_loc11_ || _loc12_)
         {
            increaseUpdateId();
            --this.var_1007;
            --this.var_1008;
            if(!(this.var_1008 <= 0 || _loc8_ || _loc10_ || _loc7_))
            {
               return;
            }
            this.var_54.updateAnimationByFrames(1);
            this.var_1008 = const_849;
            _loc15_ = this.var_54.getCanvasOffsets();
            if(_loc15_ == null || _loc15_.length < 3)
            {
               _loc15_ = const_1158;
            }
            _loc14_ = getSprite(this.const_848);
            if(_loc14_ != null)
            {
               _loc18_ = this.var_54.getImage(AvatarSetType.const_32,false);
               if(_loc18_ != null)
               {
                  _loc14_.asset = _loc18_;
               }
               if(_loc14_.asset)
               {
                  _loc14_.offsetX = -1 * _loc6_ / 2 + _loc15_[0];
                  _loc14_.offsetY = -_loc14_.asset.height + _loc6_ / 4 + _loc15_[1] + this.var_1303;
               }
               if(this.var_1046)
               {
                  if(this.var_1695)
                  {
                     _loc14_.relativeDepth = -0.5;
                  }
                  else
                  {
                     _loc14_.relativeDepth = const_550 + _loc15_[2];
                  }
               }
               else
               {
                  _loc14_.relativeDepth = const_551 + _loc15_[2];
               }
            }
            _loc14_ = getSprite(this.const_1548);
            if(_loc14_ != null && _loc14_.visible)
            {
               if(!this.var_1046)
               {
                  _loc14_.relativeDepth = const_551 - 0.01 + _loc15_[2];
               }
               else
               {
                  _loc14_.relativeDepth = const_550 - 0.01 + _loc15_[2];
               }
            }
            this.var_851 = this.var_54.isAnimating();
            _loc16_ = this.const_1157;
            for each(_loc17_ in this.var_54.getSprites())
            {
               if(_loc17_.id == const_847)
               {
                  _loc14_ = getSprite(this.const_848);
                  _loc19_ = this.var_54.getLayerData(_loc17_);
                  _loc20_ = _loc17_.getDirectionOffsetX(this.var_54.getDirection());
                  _loc21_ = _loc17_.getDirectionOffsetY(this.var_54.getDirection());
                  if(_loc19_ != null)
                  {
                     _loc20_ += _loc19_.dx;
                     _loc21_ += _loc19_.dy;
                  }
                  if(_loc6_ < 48)
                  {
                     _loc20_ /= 2;
                     _loc21_ /= 2;
                  }
                  _loc14_.offsetX += _loc20_;
                  _loc14_.offsetY += _loc21_;
               }
               else
               {
                  _loc14_ = getSprite(_loc16_);
                  if(_loc14_ != null)
                  {
                     _loc14_.capturesMouse = false;
                     _loc14_.visible = true;
                     _loc22_ = this.var_54.getLayerData(_loc17_);
                     _loc23_ = 0;
                     _loc24_ = _loc17_.getDirectionOffsetX(this.var_54.getDirection());
                     _loc25_ = _loc17_.getDirectionOffsetY(this.var_54.getDirection());
                     _loc26_ = _loc17_.getDirectionOffsetZ(this.var_54.getDirection());
                     _loc27_ = 0;
                     if(_loc17_.hasDirections)
                     {
                        _loc27_ = this.var_54.getDirection();
                     }
                     if(_loc22_ != null)
                     {
                        _loc23_ = _loc22_.animationFrame;
                        _loc24_ += _loc22_.dx;
                        _loc25_ += _loc22_.dy;
                        _loc27_ += _loc22_.directionOffset;
                     }
                     if(_loc6_ < 48)
                     {
                        _loc24_ /= 2;
                        _loc25_ /= 2;
                     }
                     if(_loc27_ < 0)
                     {
                        _loc27_ += 8;
                     }
                     else if(_loc27_ > 7)
                     {
                        _loc27_ -= 8;
                     }
                     _loc28_ = this.var_54.getScale() + "_" + _loc17_.member + "_" + _loc27_ + "_" + _loc23_;
                     _loc29_ = this.var_54.getAsset(_loc28_);
                     if(_loc29_ == null)
                     {
                        continue;
                     }
                     _loc14_.asset = _loc29_.content as BitmapData;
                     _loc14_.offsetX = -_loc29_.offset.x - _loc6_ / 2 + _loc24_;
                     _loc14_.offsetY = -_loc29_.offset.y + _loc25_ + this.var_1303;
                     if(this.var_1046)
                     {
                        _loc14_.relativeDepth = const_550 - 0.001 * spriteCount * _loc26_;
                     }
                     else
                     {
                        _loc14_.relativeDepth = const_551 - 0.001 * spriteCount * _loc26_;
                     }
                     if(_loc17_.ink == 33)
                     {
                        _loc14_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc14_.blendMode = BlendMode.NORMAL;
                     }
                  }
                  _loc16_++;
               }
            }
         }
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_328,this.var_235,this._postureParameter);
         if(this.var_1256 > 0)
         {
            param1.appendAction(AvatarAction.const_287,AvatarAction.const_1426[this.var_1256]);
         }
         if(this.var_1304 > 0)
         {
            param1.appendAction(AvatarAction.const_770,this.var_1304);
         }
         if(this.var_2318 > 0)
         {
            param1.appendAction(AvatarAction.const_612,this.var_2318);
         }
         if(this.var_700 > 0)
         {
            param1.appendAction(AvatarAction.const_590,this.var_700);
         }
         if(this.var_568 > 0)
         {
            param1.appendAction(AvatarAction.const_652,this.var_568);
         }
         if(this.var_1696)
         {
            param1.appendAction(AvatarAction.const_300);
         }
         if(this.var_1691 || this.var_1305)
         {
            param1.appendAction(AvatarAction.const_524);
         }
         if(this.var_1697)
         {
            param1.appendAction(AvatarAction.const_231);
         }
         if(this.var_1302 > 0)
         {
            param1.appendAction(AvatarAction.const_274,this.var_1302);
         }
         param1.endActionAppends();
         this.var_851 = param1.isAnimating();
         var _loc2_:int = this.const_1157;
         for each(_loc3_ in this.var_54.getSprites())
         {
            if(_loc3_.id != const_847)
            {
               _loc2_++;
            }
         }
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.resetImages();
      }
   }
}
