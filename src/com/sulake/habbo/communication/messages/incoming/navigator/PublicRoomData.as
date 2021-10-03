package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1666:int;
      
      private var var_1890:String;
      
      private var var_1650:int;
      
      private var _disposed:Boolean;
      
      private var var_1889:int;
      
      private var var_1649:String;
      
      private var var_1138:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1649 = param1.readString();
         var_1666 = param1.readInteger();
         var_1650 = param1.readInteger();
         var_1890 = param1.readString();
         var_1889 = param1.readInteger();
         var_1138 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1889;
      }
      
      public function get worldId() : int
      {
         return var_1650;
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
      }
      
      public function get unitPropertySet() : String
      {
         return var_1649;
      }
      
      public function get unitPort() : int
      {
         return var_1666;
      }
      
      public function get castLibs() : String
      {
         return var_1890;
      }
      
      public function get nodeId() : int
      {
         return var_1138;
      }
   }
}
