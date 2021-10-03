package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1020:SoundChannel = null;
      
      private var var_849:Boolean;
      
      private var var_1019:Sound = null;
      
      private var var_748:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1019 = param1;
         var_1019.addEventListener(Event.COMPLETE,onComplete);
         var_748 = 1;
         var_849 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_849;
      }
      
      public function stop() : Boolean
      {
         var_1020.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_849 = false;
         var_1020 = var_1019.play(0);
         this.volume = var_748;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_748;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1020.position;
      }
      
      public function get length() : Number
      {
         return var_1019.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_748 = param1;
         if(var_1020 != null)
         {
            var_1020.soundTransform = new SoundTransform(var_748);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_849 = true;
      }
   }
}
