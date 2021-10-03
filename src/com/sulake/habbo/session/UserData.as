package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_319:String = "";
      
      private var var_1840:String = "";
      
      private var var_1842:int = 0;
      
      private var var_1826:int = 0;
      
      private var _type:int = 0;
      
      private var var_1841:String = "";
      
      private var var_595:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1819:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1842 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1841 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_319 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_595 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1842;
      }
      
      public function set webID(param1:int) : void
      {
         var_1819 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1841;
      }
      
      public function set custom(param1:String) : void
      {
         var_1840 = param1;
      }
      
      public function get figure() : String
      {
         return var_319;
      }
      
      public function get sex() : String
      {
         return var_595;
      }
      
      public function get custom() : String
      {
         return var_1840;
      }
      
      public function get webID() : int
      {
         return var_1819;
      }
      
      public function set xp(param1:int) : void
      {
         var_1826 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1826;
      }
   }
}
