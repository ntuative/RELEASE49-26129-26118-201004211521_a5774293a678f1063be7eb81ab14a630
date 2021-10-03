package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_133:String = "RSPE_VOTE_RESULT";
      
      public static const const_117:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1307:int = 0;
      
      private var var_966:String = "";
      
      private var var_661:Array;
      
      private var var_1011:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_1011 = [];
         var_661 = [];
         super(param1,param2,param7,param8);
         var_966 = param3;
         var_1011 = param4;
         var_661 = param5;
         if(var_661 == null)
         {
            var_661 = [];
         }
         var_1307 = param6;
      }
      
      public function get votes() : Array
      {
         return var_661.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1307;
      }
      
      public function get question() : String
      {
         return var_966;
      }
      
      public function get choices() : Array
      {
         return var_1011.slice();
      }
   }
}
