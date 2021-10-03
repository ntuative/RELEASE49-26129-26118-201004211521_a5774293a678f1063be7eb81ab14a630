package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_147:int = 1;
      
      public static const const_1145:int = 3;
      
      public static const const_470:int = 2;
       
      
      private var var_1669:int;
      
      private var var_1666:int;
      
      private var var_1670:int;
      
      private var var_1650:int;
      
      private var var_32:int;
      
      private var var_449:int;
      
      private var var_1239:int;
      
      private var var_1660:int;
      
      private var var_996:int;
      
      private var _roomResources:String;
      
      private var var_1668:int;
      
      private var var_1665:int;
      
      private var var_1662:String;
      
      private var var_1667:String;
      
      private var var_1663:int = 0;
      
      private var var_1168:String;
      
      private var _message:String;
      
      private var var_1664:int;
      
      private var var_1661:String;
      
      private var var_1182:int;
      
      private var var_743:String;
      
      private var var_1659:String;
      
      private var var_1410:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_996 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_1663 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_1665;
      }
      
      public function set roomName(param1:String) : void
      {
         var_743 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1668 = param1;
      }
      
      public function get state() : int
      {
         return var_32;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_743;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1650 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_32 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1666;
      }
      
      public function get priority() : int
      {
         return var_1669 + var_1663;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1660 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1667;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1410) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1182;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_1665 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1239;
      }
      
      public function set flatType(param1:String) : void
      {
         var_1662 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1668;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1650;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_1659 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1168 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1660;
      }
      
      public function set priority(param1:int) : void
      {
         var_1669 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1666 = param1;
      }
      
      public function get flatType() : String
      {
         return var_1662;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_1670 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1667 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1664 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1168;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1239 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_1670;
      }
      
      public function set flatId(param1:int) : void
      {
         var_449 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1182 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1410 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1664;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_1661 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1410;
      }
      
      public function get reportedUserId() : int
      {
         return var_996;
      }
      
      public function get flatId() : int
      {
         return var_449;
      }
      
      public function get flatOwnerName() : String
      {
         return var_1659;
      }
      
      public function get reporterUserName() : String
      {
         return var_1661;
      }
   }
}
