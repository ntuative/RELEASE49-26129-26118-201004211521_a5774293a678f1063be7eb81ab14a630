package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_821:String = "inventory_badges";
      
      public static const const_1354:String = "inventory_clothes";
      
      public static const const_1403:String = "inventory_furniture";
      
      public static const const_705:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_879:String = "inventory_effects";
       
      
      private var var_2023:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_705);
         var_2023 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_2023;
      }
   }
}
