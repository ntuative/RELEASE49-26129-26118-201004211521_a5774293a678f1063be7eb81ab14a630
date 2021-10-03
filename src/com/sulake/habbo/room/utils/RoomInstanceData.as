package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_828:LegacyWallGeometry = null;
      
      private var var_575:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_576:TileHeightMap = null;
      
      private var var_1838:String = null;
      
      private var _roomId:int = 0;
      
      private var var_574:SelectedRoomObjectData = null;
      
      private var var_827:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_828 = new LegacyWallGeometry();
         var_827 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_575 != null)
         {
            var_575.dispose();
         }
         var_575 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_576 != null)
         {
            var_576.dispose();
         }
         var_576 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1838 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_828;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_574;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_827;
      }
      
      public function dispose() : void
      {
         if(var_576 != null)
         {
            var_576.dispose();
            var_576 = null;
         }
         if(var_828 != null)
         {
            var_828.dispose();
            var_828 = null;
         }
         if(var_827 != null)
         {
            var_827.dispose();
            var_827 = null;
         }
         if(var_575 != null)
         {
            var_575.dispose();
            var_575 = null;
         }
         if(var_574 != null)
         {
            var_574.dispose();
            var_574 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_576;
      }
      
      public function get worldType() : String
      {
         return var_1838;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_574 != null)
         {
            var_574.dispose();
         }
         var_574 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_575;
      }
   }
}
