package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_388:int = 0;
      
      public static const const_116:int = 2;
      
      public static const const_171:int = 1;
      
      public static const const_741:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_2000:Boolean;
      
      private var var_1997:Boolean;
      
      private var var_2088:int;
      
      private var var_1996:Array;
      
      private var var_2089:int;
      
      private var var_1999:Boolean;
      
      private var var_1276:String;
      
      private var var_2001:int;
      
      private var var_1998:int;
      
      private var var_1182:int;
      
      private var _roomId:int;
      
      private var var_638:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_2001;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_2001 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_638;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1999;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_2089 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1996 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_638 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_2000;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1997;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_2088;
      }
      
      public function get categoryId() : int
      {
         return var_1182;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1999 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_2089;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1996;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1998 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_2000 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1997 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_2088 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1998;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1182 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1276 = param1;
      }
      
      public function get description() : String
      {
         return var_1276;
      }
   }
}
