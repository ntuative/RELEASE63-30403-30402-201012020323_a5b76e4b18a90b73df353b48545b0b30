package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_919:BigInteger;
      
      private var var_2272:BigInteger;
      
      private var var_1712:BigInteger;
      
      private var var_2355:BigInteger;
      
      private var var_1311:BigInteger;
      
      private var var_1711:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1311 = param1;
         this.var_1711 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1311.toString() + ",generator: " + this.var_1711.toString() + ",secret: " + param1);
         this.var_919 = new BigInteger();
         this.var_919.fromRadix(param1,param2);
         this.var_2272 = this.var_1711.modPow(this.var_919,this.var_1311);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1712 = new BigInteger();
         this.var_1712.fromRadix(param1,param2);
         this.var_2355 = this.var_1712.modPow(this.var_919,this.var_1311);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2272.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2355.toRadix(param1);
      }
   }
}
