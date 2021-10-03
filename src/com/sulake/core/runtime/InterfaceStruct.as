package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_395:uint;
      
      private var var_984:IUnknown;
      
      private var var_1150:String;
      
      private var var_983:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_983 = param1;
         var_1150 = getQualifiedClassName(var_983);
         var_984 = param2;
         var_395 = 0;
      }
      
      public function get iid() : IID
      {
         return var_983;
      }
      
      public function get disposed() : Boolean
      {
         return var_984 == null;
      }
      
      public function get references() : uint
      {
         return var_395;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_395) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_984;
      }
      
      public function get iis() : String
      {
         return var_1150;
      }
      
      public function reserve() : uint
      {
         return ++var_395;
      }
      
      public function dispose() : void
      {
         var_983 = null;
         var_1150 = null;
         var_984 = null;
         var_395 = 0;
      }
   }
}
