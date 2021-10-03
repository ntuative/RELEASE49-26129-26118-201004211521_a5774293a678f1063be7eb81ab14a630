package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_518:String = "Rectangle";
      
      public static const const_61:String = "Boolean";
      
      public static const const_700:String = "Number";
      
      public static const const_65:String = "int";
      
      public static const STRING:String = "String";
      
      public static const const_612:String = "Point";
      
      public static const const_986:String = "Array";
      
      public static const const_854:String = "uint";
      
      public static const const_363:String = "hex";
      
      public static const const_995:String = "Map";
       
      
      private var var_566:String;
      
      private var var_168:Object;
      
      private var var_2303:Boolean;
      
      private var _type:String;
      
      private var var_1750:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_566 = param1;
         var_168 = param2;
         _type = param3;
         var_1750 = param4;
         var_2303 = param3 == const_995 || param3 == const_986 || param3 == const_612 || param3 == const_518;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_363:
               return "0x" + uint(var_168).toString(16);
            case const_61:
               return Boolean(var_168) == true ? "true" : "false";
            case const_612:
               return "Point(" + Point(var_168).x + ", " + Point(var_168).y + ")";
            case const_518:
               return "Rectangle(" + Rectangle(var_168).x + ", " + Rectangle(var_168).y + ", " + Rectangle(var_168).width + ", " + Rectangle(var_168).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_995:
               _loc3_ = var_168 as Map;
               _loc1_ = "<var key=\"" + var_566 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_986:
               _loc4_ = var_168 as Array;
               _loc1_ = "<var key=\"" + var_566 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_612:
               _loc5_ = var_168 as Point;
               _loc1_ = "<var key=\"" + var_566 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_65 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_65 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_518:
               _loc6_ = var_168 as Rectangle;
               _loc1_ = "<var key=\"" + var_566 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_65 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_65 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_65 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_65 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_363:
               _loc1_ = "<var key=\"" + var_566 + "\" value=\"" + "0x" + uint(var_168).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_566 + "\" value=\"" + var_168 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_168;
      }
      
      public function get valid() : Boolean
      {
         return var_1750;
      }
      
      public function get key() : String
      {
         return var_566;
      }
   }
}
