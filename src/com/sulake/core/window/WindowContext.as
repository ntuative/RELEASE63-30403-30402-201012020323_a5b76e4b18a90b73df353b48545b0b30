package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_485:uint = 0;
      
      public static const const_1395:uint = 1;
      
      public static const const_1655:int = 0;
      
      public static const const_1762:int = 1;
      
      public static const const_1701:int = 2;
      
      public static const const_1772:int = 3;
      
      public static const const_1366:int = 4;
      
      public static const const_345:int = 5;
      
      public static var var_1399:IMouseCursor;
      
      public static var var_345:IEventQueue;
      
      private static var var_603:IEventProcessor;
      
      private static var var_1796:uint = const_485;
      
      private static var stage:Stage;
      
      private static var var_133:IWindowRenderer;
       
      
      private var _eventProcessorState:EventProcessorState;
      
      private var var_2512:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_174:DisplayObjectContainer;
      
      protected var var_2645:Boolean = true;
      
      protected var var_1163:Error;
      
      protected var var_1876:int = -1;
      
      protected var var_1164:IInternalWindowServices;
      
      protected var var_1405:IWindowParser;
      
      protected var var_2601:IWindowFactory;
      
      protected var var_132:IDesktopWindow;
      
      protected var var_1406:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_506:Boolean = false;
      
      private var var_2513:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_133 = param2;
         this._localization = param4;
         this.var_174 = param5;
         this.var_1164 = new ServiceManager(this,param5);
         this.var_2601 = param3;
         this.var_1405 = new WindowParser(this);
         this.var_2512 = param7;
         if(!stage)
         {
            if(this.var_174 is Stage)
            {
               stage = this.var_174 as Stage;
            }
            else if(this.var_174.stage)
            {
               stage = this.var_174.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_132 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_174.addChild(this.var_132.getDisplayObject());
         this.var_174.doubleClickEnabled = true;
         this.var_174.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this._eventProcessorState = new EventProcessorState(var_133,this.var_132,this.var_132,null,this.var_2512);
         inputMode = const_485;
         this.var_1406 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1796;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_345)
         {
            if(var_345 is IDisposable)
            {
               IDisposable(var_345).dispose();
            }
         }
         if(var_603)
         {
            if(var_603 is IDisposable)
            {
               IDisposable(var_603).dispose();
            }
         }
         switch(value)
         {
            case const_485:
               var_345 = new MouseEventQueue(stage);
               var_603 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1395:
               var_345 = new TabletEventQueue(stage);
               var_603 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_485;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_174.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_174.removeChild(IGraphicContextHost(this.var_132).getGraphicContext(true) as DisplayObject);
            this.var_132.destroy();
            this.var_132 = null;
            this.var_1406.destroy();
            this.var_1406 = null;
            if(this.var_1164 is IDisposable)
            {
               IDisposable(this.var_1164).dispose();
            }
            this.var_1164 = null;
            this.var_1405.dispose();
            this.var_1405 = null;
            var_133 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1163;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_1876;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1163 = param2;
         this.var_1876 = param1;
         if(this.var_2645)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1163 = null;
         this.var_1876 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1164;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1405;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2601;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_132;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1399 == null)
         {
            var_1399 = new MouseCursorControl(this.var_174);
         }
         return var_1399;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_132.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:Class = Classes.getWindowClassByType(param3);
         if(_loc12_ == null)
         {
            this.handleError(WindowContext.const_1366,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1406;
            }
         }
         var _loc13_:IWindow = new _loc12_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_132,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc13_.caption = param2;
         }
         return _loc13_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_132)
         {
            this.var_132 = null;
         }
         if(param1.state != WindowState.const_406)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_133.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_506 = true;
         if(this.var_1163)
         {
            throw this.var_1163;
         }
         var_603.process(this._eventProcessorState,var_345);
         this.var_506 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2513 = true;
         var_133.update(param1);
         this.var_2513 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_132 != null && !this.var_132.disposed)
         {
            if(this.var_174 is Stage)
            {
               this.var_132.width = Stage(this.var_174).stageWidth;
               this.var_132.height = Stage(this.var_174).stageHeight;
            }
            else
            {
               this.var_132.width = this.var_174.width;
               this.var_132.height = this.var_174.height;
            }
         }
      }
   }
}
