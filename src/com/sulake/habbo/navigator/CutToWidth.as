package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToWidth implements BinarySearchTest
   {
       
      
      private var var_426:int;
      
      private var var_168:String;
      
      private var var_206:ITextWindow;
      
      public function CutToWidth()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_168 = param1;
         var_206 = param2;
         var_426 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_206.text = var_168.substring(0,param1) + "...";
         return var_206.textWidth > var_426;
      }
   }
}
