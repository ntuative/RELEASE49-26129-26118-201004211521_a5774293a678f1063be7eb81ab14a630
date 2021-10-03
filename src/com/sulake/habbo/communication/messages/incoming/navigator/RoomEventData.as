package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1986:String;
      
      private var var_449:int;
      
      private var var_1982:String;
      
      private var var_1984:String;
      
      private var var_1981:int;
      
      private var var_1983:String;
      
      private var var_1985:int;
      
      private var var_638:Array;
      
      private var var_1002:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_638 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1002 = false;
            return;
         }
         this.var_1002 = true;
         var_1981 = int(_loc2_);
         var_1982 = param1.readString();
         var_449 = int(param1.readString());
         var_1985 = param1.readInteger();
         var_1986 = param1.readString();
         var_1984 = param1.readString();
         var_1983 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_638.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_1985;
      }
      
      public function get eventName() : String
      {
         return var_1986;
      }
      
      public function get eventDescription() : String
      {
         return var_1984;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_1982;
      }
      
      public function get tags() : Array
      {
         return var_638;
      }
      
      public function get creationTime() : String
      {
         return var_1983;
      }
      
      public function get exists() : Boolean
      {
         return var_1002;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_1981;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_638 = null;
      }
      
      public function get flatId() : int
      {
         return var_449;
      }
   }
}
