package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_319:String;
      
      private var var_2341:String;
      
      private var var_2340:int;
      
      private var var_2339:int;
      
      private var var_595:String;
      
      private var var_1184:String;
      
      private var _name:String;
      
      private var var_491:int;
      
      private var var_869:int;
      
      private var var_2338:int;
      
      private var var_2211:int;
      
      private var var_2342:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2339;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1184;
      }
      
      public function get customData() : String
      {
         return this.var_2341;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_491;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2340;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2342;
      }
      
      public function get figure() : String
      {
         return this.var_319;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2211;
      }
      
      public function get sex() : String
      {
         return this.var_595;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_319 = param1.readString();
         this.var_595 = param1.readString();
         this.var_2341 = param1.readString();
         this.var_1184 = param1.readString();
         this.var_2338 = param1.readInteger();
         this.var_2342 = param1.readString();
         this.var_2340 = param1.readInteger();
         this.var_2339 = param1.readInteger();
         this.var_2211 = param1.readInteger();
         this.var_869 = param1.readInteger();
         this.var_491 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2338;
      }
      
      public function get respectLeft() : int
      {
         return this.var_869;
      }
   }
}
