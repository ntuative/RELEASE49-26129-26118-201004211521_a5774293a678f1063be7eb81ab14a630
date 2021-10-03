package com.sulake.core.utils
{
   import com.sulake.core.Core;
   import deng.fzip.FZip;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   
   public class ZipLoader extends LibraryLoader
   {
       
      
      private var var_1191:uint = 0;
      
      private var var_1190:uint = 0;
      
      private var var_109:FZip;
      
      private var var_1189:Array;
      
      private var var_1801:uint = 0;
      
      private var var_816:int = 0;
      
      private var var_2378:Array;
      
      public function ZipLoader(param1:Boolean)
      {
         super(param1);
         var_1189 = new Array();
      }
      
      override protected function removeEventListeners() : void
      {
         if(var_109)
         {
            var_109.removeEventListener(Event.COMPLETE,onComplete);
            var_109.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
            var_109.removeEventListener(ProgressEvent.PROGRESS,onProgress);
            var_109.removeEventListener(HTTPStatusEvent.HTTP_STATUS,onHTTPStatus);
         }
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         failure("IO Error, send or load operation failed for file \"undefined\": " + param1.text);
         if(!handleHttpStatus(var_213))
         {
            removeEventListeners();
         }
      }
      
      override public function get bytesLoaded() : uint
      {
         return var_1190;
      }
      
      override protected function loadEventHandler(param1:Event) : void
      {
         trace(param1.type);
      }
      
      override public function get bytesTotal() : uint
      {
         return var_1191;
      }
      
      public function get resources() : Array
      {
         return var_1189;
      }
      
      private function onLoaderComplete(param1:Event) : void
      {
         var loaderInfo:LoaderInfo = null;
         var name:String = null;
         var event:Event = param1;
         try
         {
            loaderInfo = event.target as LoaderInfo;
            name = getQualifiedClassName(var_14.content);
            var_1189.push(var_14.contentLoaderInfo.applicationDomain.getDefinition(name));
            ++var_816;
            if(var_1189.length == var_1801)
            {
               var_14.contentLoaderInfo.removeEventListener(Event.COMPLETE,onLoaderComplete);
               var_14.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
               removeEventListeners();
               dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,0,var_1191,var_1190));
            }
            else
            {
               var_14.loadBytes(var_109.getFileAt(var_816).content);
            }
         }
         catch(e:Error)
         {
            Core.crash("Crashed on ZipLoader.onLoaderComplete",Core.const_659,e);
         }
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         var_1191 = param1.bytesTotal;
         var_1190 = param1.bytesLoaded;
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,0,var_1191,var_1190));
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null, param3:int = 1) : void
      {
         var_144 = param1;
         _name = parseNameFromUrl(var_144.url);
         var_291 = param3;
         if(var_109)
         {
            var_109.close();
         }
         ErrorReportStorage.addDebugData("Library name","Library name " + _name);
         var_109 = new FZip();
         var_109.addEventListener(Event.COMPLETE,onComplete);
         var_109.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_109.addEventListener(ProgressEvent.PROGRESS,onProgress);
         var_109.addEventListener(HTTPStatusEvent.HTTP_STATUS,onHTTPStatus);
         var_109.load(var_144);
      }
      
      override protected function handleHttpStatus(param1:int) : Boolean
      {
         if(param1 >= 400)
         {
            if(var_291 > 0)
            {
               if(var_109)
               {
                  var_109.close();
               }
               addRequestCounterToUrlRequest(var_144,const_1034 - var_291);
               var_109.load(var_144);
               --var_291;
               return true;
            }
            failure("HTTP Error " + param1 + " \"" + var_144.url + "\"");
            removeEventListeners();
         }
         return false;
      }
      
      private function onComplete(param1:Event) : void
      {
         var event:Event = param1;
         var_816 = 0;
         var_1801 = var_109.getFileCount();
         removeEventListeners();
         try
         {
            if(var_14)
            {
               var_14.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoaderComplete);
               var_14.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
               var_14.loadBytes(var_109.getFileAt(var_816).content);
            }
         }
         catch(e:Error)
         {
            Core.crash("Crashed on ZipLoader.onComplete",Core.const_659,e);
         }
      }
      
      private function onHTTPStatus(param1:HTTPStatusEvent) : void
      {
         var_213 = param1.status;
         debug("Load event STATUS " + var_213 + " for file \"" + var_144.url + "\"");
      }
   }
}
