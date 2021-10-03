package com.sulake.habbo.avatar.actions
{
   public class ActiveActionData implements IActiveActionData
   {
       
      
      private var var_1167:String = "";
      
      private var var_799:IActionDefinition;
      
      private var _actionParameter:String = "";
      
      public function ActiveActionData(param1:String, param2:String = "")
      {
         super();
         var_1167 = param1;
         _actionParameter = param2;
      }
      
      public function set actionParameter(param1:String) : void
      {
         _actionParameter = param1;
      }
      
      public function dispose() : void
      {
         var_1167 = null;
         _actionParameter = null;
         var_799 = null;
      }
      
      public function get actionType() : String
      {
         return var_1167;
      }
      
      public function get actionParameter() : String
      {
         return _actionParameter;
      }
      
      public function set definition(param1:IActionDefinition) : void
      {
         var_799 = param1;
      }
      
      public function get definition() : IActionDefinition
      {
         return var_799;
      }
      
      public function get id() : String
      {
         if(var_799 == null)
         {
            return "";
         }
         return "undefined_" + _actionParameter;
      }
   }
}
