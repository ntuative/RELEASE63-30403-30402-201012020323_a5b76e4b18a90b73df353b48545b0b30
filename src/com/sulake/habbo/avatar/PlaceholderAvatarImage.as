package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_735:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_668)
         {
            _structure = null;
            _assets = null;
            var_250 = null;
            var_256 = null;
            var_586 = null;
            var_511 = null;
            var_288 = null;
            if(!var_1168 && var_39)
            {
               var_39.dispose();
            }
            var_39 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_694 = null;
            var_668 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_735[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_735[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_328:
               switch(_loc3_)
               {
                  case AvatarAction.const_700:
                  case AvatarAction.const_421:
                  case AvatarAction.const_353:
                  case AvatarAction.const_753:
                  case AvatarAction.const_335:
                  case AvatarAction.const_616:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_274:
            case AvatarAction.const_770:
            case AvatarAction.const_231:
            case AvatarAction.const_612:
            case AvatarAction.const_590:
            case AvatarAction.const_652:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
