package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1173:IID;
      
      private var var_1412:String;
      
      private var var_109:IUnknown;
      
      private var var_625:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1173 = param1;
         this.var_1412 = getQualifiedClassName(this.var_1173);
         this.var_109 = param2;
         this.var_625 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1173;
      }
      
      public function get iis() : String
      {
         return this.var_1412;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_109;
      }
      
      public function get references() : uint
      {
         return this.var_625;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_109 == null;
      }
      
      public function dispose() : void
      {
         this.var_1173 = null;
         this.var_1412 = null;
         this.var_109 = null;
         this.var_625 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_625;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_625) : uint(0);
      }
   }
}
