package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1712:int;
      
      private var var_1710:int;
      
      private var var_1898:int;
      
      private var _type:int;
      
      private var var_1146:int = -1;
      
      private var var_1899:int;
      
      private var _nutrition:int;
      
      private var var_1897:int;
      
      private var _energy:int;
      
      private var var_1896:int;
      
      private var var_1895:int;
      
      private var var_1900:int;
      
      private var var_1705:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_1894:Boolean;
      
      private var _name:String = "";
      
      private var var_1706:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_1894;
      }
      
      public function get level() : int
      {
         return var_1712;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_1897;
      }
      
      public function get id() : int
      {
         return var_1146;
      }
      
      public function get nutritionMax() : int
      {
         return var_1898;
      }
      
      public function get ownerId() : int
      {
         return var_1706;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1146 = param1.id;
         _type = param1.petType;
         var_1896 = param1.petRace;
         _image = param1.image;
         var_1894 = param1.isOwnPet;
         var_1706 = param1.ownerId;
         _ownerName = param1.ownerName;
         _canOwnerBeKicked = param1.canOwnerBeKicked;
         var_1712 = param1.level;
         var_1899 = param1.levelMax;
         var_1710 = param1.experience;
         var_1897 = param1.experienceMax;
         _energy = param1.energy;
         var_1895 = param1.energyMax;
         _nutrition = param1.nutrition;
         var_1898 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_1900 = param1.roomIndex;
         var_1705 = param1.age;
      }
      
      public function get roomIndex() : int
      {
         return var_1900;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get energyMax() : int
      {
         return var_1895;
      }
      
      public function get levelMax() : int
      {
         return var_1899;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get race() : int
      {
         return var_1896;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1710;
      }
      
      public function get age() : int
      {
         return var_1705;
      }
   }
}
