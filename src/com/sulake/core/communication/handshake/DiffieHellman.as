package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1195:BigInteger;
      
      private var var_597:BigInteger;
      
      private var var_1458:BigInteger;
      
      private var var_1457:BigInteger;
      
      private var var_1829:BigInteger;
      
      private var var_1828:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1195 = param1;
         var_1458 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1829.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1457 = new BigInteger();
         var_1457.fromRadix(param1,param2);
         var_1829 = var_1457.modPow(var_597,var_1195);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1828.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1195.toString() + ",generator: " + var_1458.toString() + ",secret: " + param1);
         var_597 = new BigInteger();
         var_597.fromRadix(param1,param2);
         var_1828 = var_1458.modPow(var_597,var_1195);
         return true;
      }
   }
}
