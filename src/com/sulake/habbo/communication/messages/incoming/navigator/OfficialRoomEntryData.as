package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1363:int = 4;
      
      public static const const_661:int = 3;
      
      public static const const_525:int = 2;
      
      public static const const_812:int = 1;
       
      
      private var var_1933:String;
      
      private var _disposed:Boolean;
      
      private var var_1648:int;
      
      private var var_1937:Boolean;
      
      private var var_826:String;
      
      private var var_848:PublicRoomData;
      
      private var var_1936:int;
      
      private var _index:int;
      
      private var var_1935:String;
      
      private var _type:int;
      
      private var var_1788:String;
      
      private var var_847:GuestRoomData;
      
      private var var_1934:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1933 = param1.readString();
         var_1934 = param1.readString();
         var_1937 = param1.readInteger() == 1;
         var_1935 = param1.readString();
         var_826 = param1.readString();
         var_1936 = param1.readInteger();
         var_1648 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_812)
         {
            var_1788 = param1.readString();
         }
         else if(_type == const_661)
         {
            var_848 = new PublicRoomData(param1);
         }
         else if(_type == const_525)
         {
            var_847 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1936;
      }
      
      public function get popupCaption() : String
      {
         return var_1933;
      }
      
      public function get userCount() : int
      {
         return var_1648;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1937;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_812)
         {
            return 0;
         }
         if(this.type == const_525)
         {
            return this.var_847.maxUserCount;
         }
         if(this.type == const_661)
         {
            return this.var_848.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1934;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_847 != null)
         {
            this.var_847.dispose();
            this.var_847 = null;
         }
         if(this.var_848 != null)
         {
            this.var_848.dispose();
            this.var_848 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_847;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1935;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_848;
      }
      
      public function get picRef() : String
      {
         return var_826;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1788;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
