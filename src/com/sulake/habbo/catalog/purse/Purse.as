package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1430:int = 0;
      
      private var var_1727:int = 0;
      
      private var var_1726:Boolean = false;
      
      private var var_1728:int = 0;
      
      private var var_1429:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get clubPeriods() : int
      {
         return var_1429;
      }
      
      public function get clubDays() : int
      {
         return var_1430;
      }
      
      public function set pixels(param1:int) : void
      {
         var_1727 = param1;
      }
      
      public function get pixels() : int
      {
         return var_1727;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return var_1430 > 0 || var_1429 > 0;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1430 = param1;
      }
      
      public function get credits() : int
      {
         return var_1728;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1726;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1726 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1728 = param1;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1429 = param1;
      }
   }
}
