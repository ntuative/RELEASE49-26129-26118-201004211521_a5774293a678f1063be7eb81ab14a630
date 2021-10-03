package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_209:String = "RWUIUE_PEER";
      
      public static const const_195:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1399:String = "BOT";
      
      public static const const_971:int = 2;
      
      public static const const_1210:int = 0;
      
      public static const const_849:int = 3;
       
      
      private var var_319:String = "";
      
      private var var_1181:String = "";
      
      private var var_1822:Boolean = false;
      
      private var var_1826:int = 0;
      
      private var var_1627:int = 0;
      
      private var var_1820:Boolean = false;
      
      private var var_1184:String = "";
      
      private var var_1821:Boolean = false;
      
      private var var_869:int = 0;
      
      private var var_1827:Boolean = true;
      
      private var var_1055:int = 0;
      
      private var var_1823:Boolean = false;
      
      private var var_1270:Boolean = false;
      
      private var var_1825:Boolean = false;
      
      private var var_1626:int = 0;
      
      private var var_1817:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_253:Array;
      
      private var var_1269:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1819:int = 0;
      
      private var var_1818:Boolean = false;
      
      private var var_1824:int = 0;
      
      private var var_1628:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_253 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1627;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1627 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_1822;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_1827;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_1827 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_1821 = param1;
      }
      
      public function get motto() : String
      {
         return var_1181;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_1823 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1270;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1181 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_1818;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1628;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1270 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_1817;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1626 = param1;
      }
      
      public function get badges() : Array
      {
         return var_253;
      }
      
      public function get amIController() : Boolean
      {
         return var_1820;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_1820 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_1818 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_1824 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1628 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1184 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_1821;
      }
      
      public function set figure(param1:String) : void
      {
         var_319 = param1;
      }
      
      public function get carryItem() : int
      {
         return var_1626;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1269;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_1823;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_869 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_1824;
      }
      
      public function get realName() : String
      {
         return var_1184;
      }
      
      public function get figure() : String
      {
         return var_319;
      }
      
      public function set webID(param1:int) : void
      {
         var_1819 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_253 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_1825 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_1817 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_869;
      }
      
      public function get webID() : int
      {
         return var_1819;
      }
      
      public function set groupId(param1:int) : void
      {
         var_1055 = param1;
      }
      
      public function get xp() : int
      {
         return var_1826;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_1822 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1055;
      }
      
      public function get canTrade() : Boolean
      {
         return var_1825;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1269 = param1;
      }
      
      public function set xp(param1:int) : void
      {
         var_1826 = param1;
      }
   }
}
