package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2612:uint;
      
      private var var_129:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_234:IWindowContext;
      
      private var var_977:IMouseDraggingService;
      
      private var var_973:IMouseScalingService;
      
      private var var_976:IMouseListenerService;
      
      private var var_974:IFocusManagerService;
      
      private var var_975:IToolTipAgentService;
      
      private var var_978:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2612 = 0;
         this.var_129 = param2;
         this.var_234 = param1;
         this.var_977 = new WindowMouseDragger(param2);
         this.var_973 = new WindowMouseScaler(param2);
         this.var_976 = new WindowMouseListener(param2);
         this.var_974 = new FocusManager(param2);
         this.var_975 = new WindowToolTipAgent(param2);
         this.var_978 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_977 != null)
         {
            this.var_977.dispose();
            this.var_977 = null;
         }
         if(this.var_973 != null)
         {
            this.var_973.dispose();
            this.var_973 = null;
         }
         if(this.var_976 != null)
         {
            this.var_976.dispose();
            this.var_976 = null;
         }
         if(this.var_974 != null)
         {
            this.var_974.dispose();
            this.var_974 = null;
         }
         if(this.var_975 != null)
         {
            this.var_975.dispose();
            this.var_975 = null;
         }
         if(this.var_978 != null)
         {
            this.var_978.dispose();
            this.var_978 = null;
         }
         this.var_129 = null;
         this.var_234 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_977;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_973;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_976;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_974;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_975;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_978;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
