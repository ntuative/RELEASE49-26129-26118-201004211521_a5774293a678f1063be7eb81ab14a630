package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_727:int = 2;
      
      public static const const_924:int = 6;
      
      public static const const_623:int = 1;
      
      public static const const_628:int = 3;
      
      public static const const_851:int = 4;
      
      public static const const_536:int = 5;
       
      
      private var var_1938:String;
      
      private var var_959:int;
      
      private var var_1939:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_959 = param2;
         var_1939 = param3;
         var_1938 = param4;
      }
      
      public function get time() : String
      {
         return var_1938;
      }
      
      public function get senderId() : int
      {
         return var_959;
      }
      
      public function get messageText() : String
      {
         return var_1939;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
