package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1873:int;
      
      private var var_1931:int = 0;
      
      private var var_1928:String;
      
      private var var_1930:int;
      
      private var var_1929:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1873 = param1;
         var_1930 = param2;
         var_1929 = param3;
         var_1928 = param4;
      }
      
      public function get length() : int
      {
         return var_1930;
      }
      
      public function get name() : String
      {
         return var_1929;
      }
      
      public function get creator() : String
      {
         return var_1928;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1931;
      }
      
      public function get id() : int
      {
         return var_1873;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1931 = param1;
      }
   }
}
