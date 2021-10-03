package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1373:String = "WN_CRETAE";
      
      public static const const_1497:String = "WN_CREATED";
      
      public static const const_1061:String = "WN_DESTROY";
      
      public static const const_1062:String = "WN_DESTROYED";
      
      public static const const_939:String = "WN_OPEN";
      
      public static const const_1035:String = "WN_OPENED";
      
      public static const const_922:String = "WN_CLOSE";
      
      public static const const_886:String = "WN_CLOSED";
      
      public static const const_1063:String = "WN_FOCUS";
      
      public static const const_1012:String = "WN_FOCUSED";
      
      public static const const_1036:String = "WN_UNFOCUS";
      
      public static const const_935:String = "WN_UNFOCUSED";
      
      public static const const_924:String = "WN_ACTIVATE";
      
      public static const const_331:String = "WN_ACTVATED";
      
      public static const const_994:String = "WN_DEACTIVATE";
      
      public static const const_1001:String = "WN_DEACTIVATED";
      
      public static const const_409:String = "WN_SELECT";
      
      public static const const_356:String = "WN_SELECTED";
      
      public static const const_706:String = "WN_UNSELECT";
      
      public static const const_667:String = "WN_UNSELECTED";
      
      public static const const_949:String = "WN_LOCK";
      
      public static const const_1070:String = "WN_LOCKED";
      
      public static const const_961:String = "WN_UNLOCK";
      
      public static const const_1028:String = "WN_UNLOCKED";
      
      public static const const_918:String = "WN_ENABLE";
      
      public static const const_760:String = "WN_ENABLED";
      
      public static const const_937:String = "WN_DISABLE";
      
      public static const const_650:String = "WN_DISABLED";
      
      public static const const_571:String = "WN_RESIZE";
      
      public static const const_178:String = "WN_RESIZED";
      
      public static const const_885:String = "WN_RELOCATE";
      
      public static const const_393:String = "WN_RELOCATED";
      
      public static const const_962:String = "WN_MINIMIZE";
      
      public static const const_920:String = "WN_MINIMIZED";
      
      public static const const_1078:String = "WN_MAXIMIZE";
      
      public static const const_1057:String = "WN_MAXIMIZED";
      
      public static const const_1048:String = "WN_RESTORE";
      
      public static const const_983:String = "WN_RESTORED";
      
      public static const const_1730:String = "WN_ARRANGE";
      
      public static const const_1574:String = "WN_ARRANGED";
      
      public static const const_1693:String = "WN_UPDATE";
      
      public static const const_1767:String = "WN_UPDATED";
      
      public static const const_320:String = "WN_CHILD_ADDED";
      
      public static const const_653:String = "WN_CHILD_REMOVED";
      
      public static const WINDOW_NOTIFY_CHILD_RESIZED:String = "WN_CHILD_RESIZED";
      
      public static const const_277:String = "WN_CHILD_RELOCATED";
      
      public static const const_220:String = "WN_CHILD_ACTIVATED";
      
      public static const const_518:String = "WN_PARENT_ADDED";
      
      public static const const_1090:String = "WN_PARENT_REMOVED";
      
      public static const const_401:String = "WN_PARENT_RESIZED";
      
      public static const const_1108:String = "WN_PARENT_RELOCATED";
      
      public static const const_748:String = "WN_PARENT_ACTIVATED";
      
      public static const const_493:String = "WN_STATE_UPDATED";
      
      public static const const_464:String = "WN_STYLE_UPDATED";
      
      public static const const_441:String = "WN_PARAM_UPDATED";
      
      public static const const_1692:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1862,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
