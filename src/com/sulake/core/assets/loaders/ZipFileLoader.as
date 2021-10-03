package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLStream;
   
   public class ZipFileLoader extends AssetLoaderEventBroker implements IAssetLoader
   {
       
      
      protected var var_104:URLStream;
      
      protected var _type:String;
      
      protected var var_640:String;
      
      public function ZipFileLoader(param1:String, param2:URLRequest = null)
      {
         super();
         var_640 = param2 == null ? "" : param2.url;
         _type = param1;
         var_104 = new URLStream();
         var_104.addEventListener(Event.COMPLETE,loadEventHandler);
         var_104.addEventListener(HTTPStatusEvent.HTTP_STATUS,loadEventHandler);
         var_104.addEventListener(IOErrorEvent.IO_ERROR,loadEventHandler);
         var_104.addEventListener(Event.OPEN,loadEventHandler);
         var_104.addEventListener(ProgressEvent.PROGRESS,loadEventHandler);
         var_104.addEventListener(SecurityErrorEvent.SECURITY_ERROR,loadEventHandler);
         if(param2 != null)
         {
            this.load(param2);
         }
      }
      
      public function get bytesTotal() : uint
      {
         return var_104.bytesAvailable;
      }
      
      override public function dispose() : void
      {
         if(!_disposed)
         {
            super.dispose();
            var_104.removeEventListener(Event.COMPLETE,loadEventHandler);
            var_104.removeEventListener(HTTPStatusEvent.HTTP_STATUS,loadEventHandler);
            var_104.removeEventListener(IOErrorEvent.IO_ERROR,loadEventHandler);
            var_104.removeEventListener(Event.OPEN,loadEventHandler);
            var_104.removeEventListener(ProgressEvent.PROGRESS,loadEventHandler);
            var_104.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,loadEventHandler);
            var_104.close();
            var_104 = null;
            _type = null;
            var_640 = null;
         }
      }
      
      public function get ready() : Boolean
      {
         return bytesTotal > 0 ? bytesTotal == bytesLoaded : false;
      }
      
      public function load(param1:URLRequest) : void
      {
         var_640 = param1.url;
         var_104.load(param1);
      }
      
      public function get url() : String
      {
         return var_640;
      }
      
      public function get bytesLoaded() : uint
      {
         return var_104.bytesAvailable;
      }
      
      public function get mimeType() : String
      {
         return _type;
      }
      
      public function get content() : Object
      {
         return var_104;
      }
   }
}
