package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_692:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_692 = new ByteArray();
         var_692.writeShort(param1);
         var_692.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_692.position = 0;
         if(false)
         {
            _loc1_ = var_692.readShort();
            var_692.position = 0;
         }
         return _loc1_;
      }
   }
}
