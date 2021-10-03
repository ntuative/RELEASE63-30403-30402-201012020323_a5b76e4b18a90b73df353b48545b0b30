package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_338:int = 1;
      
      public static const const_226:int = 2;
      
      public static const const_303:int = 3;
      
      public static const const_358:int = 4;
      
      public static const const_200:int = 5;
      
      public static const const_322:int = 1;
      
      public static const const_771:int = 2;
      
      public static const const_692:int = 3;
      
      public static const const_756:int = 4;
      
      public static const const_218:int = 5;
      
      public static const const_670:int = 6;
      
      public static const const_634:int = 7;
      
      public static const const_242:int = 8;
      
      public static const const_366:int = 9;
      
      public static const const_1659:int = 10;
      
      public static const const_647:int = 11;
      
      public static const const_529:int = 12;
       
      
      private var var_392:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_392 = new Array();
         this.var_392.push(new Tab(this._navigator,const_338,const_529,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_422));
         this.var_392.push(new Tab(this._navigator,const_226,const_322,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_422));
         this.var_392.push(new Tab(this._navigator,const_358,const_647,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_967));
         this.var_392.push(new Tab(this._navigator,const_303,const_218,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_422));
         this.var_392.push(new Tab(this._navigator,const_200,const_242,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_704));
         this.setSelectedTab(const_338);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_358;
      }
      
      public function get tabs() : Array
      {
         return this.var_392;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_392)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_392)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_392)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
