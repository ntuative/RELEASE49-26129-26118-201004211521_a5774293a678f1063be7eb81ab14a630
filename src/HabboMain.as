package
{
   import com.sulake.core.Core;
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.ICore;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   
   public class HabboMain extends Sprite
   {
      
      private static const const_27:Number = 0.29;
      
      private static const const_25:Number = 0.71;
       
      
      private var var_1120:Boolean = false;
      
      private var var_1:DisplayObjectContainer;
      
      private var var_25:ICore;
      
      public function HabboMain(param1:DisplayObjectContainer)
      {
         super();
         var_1 = param1;
         var_1.addEventListener(Event.COMPLETE,onCompleteEvent);
         var_1.addEventListener(ProgressEvent.PROGRESS,onProgressEvent);
         addEventListener(Event.ADDED_TO_STAGE,method_1);
         addEventListener(Event.ENTER_FRAME,onEnterFrame);
         Logger.log("Core version: undefined");
      }
      
      private function updateLoadingBar(param1:DisplayObjectContainer, param2:Number) : void
      {
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc7_:Sprite = param1.getChildByName(Habbo.const_3) as Sprite;
         var _loc8_:Sprite = _loc7_.getChildByName(Habbo.FILE_BAR_SPRITE) as Sprite;
         var _loc9_:Sprite = param1.getChildByName(Habbo.const_1) as Sprite;
         var _loc10_:Sprite = _loc9_.getChildByName(Habbo.const_7) as Sprite;
         var _loc13_:int = var_25.getNumberOfFilesPending() + var_25.getNumberOfFilesLoaded();
         var _loc14_:Number = 1 - const_25 + var_25.getNumberOfFilesLoaded() / _loc13_ * const_25;
         _loc8_.x = 1 + 1;
         _loc8_.y = 1 + 1;
         _loc8_.graphics.clear();
         _loc11_ = 16;
         _loc12_ = 196 * _loc14_;
         _loc8_.graphics.beginFill(12241619);
         _loc8_.graphics.drawRect(0,0,_loc12_,_loc11_ / 2);
         _loc8_.graphics.endFill();
         _loc8_.graphics.beginFill(9216429);
         _loc8_.graphics.drawRect(0,_loc11_ / 2,_loc12_,_loc11_ / 2 + 1);
         _loc8_.graphics.endFill();
         _loc10_.x = 1 + 1;
         _loc10_.y = 1 + 1;
         _loc10_.graphics.clear();
         _loc11_ = 16;
         _loc12_ = 196;
         _loc10_.graphics.beginFill(12241619);
         _loc10_.graphics.drawRect(0,0,_loc12_ * param2,_loc11_ / 2);
         _loc10_.graphics.endFill();
         _loc10_.graphics.beginFill(9216429);
         _loc10_.graphics.drawRect(0,_loc11_ / 2,_loc12_ * param2,_loc11_ / 2 + 1);
         _loc10_.graphics.endFill();
      }
      
      public function unloading() : void
      {
         var_25.events.dispatchEvent(new Event(Event.UNLOAD));
      }
      
      private function prepareCore() : void
      {
         trackLoginStep(Habbo.const_29);
         var_25 = Core.instantiate(stage,0);
         var_25.prepareComponent(CoreCommunicationFrameworkLib);
         var_25.prepareComponent(HabboRoomObjectLogicLib);
         var_25.prepareComponent(HabboRoomObjectVisualizationLib);
         var_25.prepareComponent(RoomManagerLib);
         var_25.prepareComponent(RoomSpriteRendererLib);
         var_25.prepareComponent(HabboRoomSessionManagerLib);
         var_25.prepareComponent(HabboAvatarRenderLib);
         var_25.prepareComponent(HabboRoomWidgetLib);
         var_25.prepareComponent(HabboSessionDataManagerLib);
         var_25.prepareComponent(HabboTrackingLib);
         var_25.prepareComponent(HabboConfigurationCom);
         var_25.prepareComponent(HabboLocalizationCom);
         var_25.prepareComponent(HabboWindowManagerCom);
         var_25.prepareComponent(HabboCommunicationCom);
         var_25.prepareComponent(HabboCommunicationDemoCom);
         var_25.prepareComponent(HabboNavigatorCom);
         var_25.prepareComponent(HabboFriendListCom);
         var_25.prepareComponent(HabboMessengerCom);
         var_25.prepareComponent(HabboInventoryCom);
         var_25.prepareComponent(HabboToolbarCom);
         var_25.prepareComponent(HabboCatalogCom);
         var_25.prepareComponent(HabboRoomEngineCom);
         var_25.prepareComponent(HabboRoomUICom);
         var_25.prepareComponent(HabboAvatarEditorCom);
         var_25.prepareComponent(HabboNotificationsCom);
         var_25.prepareComponent(HabboHelpCom);
         var_25.prepareComponent(HabboAdManagerCom);
         var_25.prepareComponent(HabboModerationCom);
         Logger.log("Sound manager embed...");
         Logger.log("Trying to embed Flash 9 version");
         var_25.prepareComponent(HabboSoundManagerCom);
         var_25.events.addEventListener(Component.COMPONENT_EVENT_ERROR,onCoreError);
         var _loc1_:AssetLoaderStruct = var_25.assets.loadAssetFromFile("config.xml",new URLRequest("config_habbo.xml"));
         if(_loc1_.assetLoader.ready)
         {
            setupCoreConfigFromLoader(_loc1_);
         }
         else
         {
            _loc1_.addEventListener(AssetLoaderEvent.const_37,configLoadedHandler);
            _loc1_.addEventListener(AssetLoaderEvent.const_47,configLoadedHandler);
         }
      }
      
      private function configLoadedHandler(param1:AssetLoaderEvent) : void
      {
         var _loc2_:* = null;
         _loc2_ = param1.target as AssetLoaderStruct;
         _loc2_.removeEventListener(AssetLoaderEvent.const_37,configLoadedHandler);
         _loc2_.removeEventListener(AssetLoaderEvent.const_47,configLoadedHandler);
         if(param1.type == AssetLoaderEvent.const_37)
         {
            setupCoreConfigFromLoader(_loc2_);
         }
         else if(var_25)
         {
            var_25.error("Failed to download external configuration document " + _loc2_.assetLoader.url + "!",true,Core.const_540);
         }
      }
      
      private function trackLoginStep(param1:String) : void
      {
         if(loaderInfo)
         {
            if(loaderInfo.parameters["processlog.enabled"] == "1")
            {
               Logger.log("* HabboMain Login Step: " + param1);
               if(false)
               {
                  ExternalInterface.call("FlashExternalInterface.logLoginStep",param1);
               }
               else
               {
                  Logger.log("HabboMain: ExternalInterface is not available, tracking is disabled");
               }
            }
         }
      }
      
      private function onProgressEvent(param1:ProgressEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:* = null;
         if(var_1)
         {
            _loc2_ = param1.bytesLoaded / param1.bytesTotal;
            updateLoadingBar(var_1,_loc2_);
            _loc3_ = var_1.getChildByName("background") as Sprite;
            if(_loc3_)
            {
               _loc3_.alpha = Math.min(1 - _loc2_,_loc3_.alpha);
            }
         }
      }
      
      private function initializeCore() : void
      {
         try
         {
            var_25.initialize();
            if(false)
            {
               ExternalInterface.addCallback("unloading",unloading);
            }
         }
         catch(error:Error)
         {
            trackLoginStep(Habbo.const_28);
            Core.crash("Failed to initialize the core: " + error.message,Core.const_984,error);
         }
      }
      
      protected function method_1(param1:Event = null) : void
      {
         var event:Event = param1;
         try
         {
            prepareCore();
         }
         catch(error:Error)
         {
            trackLoginStep(Habbo.const_28);
            Habbo.reportCrash("Failed to prepare the core: " + error.message,Core.const_984,error);
            Core.dispose();
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:* = null;
         if(var_1)
         {
            _loc2_ = var_1.getChildByName("background") as Sprite;
            if(_loc2_)
            {
               _loc2_.alpha -= 0.01;
               if(_loc2_.alpha <= 0)
               {
               }
            }
            if(var_1120)
            {
               if(true)
               {
                  dispose();
                  var_1120 = false;
               }
               else
               {
                  var_1.alpha = -0.1;
               }
            }
         }
      }
      
      public function onCoreError(param1:Event) : void
      {
         trackLoginStep(Habbo.const_28);
      }
      
      private function onCompleteEvent(param1:Event) : void
      {
         updateLoadingBar(var_1,1);
         initializeCore();
         var_1120 = true;
      }
      
      private function setupCoreConfigFromLoader(param1:AssetLoaderStruct) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(var_25)
         {
            _loc2_ = var_25.assets.getAssetByName(param1.assetName) as XmlAsset;
            _loc3_ = _loc2_.content as XML;
            if(_loc3_)
            {
               var_25.readConfigDocument(_loc3_,var_1);
            }
            else
            {
               var_25.error("Download external configuration document is null!",true,Core.const_540);
            }
         }
      }
      
      private function dispose() : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,method_1);
         removeEventListener(Event.ENTER_FRAME,onEnterFrame);
         if(var_1)
         {
            var_1.removeEventListener(Event.COMPLETE,onCompleteEvent);
            var_1.removeEventListener(ProgressEvent.PROGRESS,onProgressEvent);
            var_1 = null;
         }
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
