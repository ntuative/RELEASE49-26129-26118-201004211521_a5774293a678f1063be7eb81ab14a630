package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarActionUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetCreditBalanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFrameUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetSelectOutfitMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetToolbarMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_694:String = "me_menu_settings_view";
      
      public static const const_596:String = "me_menu_effects_view";
      
      public static const const_129:String = "me_menu_top_view";
      
      public static const const_1208:String = "me_menu_rooms_view";
      
      public static const const_876:String = "me_menu_dance_moves_view";
      
      public static const const_333:String = "me_menu_my_clothes_view";
       
      
      private var var_2006:Boolean = false;
      
      private var var_442:Boolean = false;
      
      private var var_1506:int = 0;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var var_1505:int = 0;
      
      private var var_2005:int = 0;
      
      private var var_2002:Boolean = false;
      
      private var var_273:Boolean = false;
      
      private var var_2003:int = 0;
      
      private var var_1736:Number = 0;
      
      private var _mainContainer:IWindowContainer;
      
      private var var_598:Boolean = false;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_1257:int = 0;
      
      private var var_2004:Boolean = false;
      
      private var var_1031:Point;
      
      private var var_36:IMeMenuView;
      
      public function MeMenuWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         _config = param5;
         var_1031 = new Point(0,0);
         _eventDispatcher = param4;
         if(param5 != null && false)
         {
            var_2004 = param5.getKey("client.news.embed.enabled","false") == "true";
         }
         changeView(const_129);
         hide();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_588,onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_706,onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_551,onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_678,onToolbarClicked);
         param1.addEventListener(RoomWidgetFrameUpdateEvent.const_337,onUpdate);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_621,onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_235,onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_216,onHabboClubEvent);
         param1.addEventListener(RoomWidgetAvatarActionUpdateEvent.const_710,onAvatarActionEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_195,onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_285,onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_107,onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_379,onTutorialEvent);
         param1.addEventListener(RoomWidgetCreditBalanceUpdateEvent.const_178,onCreditBalance);
         super.registerUpdateEvents(param1);
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         if(!var_442)
         {
            return;
         }
      }
      
      override public function get mainWindow() : IWindow
      {
         return _mainContainer;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return var_598;
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!var_273)
         {
            return;
         }
         if(var_36.window.name == const_694)
         {
            (var_36 as MeMenuSettingsView).updateSettings(param1);
         }
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return var_1257 > 0;
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onCreditBalance(param1:RoomWidgetCreditBalanceUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var_1505 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",var_1505.toString());
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(!(var_273 && var_36.window.name == const_333))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_529);
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc2_);
            }
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_588,onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_706,onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_551,onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_678,onToolbarClicked);
         param1.removeEventListener(RoomWidgetFrameUpdateEvent.const_337,onUpdate);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_235,onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_216,onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarActionUpdateEvent.const_710,onAvatarActionEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_621,onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_195,onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_285,onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_379,onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_107,onTutorialEvent);
         param1.removeEventListener(RoomWidgetCreditBalanceUpdateEvent.const_178,onCreditBalance);
      }
      
      override public function dispose() : void
      {
         hide();
         _eventDispatcher = null;
         if(var_36 != null)
         {
            var_36.dispose();
            var_36 = null;
         }
         super.dispose();
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return var_2006;
      }
      
      public function get creditBalance() : int
      {
         return var_1505;
      }
      
      public function changeToOutfit(param1:int) : void
      {
         var_1736 = new Date().valueOf();
         this.messageListener.processWidgetMessage(new RoomWidgetSelectOutfitMessage(param1));
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_379:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + var_273 + " view: " + var_36.window.name);
               if(var_273 != true || var_36.window.name != const_129)
               {
                  return;
               }
               (var_36 as MeMenuMainView).setIconAssets("clothes_icon",const_129,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_107:
               hide();
         }
      }
      
      public function get isDancing() : Boolean
      {
         return var_2002;
      }
      
      public function canChangeOutfit() : Boolean
      {
         var _loc1_:Number = new Date().valueOf();
         return _loc1_ - var_1736 > 5000;
      }
      
      public function get habboClubPeriods() : int
      {
         return var_2005;
      }
      
      private function onAvatarActionEvent(param1:RoomWidgetAvatarActionUpdateEvent) : void
      {
         switch(param1.actionType)
         {
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_ACTIVE:
               var_598 = true;
               break;
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_INACTIVE:
               var_598 = false;
               break;
            default:
               trace("MeMenuWidget: unknown avatar action event: " + param1.actionType);
         }
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = param1.daysLeft != var_1257;
         var_1257 = param1.daysLeft;
         var_2005 = param1.periodsLeft;
         var_2003 = param1.pastPeriods;
         var_2006 = param1.allowClubDances;
         _loc2_ = Boolean(_loc2_ || param1.clubLevel != var_1506);
         var_1506 = param1.clubLevel;
         if(_loc2_)
         {
            if(var_36 != null)
            {
               changeView(var_36.window.name);
            }
         }
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         var_2002 = param1;
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(var_36 != null && var_36.window.name != const_333)
         {
            hide();
         }
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(_mainContainer == null)
         {
            _mainContainer = windowManager.createWindow("me_menu_main_container","",HabboWindowType.const_1309,HabboWindowStyle.const_867,HabboWindowParam.const_43,new Rectangle(0,0,170,260)) as IWindowContainer;
            _mainContainer.tags.push("room_widget_me_menu");
         }
         return _mainContainer;
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         var_598 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               var_598 = true;
            }
         }
         if(var_36 != null && var_36.window.name == const_596)
         {
            (var_36 as MeMenuEffectsView).updateEffects(param1.effects);
         }
      }
      
      public function get habboClubPastPeriods() : int
      {
         return var_2003;
      }
      
      public function get habboClubDays() : int
      {
         return var_1257;
      }
      
      public function updateSize() : void
      {
         if(var_36 != null)
         {
            var_1031.x = var_36.window.width + 10;
            var_1031.y = var_36.window.height;
            var_36.window.x = 5;
            var_36.window.y = 0;
            _mainContainer.width = var_1031.x;
            _mainContainer.height = var_1031.y;
         }
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         switch(param1.iconType)
         {
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ME_MENU:
               var_273 = !var_273;
               break;
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ROOM_INFO:
               var_273 = false;
               break;
            default:
               return;
         }
         if(var_273)
         {
            show();
         }
         else
         {
            hide();
         }
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         var _loc2_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_724);
         _loc2_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
         if(var_36 != null)
         {
            _mainContainer.removeChild(var_36.window);
            var_36.dispose();
            var_36 = null;
         }
         var_273 = false;
         _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_36 != null && var_36.window.name == const_333)
         {
            changeView(const_129);
         }
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return var_2004;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case const_129:
               _loc2_ = new MeMenuMainView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_596:
               _loc2_ = new MeMenuEffectsView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS));
               break;
            case const_876:
               _loc2_ = new MeMenuDanceView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_333:
               _loc2_ = new MeMenuClothesView();
               break;
            case const_1208:
               _loc2_ = new MeMenuRoomsView();
               break;
            case const_694:
               _loc2_ = new MeMenuSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(var_36 != null)
            {
               _mainContainer.removeChild(var_36.window);
               var_36.dispose();
               var_36 = null;
            }
            var_36 = _loc2_;
            var_36.init(this,param1);
         }
         updateSize();
      }
      
      public function get habboClubLevel() : int
      {
         return var_1506;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return _config;
      }
      
      private function show() : void
      {
         if(!_mainContainer || true)
         {
            return;
         }
         changeView(const_129);
         var _loc1_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_599);
         _loc1_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         var_273 = true;
      }
   }
}
