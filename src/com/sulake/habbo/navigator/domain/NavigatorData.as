package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1430:int = 10;
       
      
      private var var_1520:NavigatorSettingsMessageParser;
      
      private var var_1277:int;
      
      private var var_2051:int;
      
      private var var_2048:Boolean;
      
      private var var_1046:Array;
      
      private var var_874:Dictionary;
      
      private var var_1047:Array;
      
      private var var_2325:int;
      
      private var var_2052:int;
      
      private var var_2049:int;
      
      private var var_2046:int;
      
      private var var_601:PublicRoomShortData;
      
      private var var_419:RoomEventData;
      
      private var var_134:MsgWithRequestId;
      
      private var var_2047:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_2050:Boolean;
      
      private var var_197:GuestRoomData;
      
      private var var_718:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1046 = new Array();
         var_1047 = new Array();
         var_874 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_2051;
      }
      
      public function get eventMod() : Boolean
      {
         return var_2050;
      }
      
      public function startLoading() : void
      {
         this.var_718 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_2050 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_419 != null)
         {
            var_419.dispose();
         }
         var_419 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_134 != null && var_134 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_134 != null && var_134 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_134 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_197;
      }
      
      public function get allCategories() : Array
      {
         return var_1046;
      }
      
      public function onRoomExit() : void
      {
         if(var_419 != null)
         {
            var_419.dispose();
            var_419 = null;
         }
         if(var_601 != null)
         {
            var_601.dispose();
            var_601 = null;
         }
         if(var_197 != null)
         {
            var_197.dispose();
            var_197 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_134 = param1;
         var_718 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1520;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_134 = param1;
         var_718 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_601 = null;
         var_197 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_601 = param1.publicSpace;
            var_419 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2325 = param1.limit;
         this.var_1277 = param1.favouriteRoomIds.length;
         this.var_874 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_874[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_134 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_601;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_2048;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_134 = param1;
         var_718 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_2049 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_197 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_718;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1047;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1046 = param1;
         var_1047 = new Array();
         for each(_loc2_ in var_1046)
         {
            if(_loc2_.visible)
            {
               var_1047.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_2052;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2046;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1520 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_134 == null)
         {
            return;
         }
         var_134.dispose();
         var_134 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_419;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_874[param1] = !!param2 ? "yes" : null;
         var_1277 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_134 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_2049;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_134 != null && var_134 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_2048 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2052 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_2047 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_197 != null)
         {
            var_197.dispose();
         }
         var_197 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_197 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1520.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1277 >= var_2325;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2046 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_2047;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_197 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2051 = param1;
      }
   }
}
