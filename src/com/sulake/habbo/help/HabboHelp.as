package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_2097:UserRegistry;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_136:TutorialUI;
      
      private var var_727:IHabboLocalizationManager;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_58:HelpUI;
      
      private var var_726:IHabboConfigurationManager;
      
      private var var_190:IHabboToolbar;
      
      private var var_606:HotelMergeUI;
      
      private var var_300:IHabboCommunicationManager;
      
      private var var_884:FaqIndex;
      
      private var var_2096:String = "";
      
      private var var_971:IncomingMessages;
      
      private var var_1292:CallForHelpData;
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_1292 = new CallForHelpData();
         var_2097 = new UserRegistry();
         super(param1,param2,param3);
         _assetLibrary = param3;
         var_884 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),onWindowManagerReady);
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return var_190;
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(var_58 != null)
         {
            var_58.tellUI(param1,param2);
         }
      }
      
      private function toggleHelpUI() : void
      {
         if(var_58 == null)
         {
            if(!createHelpUI())
            {
               return;
            }
         }
         var_58.toggleUI();
      }
      
      public function removeTutorialUI() : void
      {
         if(var_136 != null)
         {
            var_136.dispose();
            var_136 = null;
         }
      }
      
      public function get ownUserName() : String
      {
         return var_2096;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return _windowManager;
      }
      
      override public function dispose() : void
      {
         if(var_58 != null)
         {
            var_58.dispose();
            var_58 = null;
         }
         if(var_136 != null)
         {
            var_136.dispose();
            var_136 = null;
         }
         if(var_606)
         {
            var_606.dispose();
            var_606 = null;
         }
         if(var_884 != null)
         {
            var_884.dispose();
            var_884 = null;
         }
         var_971 = null;
         if(var_190)
         {
            var_190.release(new IIDHabboToolbar());
            var_190 = null;
         }
         if(var_727)
         {
            var_727.release(new IIDHabboLocalizationManager());
            var_727 = null;
         }
         if(var_300)
         {
            var_300.release(new IIDHabboCommunicationManager());
            var_300 = null;
         }
         if(var_726)
         {
            var_726.release(new IIDHabboConfigurationManager());
            var_726 = null;
         }
         if(_windowManager)
         {
            _windowManager.release(new IIDHabboWindowManager());
            _windowManager = null;
         }
         super.dispose();
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return var_727;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_99:
               if(var_58 != null)
               {
                  var_58.setRoomSessionStatus(true);
               }
               if(var_136 != null)
               {
                  var_136.setRoomSessionStatus(true);
               }
               break;
            case RoomSessionEvent.const_105:
               if(var_58 != null)
               {
                  var_58.setRoomSessionStatus(false);
               }
               if(var_136 != null)
               {
                  var_136.setRoomSessionStatus(false);
               }
               userRegistry.unregisterRoom();
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(var_58 != null)
         {
            var_58.updateCallForGuideBotUI(true);
         }
      }
      
      public function get userRegistry() : UserRegistry
      {
         return var_2097;
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(var_58 != null)
         {
            var_58.showCallForHelpResult(param1);
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!var_606)
         {
            var_606 = new HotelMergeUI(this);
         }
         var_606.startNameChange();
      }
      
      private function createTutorialUI() : Boolean
      {
         if(var_136 == null && _assetLibrary != null && _windowManager != null)
         {
            var_136 = new TutorialUI(this);
         }
         return var_136 != null;
      }
      
      private function createHelpUI() : Boolean
      {
         if(var_58 == null && _assetLibrary != null && _windowManager != null)
         {
            var_58 = new HelpUI(this,_assetLibrary,_windowManager,var_727,var_190);
         }
         return var_58 != null;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return var_1292;
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         var_1292.reportedUserId = param1;
         var_1292.reportedUserName = param2;
         var_58.showUI(HabboHelpViewEnum.const_292);
      }
      
      public function set ownUserName(param1:String) : void
      {
         var_2096 = param1;
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(var_190 != null)
         {
            var_190.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_123,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         _windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),onCommunicationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_727 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),onConfigurationManagerReady);
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            removeTutorialUI();
            return;
         }
         if(var_136 == null)
         {
            if(!createTutorialUI())
            {
               return;
            }
         }
         var_136.update(param1,param2,param3);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_300 = IHabboCommunicationManager(param2);
         var_971 = new IncomingMessages(this,var_300);
         queueInterface(new IIDHabboToolbar(),onToolbarReady);
      }
      
      public function showUI(param1:String = null) : void
      {
         if(var_58 != null)
         {
            var_58.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(var_58 != null)
         {
            var_58.hideUI();
         }
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(var_300 != null && param1 != null)
         {
            var_300.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return var_884;
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(var_58 != null)
         {
            var_58.updateCallForGuideBotUI(false);
         }
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_190 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),onLocalizationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_726 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),onRoomSessionManagerReady);
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return var_136;
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_86)
         {
            setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_63)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               toggleHelpUI();
               return;
            }
         }
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return var_606;
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_99,onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_105,onRoomSessionEvent);
         var_190.events.addEventListener(HabboToolbarEvent.const_86,onHabboToolbarEvent);
         var_190.events.addEventListener(HabboToolbarEvent.const_63,onHabboToolbarEvent);
         createHelpUI();
         setHabboToolbarIcon();
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(var_58 != null)
         {
            var_58.showCallForHelpReply(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(var_726 == null)
         {
            return param1;
         }
         return var_726.getKey(param1,param2,param3);
      }
   }
}
