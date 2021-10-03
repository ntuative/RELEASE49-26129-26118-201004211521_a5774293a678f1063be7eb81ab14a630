package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1383:String = "F";
      
      public static const const_899:String = "M";
       
      
      private var var_79:Number = 0;
      
      private var var_319:String = "";
      
      private var var_2251:int = 0;
      
      private var var_1840:String = "";
      
      private var var_1842:int = 0;
      
      private var var_1826:int = 0;
      
      private var var_1841:String = "";
      
      private var var_595:String = "";
      
      private var _id:int = 0;
      
      private var var_209:Boolean = false;
      
      private var var_219:int = 0;
      
      private var var_2250:String = "";
      
      private var _name:String = "";
      
      private var var_1819:int = 0;
      
      private var _y:Number = 0;
      
      private var var_80:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_80;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_219;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_209)
         {
            var_219 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_209)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2251;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_209)
         {
            var_1842 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2250;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_209)
         {
            var_1841 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_209)
         {
            var_2250 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_209)
         {
            var_1826 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_209)
         {
            var_319 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_209)
         {
            var_2251 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_209)
         {
            var_595 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1842;
      }
      
      public function get groupID() : String
      {
         return var_1841;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_209)
         {
            var_1819 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_209)
         {
            var_1840 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_209 = true;
      }
      
      public function get sex() : String
      {
         return var_595;
      }
      
      public function get figure() : String
      {
         return var_319;
      }
      
      public function get webID() : int
      {
         return var_1819;
      }
      
      public function get custom() : String
      {
         return var_1840;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_209)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_209)
         {
            var_80 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_209)
         {
            var_79 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_79;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1826;
      }
   }
}
