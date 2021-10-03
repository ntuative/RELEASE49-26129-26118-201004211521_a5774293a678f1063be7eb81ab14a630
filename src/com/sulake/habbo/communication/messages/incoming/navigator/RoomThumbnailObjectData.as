package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1483:int;
      
      private var var_1484:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1483;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1483 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1483 = this.var_1483;
         _loc1_.var_1484 = this.var_1484;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1484 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1484;
      }
   }
}
