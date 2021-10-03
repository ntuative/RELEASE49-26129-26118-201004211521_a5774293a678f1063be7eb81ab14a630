package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1912:Boolean = false;
      
      private var var_1914:int = 0;
      
      private var var_1430:int = 0;
      
      private var var_1913:int = 0;
      
      private var var_1726:Boolean = false;
      
      private var var_1505:int = 0;
      
      private var var_1429:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1505 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1914;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1912;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1912 = param1;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1726;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1914 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1430 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1505;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1726 = param1;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1913 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1430;
      }
      
      public function get pixelBalance() : int
      {
         return var_1913;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1429 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1429;
      }
   }
}
