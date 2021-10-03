package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2308:Boolean;
      
      private var var_2307:int;
      
      private var var_2306:Boolean;
      
      private var var_1460:String;
      
      private var var_1184:String;
      
      private var var_2049:int;
      
      private var var_1837:String;
      
      private var var_2305:String;
      
      private var var_1836:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2049 = param1.readInteger();
         this.var_1460 = param1.readString();
         this.var_1837 = param1.readString();
         this.var_2308 = param1.readBoolean();
         this.var_2306 = param1.readBoolean();
         param1.readString();
         this.var_2307 = param1.readInteger();
         this.var_1836 = param1.readString();
         this.var_2305 = param1.readString();
         this.var_1184 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1184;
      }
      
      public function get avatarName() : String
      {
         return this.var_1460;
      }
      
      public function get avatarId() : int
      {
         return this.var_2049;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2308;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2305;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1836;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2306;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1837;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2307;
      }
   }
}
