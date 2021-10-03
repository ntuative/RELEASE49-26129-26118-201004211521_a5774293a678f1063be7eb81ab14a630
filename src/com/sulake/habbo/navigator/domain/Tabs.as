package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_625:int = 6;
      
      public static const const_206:int = 5;
      
      public static const const_603:int = 2;
      
      public static const const_284:int = 9;
      
      public static const const_316:int = 4;
      
      public static const const_241:int = 2;
      
      public static const const_679:int = 4;
      
      public static const const_224:int = 8;
      
      public static const const_638:int = 7;
      
      public static const const_266:int = 3;
      
      public static const const_296:int = 1;
      
      public static const const_227:int = 5;
      
      public static const const_397:int = 12;
      
      public static const const_295:int = 1;
      
      public static const const_681:int = 11;
      
      public static const const_674:int = 3;
      
      public static const const_1539:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_405:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_405 = new Array();
         var_405.push(new Tab(_navigator,const_296,const_397,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_432));
         var_405.push(new Tab(_navigator,const_241,const_295,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_432));
         var_405.push(new Tab(_navigator,const_316,const_681,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_811));
         var_405.push(new Tab(_navigator,const_266,const_206,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_432));
         var_405.push(new Tab(_navigator,const_227,const_224,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_602));
         setSelectedTab(const_296);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_405)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_405)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_405)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_316;
      }
      
      public function get tabs() : Array
      {
         return var_405;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
