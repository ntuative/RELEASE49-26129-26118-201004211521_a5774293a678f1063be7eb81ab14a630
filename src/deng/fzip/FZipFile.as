package deng.fzip
{
   import deng.utils.ChecksumUtil;
   import flash.utils.*;
   
   public class FZipFile
   {
      
      public static const const_746:int = 8;
      
      public static const const_1632:int = 10;
      
      public static const const_1294:int = 6;
      
      private static var var_1023:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").hasComplexContent();
      
      public static const const_1141:int = 0;
      
      public static const const_1607:int = 1;
      
      public static const const_1612:int = 2;
      
      public static const const_1452:int = 3;
      
      public static const const_1462:int = 4;
      
      public static const const_1572:int = 5;
      
      public static const const_1625:int = 9;
      
      public static const const_1585:int = 7;
       
      
      private var var_170:uint = 0;
      
      private var var_1022:uint = 0;
      
      private var var_698:Date;
      
      private var var_1942:int = -1;
      
      private var parseFunc:Function;
      
      private var var_485:Boolean = false;
      
      private var var_2319:int = -1;
      
      private var var_1234:uint = 0;
      
      private var var_1944:String = "";
      
      private var _extraFields:Dictionary;
      
      private var var_850:uint;
      
      private var var_19:ByteArray;
      
      private var var_699:uint;
      
      private var var_1487:Boolean = false;
      
      private var var_2320:int = -1;
      
      private var var_1485:String = "2.0";
      
      private var var_169:Boolean = false;
      
      private var var_1943:Boolean = false;
      
      private var var_349:String;
      
      private var var_591:uint = 0;
      
      private var var_1235:int = 0;
      
      private var var_412:String = "";
      
      private var var_700:int = 8;
      
      private var var_1486:Boolean = false;
      
      public function FZipFile(param1:String = "utf-8")
      {
         parseFunc = parseFileHead;
         super();
         var_349 = param1;
         _extraFields = new Dictionary();
         var_19 = new ByteArray();
         var_19.endian = Endian.BIG_ENDIAN;
      }
      
      public function get sizeUncompressed() : uint
      {
         return var_591;
      }
      
      public function set filename(param1:String) : void
      {
         var_412 = param1;
      }
      
      protected function uncompress() : void
      {
         if(var_169 && false)
         {
            var_19.position = 0;
            if(var_1023)
            {
               var_19.uncompress.apply(var_19,["deflate"]);
            }
            else
            {
               var_19.uncompress();
            }
            var_19.position = 0;
            var_169 = false;
         }
      }
      
      public function get filename() : String
      {
         return var_412;
      }
      
      public function get date() : Date
      {
         return var_698;
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && parseFunc(param1))
         {
         }
         return parseFunc === parseFileIdle;
      }
      
      private function parseFileContent(param1:IDataInput) : Boolean
      {
         if(var_1486)
         {
            parseFunc = parseFileIdle;
            throw new Error("Data descriptors are not supported.");
         }
         if(var_170 == 0)
         {
            parseFunc = parseFileIdle;
         }
         else
         {
            if(param1.bytesAvailable < var_170)
            {
               return false;
            }
            parseContent(param1);
            parseFunc = parseFileIdle;
         }
         return true;
      }
      
      public function get versionNumber() : String
      {
         return var_1485;
      }
      
      public function getContentAsString(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:* = null;
         if(var_169)
         {
            uncompress();
         }
         var_19.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = var_19.readUTFBytes(var_19.bytesAvailable);
         }
         else
         {
            _loc3_ = var_19.readMultiByte(var_19.bytesAvailable,param2);
         }
         var_19.position = 0;
         if(param1)
         {
            compress();
         }
         return _loc3_;
      }
      
      private function parseFileIdle(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function parseContent(param1:IDataInput) : void
      {
         var _loc2_:* = 0;
         if(var_700 === const_746 && !var_1487)
         {
            if(var_1023)
            {
               param1.readBytes(var_19,0,var_170);
            }
            else
            {
               if(!var_485)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               var_19.writeByte(120);
               _loc2_ = uint(~var_1942 << 6 & 192);
               _loc2_ += 31 - (30720 | _loc2_) % 31;
               var_19.writeByte(_loc2_);
               param1.readBytes(var_19,2,var_170);
               var_19.position = var_19.length;
               var_19.writeUnsignedInt(var_850);
            }
            var_169 = true;
         }
         else
         {
            if(var_700 != const_1141)
            {
               throw new Error("Compression method " + var_700 + " is not supported.");
            }
            param1.readBytes(var_19,0,var_170);
            var_169 = false;
         }
         var_19.position = 0;
      }
      
      private function parseFileHead(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            parseHead(param1);
            if(var_1022 + var_1234 > 0)
            {
               parseFunc = parseFileHeadExt;
            }
            else
            {
               parseFunc = parseFileContent;
            }
            return true;
         }
         return false;
      }
      
      public function setContentAsString(param1:String, param2:String = "utf-8") : void
      {
         var_19.length = 0;
         var_19.position = 0;
         var_169 = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               var_19.writeUTFBytes(param1);
            }
            else
            {
               var_19.writeMultiByte(param1,param2);
            }
            var_699 = ChecksumUtil.CRC32(var_19);
            var_485 = false;
         }
         compress();
      }
      
      public function set date(param1:Date) : void
      {
         var_698 = param1 != null ? param1 : new Date();
      }
      
      public function serialize(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc10_:* = null;
         var _loc15_:* = null;
         var _loc16_:Boolean = false;
         if(param1 == null)
         {
            return 0;
         }
         if(param3)
         {
            param1.writeUnsignedInt(33639248);
            param1.writeShort(var_1235 << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(67324752);
         }
         param1.writeShort(var_1235 << 8 | 20);
         param1.writeShort(var_349 == "utf-8" ? 2048 : 0);
         param1.writeShort(const_746);
         var _loc5_:Date = var_698 != null ? var_698 : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(var_699);
         param1.writeUnsignedInt(var_170);
         param1.writeUnsignedInt(var_591);
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.endian = Endian.LITTLE_ENDIAN;
         if(var_349 == "utf-8")
         {
            _loc8_.writeUTFBytes(var_412);
         }
         else
         {
            _loc8_.writeMultiByte(var_412,var_349);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in _extraFields)
         {
            _loc15_ = _extraFields[_loc10_] as ByteArray;
            if(_loc15_ != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!var_485)
            {
               _loc16_ = var_169;
               if(_loc16_)
               {
                  uncompress();
               }
               var_850 = ChecksumUtil.Adler32(var_19,0,var_19.length);
               var_485 = true;
               if(_loc16_)
               {
                  compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(var_850);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && false)
         {
            if(var_349 == "utf-8")
            {
               _loc8_.writeUTFBytes(var_1944);
            }
            else
            {
               _loc8_.writeMultiByte(var_1944,var_349);
            }
         }
         var _loc12_:uint = _loc8_.position - _loc9_ - _loc11_;
         param1.writeShort(_loc9_);
         param1.writeShort(_loc11_);
         if(param3)
         {
            param1.writeShort(_loc12_);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeUnsignedInt(0);
            param1.writeUnsignedInt(param4);
         }
         if(_loc9_ + _loc11_ + _loc12_ > 0)
         {
            param1.writeBytes(_loc8_);
         }
         var _loc13_:int = 0;
         if(!param3 && var_170 > 0)
         {
            if(var_1023)
            {
               _loc13_ = 0;
               param1.writeBytes(var_19,0,_loc13_);
            }
            else
            {
               _loc13_ = 4294967290;
               param1.writeBytes(var_19,2,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      public function get sizeCompressed() : uint
      {
         return var_170;
      }
      
      protected function compress() : void
      {
         if(!var_169)
         {
            if(false)
            {
               var_19.position = 0;
               var_591 = var_19.length;
               if(var_1023)
               {
                  var_19.compress.apply(var_19,["deflate"]);
                  var_170 = var_19.length;
               }
               else
               {
                  var_19.compress();
                  var_170 = -6;
               }
               var_19.position = 0;
               var_169 = true;
            }
            else
            {
               var_170 = 0;
               var_591 = 0;
            }
         }
      }
      
      private function parseFileHeadExt(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= var_1022 + var_1234)
         {
            parseHeadExt(param1);
            parseFunc = parseFileContent;
            return true;
         }
         return false;
      }
      
      protected function parseHeadExt(param1:IDataInput) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         if(var_349 == "utf-8")
         {
            var_412 = param1.readUTFBytes(var_1022);
         }
         else
         {
            var_412 = param1.readMultiByte(var_1022,var_349);
         }
         var _loc2_:uint = var_1234;
         while(_loc2_ > 4)
         {
            _loc3_ = uint(param1.readUnsignedShort());
            _loc4_ = uint(param1.readUnsignedShort());
            if(_loc4_ > _loc2_)
            {
               throw new Error("Parse error in file " + var_412 + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               var_850 = param1.readUnsignedInt();
               var_485 = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               _extraFields[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      protected function parseHead(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         var_1235 = _loc2_ >> 8;
         var_1485 = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         var_700 = param1.readUnsignedShort();
         var_1487 = (_loc3_ & 1) !== 0;
         var_1486 = (_loc3_ & 8) !== 0;
         var_1943 = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            var_349 = "utf-8";
         }
         if(var_700 === const_1294)
         {
            var_2320 = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            var_2319 = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(var_700 === const_746)
         {
            var_1942 = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         var_698 = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         var_699 = param1.readUnsignedInt();
         var_170 = param1.readUnsignedInt();
         var_591 = param1.readUnsignedInt();
         var_1022 = param1.readUnsignedShort();
         var_1234 = param1.readUnsignedShort();
      }
      
      public function set content(param1:ByteArray) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(var_19,0,param1.length);
            var_699 = ChecksumUtil.CRC32(var_19);
            var_485 = false;
         }
         else
         {
            var_19.length = 0;
            var_19.position = 0;
            var_169 = false;
         }
         compress();
      }
      
      public function toString() : String
      {
         return "[FZipFile]\n  name:" + var_412 + "\n  date:" + var_698 + "\n  sizeCompressed:" + var_170 + "\n  sizeUncompressed:" + var_591 + "\n  versionHost:" + var_1235 + "\n  versionNumber:" + var_1485 + "\n  compressionMethod:" + var_700 + "\n  encrypted:" + var_1487 + "\n  hasDataDescriptor:" + var_1486 + "\n  hasCompressedPatchedData:" + var_1943 + "\n  filenameEncoding:" + var_349 + "\n  crc32:" + var_699.toString(16) + "\n  adler32:" + var_850.toString(16);
      }
      
      public function get content() : ByteArray
      {
         if(var_169)
         {
            uncompress();
         }
         return var_19;
      }
   }
}
