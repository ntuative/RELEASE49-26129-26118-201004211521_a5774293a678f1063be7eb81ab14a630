package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_633:RoomObjectLocationCacheItem = null;
      
      private var var_174:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_633 = new RoomObjectLocationCacheItem(param1);
         var_174 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_633;
      }
      
      public function dispose() : void
      {
         if(var_633 != null)
         {
            var_633.dispose();
            var_633 = null;
         }
         if(var_174 != null)
         {
            var_174.dispose();
            var_174 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_174;
      }
   }
}
