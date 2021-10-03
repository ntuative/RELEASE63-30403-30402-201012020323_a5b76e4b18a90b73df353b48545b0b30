package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1761:IID;
      
      private var var_668:Boolean;
      
      private var var_1092:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1761 = param1;
         this.var_1092 = new Array();
         this.var_668 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1761;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_668;
      }
      
      public function get receivers() : Array
      {
         return this.var_1092;
      }
      
      public function dispose() : void
      {
         if(!this.var_668)
         {
            this.var_668 = true;
            this.var_1761 = null;
            while(this.var_1092.length > 0)
            {
               this.var_1092.pop();
            }
            this.var_1092 = null;
         }
      }
   }
}
