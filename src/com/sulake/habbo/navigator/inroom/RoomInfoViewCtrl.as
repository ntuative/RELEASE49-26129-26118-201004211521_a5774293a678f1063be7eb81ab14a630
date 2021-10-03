package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_764:IWindowContainer;
      
      private var var_1094:ITextWindow;
      
      private var var_207:RoomSettingsCtrl;
      
      private var var_1358:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var _hideInfoTimer:Timer;
      
      private var var_1353:ITextWindow;
      
      private var var_370:IWindowContainer;
      
      private var var_2242:IWindowContainer;
      
      private var var_2243:ITextWindow;
      
      private var var_927:IWindowContainer;
      
      private var var_1590:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_743:ITextWindow;
      
      private var var_1591:IWindowContainer;
      
      private var var_1359:IWindowContainer;
      
      private var var_926:ITextWindow;
      
      private var var_1093:ITextFieldWindow;
      
      private var var_325:IWindowContainer;
      
      private var var_924:ITextWindow;
      
      private var var_1589:IButtonWindow;
      
      private var var_1095:ITextWindow;
      
      private var var_2349:int;
      
      private var var_1354:IContainerButtonWindow;
      
      private var var_925:IWindowContainer;
      
      private var var_1355:ITextWindow;
      
      private var var_1356:IContainerButtonWindow;
      
      private var var_1592:ITextWindow;
      
      private var var_1588:IButtonWindow;
      
      private var var_812:TagRenderer;
      
      private var var_1986:ITextWindow;
      
      private var var_369:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_763:ITextWindow;
      
      private var var_284:RoomThumbnailCtrl;
      
      private var var_1357:IContainerButtonWindow;
      
      private var var_2241:IWindowContainer;
      
      private var var_285:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_369 = new RoomEventViewCtrl(_navigator);
         var_207 = new RoomSettingsCtrl(_navigator,this,true);
         var_284 = new RoomThumbnailCtrl(_navigator);
         var_812 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_207);
         _hideInfoTimer = new Timer(6000,1);
         _hideInfoTimer.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_207.active = true;
         this.var_369.active = false;
         this.var_284.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1590.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1588.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1591.visible = Util.hasVisibleChildren(var_1591);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_743.text = param1.roomName;
         var_743.height = NaN;
         _ownerName.text = param1.ownerName;
         var_926.text = param1.description;
         var_812.refreshTags(var_370,param1.tags);
         var_926.visible = false;
         if(param1.description != "")
         {
            var_926.height = NaN;
            var_926.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_370,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_370,"thumb_down",_loc3_,onThumbDown,0);
         var_2243.visible = _loc3_;
         var_924.visible = !_loc3_;
         var_1592.visible = !_loc3_;
         var_1592.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_370,"home",param2,null,0);
         _navigator.refreshButton(var_370,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_370,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_743.y,0);
         var_370.visible = true;
         var_370.height = Util.getLowestPoint(var_370);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function dispose() : void
      {
         if(_hideInfoTimer)
         {
            _hideInfoTimer.removeEventListener(TimerEvent.TIMER,hideInfo);
            _hideInfoTimer.reset();
            _hideInfoTimer = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_469,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1589.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1358.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1357.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1354.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1356.visible = _navigator.data.canEditRoomSettings && param1;
         var_1359.visible = Util.hasVisibleChildren(var_1359);
      }
      
      public function open(param1:Boolean) : void
      {
         this._hideInfoTimer.reset();
         this.var_369.active = false;
         this.var_207.active = false;
         this.var_284.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_49,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this._hideInfoTimer.start();
         }
      }
      
      public function toggle() : void
      {
         this._hideInfoTimer.reset();
         this.var_369.active = false;
         this.var_207.active = false;
         this.var_284.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_49,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_469,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_325);
         var_325.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_207.refresh(var_325);
         this.var_284.refresh(var_325);
         Util.moveChildrenToColumn(var_325,["room_details","room_buttons"],0,2);
         var_325.height = Util.getLowestPoint(var_325);
         var_325.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1093.setSelection(0,var_1093.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_285);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_369.refresh(var_285);
         if(Util.hasVisibleChildren(var_285) && !this.var_284.active)
         {
            Util.moveChildrenToColumn(var_285,["event_details","event_buttons"],0,2);
            var_285.height = Util.getLowestPoint(var_285);
            var_285.visible = true;
         }
         else
         {
            var_285.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_369.active = true;
         this.var_207.active = false;
         this.var_284.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         _hideInfoTimer.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_1094.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_1094.height = NaN;
         var_1353.text = _navigator.method_5(param1.unitPropertySet,param1.worldId);
         var_1353.height = NaN;
         Util.moveChildrenToColumn(var_764,["public_space_name","public_space_desc"],var_1094.y,0);
         var_764.visible = true;
         var_764.height = Math.max(86,Util.getLowestPoint(var_764));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         if(_loc1_ && true && true && true)
         {
            var_925.visible = true;
            var_1093.text = this.getEmbedData();
         }
         else
         {
            var_925.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this._hideInfoTimer.reset();
         this.var_207.load(param1);
         this.var_207.active = true;
         this.var_369.active = false;
         this.var_284.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_207.active = false;
         this.var_369.active = false;
         this.var_284.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_75,false);
         _window.setParamFlag(HabboWindowParam.const_1322,true);
         _window.visible = false;
         var_325 = IWindowContainer(find("room_info"));
         var_370 = IWindowContainer(find("room_details"));
         var_764 = IWindowContainer(find("public_space_details"));
         var_2241 = IWindowContainer(find("owner_name_cont"));
         var_2242 = IWindowContainer(find("rating_cont"));
         var_1359 = IWindowContainer(find("room_buttons"));
         var_743 = ITextWindow(find("room_name"));
         var_1094 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_926 = ITextWindow(find("room_desc"));
         var_1353 = ITextWindow(find("public_space_desc"));
         var_1095 = ITextWindow(find("owner_caption"));
         var_924 = ITextWindow(find("rating_caption"));
         var_2243 = ITextWindow(find("rate_caption"));
         var_1592 = ITextWindow(find("rating_txt"));
         var_285 = IWindowContainer(find("event_info"));
         var_927 = IWindowContainer(find("event_details"));
         var_1591 = IWindowContainer(find("event_buttons"));
         var_1986 = ITextWindow(find("event_name"));
         var_763 = ITextWindow(find("event_desc"));
         var_1358 = IContainerButtonWindow(find("add_favourite_button"));
         var_1357 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1354 = IContainerButtonWindow(find("make_home_button"));
         var_1356 = IContainerButtonWindow(find("unmake_home_button"));
         var_1589 = IButtonWindow(find("room_settings_button"));
         var_1590 = IButtonWindow(find("create_event_button"));
         var_1588 = IButtonWindow(find("edit_event_button"));
         var_925 = IWindowContainer(find("embed_info"));
         var_1355 = ITextWindow(find("embed_info_txt"));
         var_1093 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1358,onAddFavouriteClick);
         Util.setProcDirectly(var_1357,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1589,onRoomSettingsClick);
         Util.setProcDirectly(var_1354,onMakeHomeClick);
         Util.setProcDirectly(var_1356,onUnmakeHomeClick);
         Util.setProcDirectly(var_1590,onEventSettingsClick);
         Util.setProcDirectly(var_1588,onEventSettingsClick);
         Util.setProcDirectly(var_1093,onEmbedSrcClick);
         _navigator.refreshButton(var_1358,"favourite",true,null,0);
         _navigator.refreshButton(var_1357,"favourite",true,null,0);
         _navigator.refreshButton(var_1354,"home",true,null,0);
         _navigator.refreshButton(var_1356,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_325,onHover);
         Util.setProcDirectly(var_285,onHover);
         var_1095.width = var_1095.textWidth;
         Util.moveChildrenToRow(var_2241,["owner_caption","owner_name"],var_1095.x,var_1095.y,3);
         var_924.width = var_924.textWidth;
         Util.moveChildrenToRow(var_2242,["rating_caption","rating_txt"],var_924.x,var_924.y,3);
         var_1355.height = NaN;
         Util.moveChildrenToColumn(var_925,["embed_info_txt","embed_src_txt"],var_1355.y,2);
         var_925.height = Util.getLowestPoint(var_925) + 5;
         var_2349 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_1986.text = param1.eventName;
         var_763.text = param1.eventDescription;
         var_812.refreshTags(var_927,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_763.visible = false;
         if(param1.eventDescription != "")
         {
            var_763.height = NaN;
            var_763.y = Util.getLowestPoint(var_927) + 2;
            var_763.visible = true;
         }
         var_927.visible = true;
         var_927.height = Util.getLowestPoint(var_927);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_904,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
