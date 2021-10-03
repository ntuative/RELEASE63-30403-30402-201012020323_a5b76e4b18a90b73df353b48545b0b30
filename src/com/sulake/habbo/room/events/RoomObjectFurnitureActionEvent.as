package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectFurnitureActionEvent extends RoomObjectEvent
   {
      
      public static const const_534:String = "ROFCAE_DICE_OFF";
      
      public static const ROOM_OBJECT_DICE_ACTIVATE:String = "ROFCAE_DICE_ACTIVATE";
      
      public static const const_396:String = "ROFCAE_USE_HABBOWHEEL";
      
      public static const const_533:String = "ROFCAE_STICKIE";
      
      public static const const_481:String = "ROFCAE_ENTER_ONEWAYDOOR";
      
      public static const const_470:String = "ROFCAE_QUEST_VENDING";
      
      public static const ROOM_OBJECT_SOUND_MACHINE_START:String = "ROFCAE_SOUND_MACHINE_START";
      
      public static const const_460:String = "ROFCAE_SOUND_MACHINE_STOP";
      
      public static const const_512:String = "ROFCAE_SOUND_MACHINE_DISPOSE";
      
      public static const const_424:String = "ROFCAE_JUKEBOX_INIT";
      
      public static const const_501:String = "ROFCAE_JUKEBOX_DISPOSE";
       
      
      public function RoomObjectFurnitureActionEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param3,param4,param5);
      }
   }
}
