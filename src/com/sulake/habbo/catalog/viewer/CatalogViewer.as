package com.sulake.habbo.catalog.viewer
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.room.IRoomEngine;
   import flash.events.Event;
   
   public class CatalogViewer implements ICatalogViewer
   {
       
      
      private var _container:IWindowContainer;
      
      private var _roomEngine:IRoomEngine;
      
      private var var_1580:HabboCatalog;
      
      private var var_398:ICatalogPage;
      
      private var _catalog:IHabboCatalog;
      
      public function CatalogViewer(param1:IHabboCatalog, param2:IWindowContainer, param3:IRoomEngine)
      {
         super();
         _catalog = param1;
         _container = param2;
         _roomEngine = param3;
      }
      
      public function getCurrentLayoutCode() : String
      {
         if(var_398 == null)
         {
            return "";
         }
         return var_398.layoutCode;
      }
      
      public function set habboCatalog(param1:HabboCatalog) : void
      {
         var_1580 = param1;
      }
      
      public function get habboCatalog() : HabboCatalog
      {
         return var_1580;
      }
      
      public function showCatalogPage(param1:int, param2:String, param3:IPageLocalization, param4:Array) : void
      {
         Logger.log("[Catalog Viewer] Show Catalog Page: " + [param1,param2,param4.length]);
         if(var_398 != null)
         {
            if(var_398.pageId == param1)
            {
               return;
            }
            _container.removeChild(var_398.window);
            var_398.dispose();
         }
         var _loc5_:ICatalogPage = new CatalogPage(this,param1,param2,param3,param4,var_1580);
         var_398 = _loc5_;
         if(_loc5_.window != null)
         {
            _container.addChild(_loc5_.window);
         }
         else
         {
            Logger.log("[CatalogViewer] No window for page: " + param2);
         }
         _container.visible = true;
      }
      
      public function get catalog() : IHabboCatalog
      {
         return _catalog;
      }
      
      public function get roomEngine() : IRoomEngine
      {
         return _roomEngine;
      }
      
      public function dispatchWidgetEvent(param1:Event) : Boolean
      {
         return var_398.dispatchWidgetEvent(param1);
      }
      
      public function dispose() : void
      {
      }
   }
}
