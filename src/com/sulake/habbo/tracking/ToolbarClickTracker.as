package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1170:IHabboTracking;
      
      private var var_1477:Boolean = false;
      
      private var var_2372:int = 0;
      
      private var var_1720:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1170 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1170 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1477 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2372 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1477)
         {
            return;
         }
         ++this.var_1720;
         if(this.var_1720 <= this.var_2372)
         {
            this.var_1170.track("toolbar",param1);
         }
      }
   }
}
