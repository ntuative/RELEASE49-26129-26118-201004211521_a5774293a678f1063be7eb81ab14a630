package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1120:int = 80;
       
      
      private var var_518:Map;
      
      private var var_743:String = "";
      
      private var var_1311:Array;
      
      public function UserRegistry()
      {
         var_518 = new Map();
         var_1311 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_518.getValue(var_1311.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_743;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_518.getValue(param1) != null)
         {
            var_518.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_743);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_743 == "")
         {
            var_1311.push(param1);
         }
         var_518.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_518;
      }
      
      public function unregisterRoom() : void
      {
         var_743 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_518.length > const_1120)
         {
            _loc1_ = var_518.getKey(0);
            var_518.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_743 = param1;
         if(var_743 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
