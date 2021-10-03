package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1760:int;
      
      private var var_1759:int;
      
      private var var_1909:Boolean;
      
      private var var_1911:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1910:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1759 = param1;
         var_1760 = param2;
         var_1911 = param3;
         var_1910 = param4;
         var_1909 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1759,var_1760,var_1911,var_1910,int(var_1909)];
      }
      
      public function dispose() : void
      {
      }
   }
}
