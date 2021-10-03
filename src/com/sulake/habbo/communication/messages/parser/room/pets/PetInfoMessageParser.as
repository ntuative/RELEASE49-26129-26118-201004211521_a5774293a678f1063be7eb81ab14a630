package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1705:int;
      
      private var var_319:String;
      
      private var var_1712:int;
      
      private var var_1704:int;
      
      private var var_1710:int;
      
      private var var_1708:int;
      
      private var _nutrition:int;
      
      private var var_1146:int;
      
      private var var_1707:int;
      
      private var var_1709:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1706:int;
      
      private var var_1711:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1712;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_1708;
      }
      
      public function flush() : Boolean
      {
         var_1146 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_1707;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_1709;
      }
      
      public function get maxNutrition() : int
      {
         return var_1711;
      }
      
      public function get figure() : String
      {
         return var_319;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1704;
      }
      
      public function get petId() : int
      {
         return var_1146;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1146 = param1.readInteger();
         _name = param1.readString();
         var_1712 = param1.readInteger();
         var_1707 = param1.readInteger();
         var_1710 = param1.readInteger();
         var_1709 = param1.readInteger();
         _energy = param1.readInteger();
         var_1708 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_1711 = param1.readInteger();
         var_319 = param1.readString();
         var_1704 = param1.readInteger();
         var_1706 = param1.readInteger();
         var_1705 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1710;
      }
      
      public function get ownerId() : int
      {
         return var_1706;
      }
      
      public function get age() : int
      {
         return var_1705;
      }
   }
}
