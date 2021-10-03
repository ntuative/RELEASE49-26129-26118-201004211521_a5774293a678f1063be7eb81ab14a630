package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1423:GarbageMonitor = null;
      
      private var var_1142:int = 0;
      
      private var var_1352:Boolean = false;
      
      private var var_1701:String = "";
      
      private var var_1424:String = "";
      
      private var var_336:Number = 0;
      
      private var var_1143:int = 10;
      
      private var var_2299:Array;
      
      private var var_647:int = 0;
      
      private var var_1141:int = 60;
      
      private var var_978:int = 0;
      
      private var var_977:int = 0;
      
      private var var_2236:String = "";
      
      private var var_1702:Number = 0;
      
      private var var_1145:int = 1000;
      
      private var var_1700:Boolean = true;
      
      private var var_1703:Number = 0.15;
      
      private var var_147:IHabboConfigurationManager = null;
      
      private var var_1699:String = "";
      
      private var var_1144:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2299 = [];
         super();
         var_1424 = Capabilities.version;
         var_1701 = Capabilities.os;
         var_1352 = Capabilities.isDebugger;
         var_1699 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1423 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1142 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1423.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1423.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_336;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1141 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1424;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_977;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1145)
         {
            ++var_978;
            _loc3_ = true;
         }
         else
         {
            ++var_647;
            if(var_647 <= 1)
            {
               var_336 = param1;
            }
            else
            {
               _loc4_ = Number(var_647);
               var_336 = var_336 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1142 > var_1141 * 1000 && var_1144 < var_1143)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_336);
            _loc5_ = true;
            if(var_1700 && var_1144 > 0)
            {
               _loc6_ = differenceInPercents(var_1702,var_336);
               if(_loc6_ < var_1703)
               {
                  _loc5_ = false;
               }
            }
            var_1142 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_1702 = var_336;
               if(sendReport())
               {
                  ++var_1144;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1143 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1145 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1699,var_1424,var_1701,var_2236,var_1352,_loc4_,_loc3_,var_977,var_336,var_978);
            _connection.send(_loc1_);
            var_977 = 0;
            var_336 = 0;
            var_647 = 0;
            var_978 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_147 = param1;
         var_1141 = int(var_147.getKey("performancetest.interval","60"));
         var_1145 = int(var_147.getKey("performancetest.slowupdatelimit","1000"));
         var_1143 = int(var_147.getKey("performancetest.reportlimit","10"));
         var_1703 = Number(var_147.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_1700 = Boolean(int(var_147.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
