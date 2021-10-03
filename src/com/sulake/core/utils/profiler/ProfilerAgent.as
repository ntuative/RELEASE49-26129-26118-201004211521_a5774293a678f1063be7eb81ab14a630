package com.sulake.core.utils.profiler
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import flash.utils.getQualifiedClassName;
   
   public class ProfilerAgent extends ProfilerAgentTask implements IDisposable
   {
       
      
      protected var var_947:IUpdateReceiver;
      
      public function ProfilerAgent(param1:IUpdateReceiver)
      {
         var_947 = param1;
         var _loc2_:String = getQualifiedClassName(var_947);
         super(_loc2_.slice(_loc2_.lastIndexOf(":") + 1,_loc2_.length));
      }
      
      override public function dispose() : void
      {
         var_947 = null;
         super.dispose();
      }
      
      public function get receiver() : IUpdateReceiver
      {
         return var_947;
      }
      
      public function update(param1:int) : void
      {
         super.start();
         var_947.update(param1);
         super.stop();
      }
   }
}
