package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_1033:int = 0;
      
      private var _data:String = "";
      
      private var var_1495:int = -1;
      
      private var var_32:int = 0;
      
      private var _type:int = 0;
      
      private var var_1034:int = 0;
      
      private var var_2390:String = "";
      
      private var var_1861:int = 0;
      
      private var _id:int = 0;
      
      private var var_209:Boolean = false;
      
      private var var_219:int = 0;
      
      private var var_2101:String = null;
      
      private var var_79:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_80:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_209)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_209)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_219;
      }
      
      public function get extra() : int
      {
         return var_1495;
      }
      
      public function get state() : int
      {
         return var_32;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_209)
         {
            var_219 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_209)
         {
            var_79 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_209)
         {
            var_1495 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_80;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_209)
         {
            var_32 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1861;
      }
      
      public function get staticClass() : String
      {
         return var_2101;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_209)
         {
            var_1861 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_209)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_209)
         {
            var_2101 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_209 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_209)
         {
            var_1033 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_209)
         {
            var_1034 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_209)
         {
            var_80 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_1033;
      }
      
      public function get x() : Number
      {
         return var_79;
      }
      
      public function get sizeY() : int
      {
         return var_1034;
      }
   }
}
