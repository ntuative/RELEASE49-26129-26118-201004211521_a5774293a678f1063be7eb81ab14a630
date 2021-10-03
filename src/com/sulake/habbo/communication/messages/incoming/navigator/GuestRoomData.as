package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1648:int;
      
      private var var_2139:String;
      
      private var var_2141:int;
      
      private var var_2138:int;
      
      private var var_771:Boolean;
      
      private var var_1999:Boolean;
      
      private var var_449:int;
      
      private var var_1276:String;
      
      private var var_1998:int;
      
      private var var_1182:int;
      
      private var _ownerName:String;
      
      private var var_743:String;
      
      private var var_2137:int;
      
      private var var_2140:RoomThumbnailData;
      
      private var var_2093:Boolean;
      
      private var var_638:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_638 = new Array();
         super();
         var_449 = param1.readInteger();
         var_771 = param1.readBoolean();
         var_743 = param1.readString();
         _ownerName = param1.readString();
         var_1998 = param1.readInteger();
         var_1648 = param1.readInteger();
         var_2137 = param1.readInteger();
         var_1276 = param1.readString();
         var_2141 = param1.readInteger();
         var_2093 = param1.readBoolean();
         var_2138 = param1.readInteger();
         var_1182 = param1.readInteger();
         var_2139 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_638.push(_loc4_);
            _loc3_++;
         }
         var_2140 = new RoomThumbnailData(param1);
         var_1999 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_2137;
      }
      
      public function get roomName() : String
      {
         return var_743;
      }
      
      public function get userCount() : int
      {
         return var_1648;
      }
      
      public function get score() : int
      {
         return var_2138;
      }
      
      public function get eventCreationTime() : String
      {
         return var_2139;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_2093;
      }
      
      public function get tags() : Array
      {
         return var_638;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1999;
      }
      
      public function get event() : Boolean
      {
         return var_771;
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
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1182;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2141;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_2140;
      }
      
      public function get doorMode() : int
      {
         return var_1998;
      }
      
      public function get flatId() : int
      {
         return var_449;
      }
      
      public function get description() : String
      {
         return var_1276;
      }
   }
}
