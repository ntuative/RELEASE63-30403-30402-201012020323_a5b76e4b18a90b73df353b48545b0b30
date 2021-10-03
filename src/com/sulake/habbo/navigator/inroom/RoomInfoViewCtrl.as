package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_2638:int;
      
      private var var_337:RoomEventViewCtrl;
      
      private var var_245:Timer;
      
      private var var_168:RoomSettingsCtrl;
      
      private var var_247:RoomThumbnailCtrl;
      
      private var var_1037:TagRenderer;
      
      private var var_278:IWindowContainer;
      
      private var var_488:IWindowContainer;
      
      private var var_728:IWindowContainer;
      
      private var var_2526:IWindowContainer;
      
      private var var_2524:IWindowContainer;
      
      private var var_1368:IWindowContainer;
      
      private var var_894:ITextWindow;
      
      private var var_1114:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_906:ITextWindow;
      
      private var var_1369:ITextWindow;
      
      private var var_1115:ITextWindow;
      
      private var var_902:ITextWindow;
      
      private var var_1801:ITextWindow;
      
      private var var_246:IWindowContainer;
      
      private var var_905:IWindowContainer;
      
      private var var_1802:IWindowContainer;
      
      private var var_2527:ITextWindow;
      
      private var var_729:ITextWindow;
      
      private var _rateButton:IContainerButtonWindow;
      
      private var var_1373:IContainerButtonWindow;
      
      private var var_1372:IContainerButtonWindow;
      
      private var var_1370:IContainerButtonWindow;
      
      private var var_1371:IContainerButtonWindow;
      
      private var var_1375:IContainerButtonWindow;
      
      private var var_1800:IButtonWindow;
      
      private var var_1799:IButtonWindow;
      
      private var var_1798:IButtonWindow;
      
      private var var_904:IWindowContainer;
      
      private var var_1374:ITextWindow;
      
      private var var_1117:ITextFieldWindow;
      
      private var var_63:IWindowContainer;
      
      private var var_1116:IButtonWindow;
      
      private var var_903:IButtonWindow;
      
      private var var_2523:String;
      
      private var var_2525:String;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_337 = new RoomEventViewCtrl(this._navigator);
         this.var_168 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_247 = new RoomThumbnailCtrl(this._navigator);
         this.var_1037 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_168);
         this.var_245 = new Timer(6000,1);
         this.var_245.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.removeEventListener(HabboToolbarSetIconEvent.const_98,this.onToolbarIconState);
         }
         if(this.var_245)
         {
            this.var_245.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_245.reset();
            this.var_245 = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_245.reset();
         this.var_337.active = true;
         this.var_168.active = false;
         this.var_247.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_245.reset();
         this.var_168.load(param1);
         this.var_168.active = true;
         this.var_337.active = false;
         this.var_247.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_168.active = true;
         this.var_337.active = false;
         this.var_247.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_245.reset();
         this.var_168.active = false;
         this.var_337.active = false;
         this.var_247.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_1047,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_245.reset();
         this.var_337.active = false;
         this.var_168.active = false;
         this.var_247.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(this._navigator.data.enteredGuestRoom.flatId);
         }
         this.refresh();
         this._window.visible = true;
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_47,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         this._window.parent.activate();
         this._window.activate();
         if(!param1)
         {
            this.var_245.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_245.reset();
         this.var_337.active = false;
         this.var_168.active = false;
         this.var_247.active = false;
         this.refresh();
         if(!this._window.visible)
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_47,HabboToolbarIconEnum.ROOMINFO,this._window,false));
            this._window.parent.activate();
         }
         else
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_469,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info","buttons_container"],0,2);
         this._window.height = Util.getLowestPoint(this._window);
         this._window.y = this._window.desktop.height - this._window.height - 5;
         Logger.log("MAIN: " + this.var_278.rectangle + ", " + this.var_246.rectangle + ", " + this._window.rectangle);
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_278);
         this.var_278.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_168.refresh(this.var_278);
         this.var_247.refresh(this.var_278);
         Util.moveChildrenToColumn(this.var_278,["room_details","room_buttons"],0,2);
         this.var_278.height = Util.getLowestPoint(this.var_278);
         this.var_278.visible = true;
         Logger.log("XORP: " + this.var_488.visible + ", " + this.var_1368.visible + ", " + this.var_728.visible + ", " + this.var_728.rectangle + ", " + this.var_278.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_246);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_337.refresh(this.var_246);
         if(Util.hasVisibleChildren(this.var_246) && !(this.var_168.active || this.var_247.active))
         {
            Util.moveChildrenToColumn(this.var_246,["event_details","event_buttons"],0,2);
            this.var_246.height = Util.getLowestPoint(this.var_246);
            this.var_246.visible = true;
         }
         else
         {
            this.var_246.visible = false;
         }
         Logger.log("EVENT: " + this.var_246.visible + ", " + this.var_246.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_168.active && !this.var_247.active && !this.var_337.active)
         {
            this.var_904.visible = true;
            this.var_1117.text = this.getEmbedData();
         }
         else
         {
            this.var_904.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this.var_63)
         {
            return;
         }
         if(this.var_168.active)
         {
            this.var_63.visible = false;
            return;
         }
         this.var_63.visible = true;
         if(this.var_1116)
         {
            if(this.var_2523 == "exit_homeroom")
            {
               this.var_1116.caption = "${navigator.homeroom}";
            }
            else
            {
               this.var_1116.caption = "${navigator.hotelview}";
            }
         }
         if(this.var_903)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_903.visible = _loc1_;
            if(this.var_2525 == "0")
            {
               this.var_903.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_903.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_168.active || this.var_247.active)
         {
            return;
         }
         this.var_894.text = param1.roomName;
         this.var_894.height = this.var_894.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_906.text = param1.description;
         this.var_1037.refreshTags(this.var_488,param1.tags);
         this.var_906.visible = false;
         if(param1.description != "")
         {
            this.var_906.height = this.var_906.textHeight + 5;
            this.var_906.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1373,"facebook_logo_small",_loc3_,null,0);
         this.var_1373.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this._rateButton,"thumb_up",_loc4_,null,0);
         this._rateButton.visible = _loc4_;
         this.var_902.visible = !_loc4_;
         this.var_1801.visible = !_loc4_;
         this.var_1801.text = "" + this._navigator.data.currentRoomRating;
         this._navigator.refreshButton(this.var_488,"home",param2,null,0);
         this._navigator.refreshButton(this.var_488,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_488,["room_name","owner_name_cont","tags","room_desc","rating_cont"],this.var_894.y,0);
         this.var_488.visible = true;
         this.var_488.height = Util.getLowestPoint(this.var_488);
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_168.active || this.var_247.active)
         {
            return;
         }
         this.var_1114.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1114.height = this.var_1114.textHeight + 5;
         this.var_1369.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1369.height = this.var_1369.textHeight + 5;
         Util.moveChildrenToColumn(this.var_728,["public_space_name","public_space_desc"],this.var_1114.y,0);
         this.var_728.visible = true;
         this.var_728.height = Math.max(86,Util.getLowestPoint(this.var_728));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_337.active)
         {
            return;
         }
         this.var_2527.text = param1.eventName;
         this.var_729.text = param1.eventDescription;
         this.var_1037.refreshTags(this.var_905,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_729.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_729.height = this.var_729.textHeight + 5;
            this.var_729.y = Util.getLowestPoint(this.var_905) + 2;
            this.var_729.visible = true;
         }
         this.var_905.visible = true;
         this.var_905.height = Util.getLowestPoint(this.var_905);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_168.active || this.var_247.active)
         {
            return;
         }
         this.var_1800.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1372.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this.var_1370.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1371.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1375.visible = this._navigator.data.canEditRoomSettings && param1;
         this.var_1368.visible = Util.hasVisibleChildren(this.var_1368);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_337.active)
         {
            return;
         }
         this.var_1799.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1798.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1802.visible = Util.hasVisibleChildren(this.var_1802);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details"));
         this._window.setParamFlag(HabboWindowParam.const_58,false);
         this._window.setParamFlag(HabboWindowParam.const_1448,true);
         this._window.visible = false;
         this.var_278 = IWindowContainer(this.find("room_info"));
         this.var_488 = IWindowContainer(this.find("room_details"));
         this.var_728 = IWindowContainer(this.find("public_space_details"));
         this.var_2526 = IWindowContainer(this.find("owner_name_cont"));
         this.var_2524 = IWindowContainer(this.find("rating_cont"));
         this.var_1368 = IWindowContainer(this.find("room_buttons"));
         this.var_894 = ITextWindow(this.find("room_name"));
         this.var_1114 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_906 = ITextWindow(this.find("room_desc"));
         this.var_1369 = ITextWindow(this.find("public_space_desc"));
         this.var_1115 = ITextWindow(this.find("owner_caption"));
         this.var_902 = ITextWindow(this.find("rating_caption"));
         this.var_1801 = ITextWindow(this.find("rating_txt"));
         this.var_246 = IWindowContainer(this.find("event_info"));
         this.var_905 = IWindowContainer(this.find("event_details"));
         this.var_1802 = IWindowContainer(this.find("event_buttons"));
         this.var_2527 = ITextWindow(this.find("event_name"));
         this.var_729 = ITextWindow(this.find("event_desc"));
         this.var_1373 = IContainerButtonWindow(this.find("facebook_like_button"));
         this._rateButton = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_1372 = IContainerButtonWindow(this.find("add_favourite_button"));
         this.var_1370 = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1371 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1375 = IContainerButtonWindow(this.find("unmake_home_button"));
         this.var_1800 = IButtonWindow(this.find("room_settings_button"));
         this.var_1799 = IButtonWindow(this.find("create_event_button"));
         this.var_1798 = IButtonWindow(this.find("edit_event_button"));
         this.var_904 = IWindowContainer(this.find("embed_info"));
         this.var_1374 = ITextWindow(this.find("embed_info_txt"));
         this.var_1117 = ITextFieldWindow(this.find("embed_src_txt"));
         this.var_63 = IWindowContainer(this.find("buttons_container"));
         this.var_1116 = IButtonWindow(this.find("exit_room_button"));
         this.var_903 = IButtonWindow(this.find("zoom_button"));
         Util.setProcDirectly(this.var_1372,this.onAddFavouriteClick);
         Util.setProcDirectly(this.var_1370,this.onRemoveFavouriteClick);
         Util.setProcDirectly(this.var_1800,this.onRoomSettingsClick);
         Util.setProcDirectly(this.var_1371,this.onMakeHomeClick);
         Util.setProcDirectly(this.var_1375,this.onUnmakeHomeClick);
         Util.setProcDirectly(this.var_1799,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1798,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1117,this.onEmbedSrcClick);
         Util.setProcDirectly(this._rateButton,this.onThumbUp);
         Util.setProcDirectly(this.var_1373,this.onFacebookLike);
         Util.setProcDirectly(this.var_903,this.onZoomClick);
         Util.setProcDirectly(this.var_1116,this.onExitRoomClick);
         this._navigator.refreshButton(this.var_1372,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1370,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1371,"home",true,null,0);
         this._navigator.refreshButton(this.var_1375,"home",true,null,0);
         this._window.findChildByName("close").procedure = this.onCloseButtonClick;
         Util.setProcDirectly(this.var_278,this.onHover);
         Util.setProcDirectly(this.var_246,this.onHover);
         this.var_1115.width = this.var_1115.textWidth;
         Util.moveChildrenToRow(this.var_2526,["owner_caption","owner_name"],this.var_1115.x,this.var_1115.y,3);
         this.var_902.width = this.var_902.textWidth;
         Util.moveChildrenToRow(this.var_2524,["rating_caption","rating_txt"],this.var_902.x,this.var_902.y,3);
         this.var_1374.height = this.var_1374.textHeight + 5;
         Util.moveChildrenToColumn(this.var_904,["embed_info_txt","embed_src_txt"],this.var_1374.y,2);
         this.var_904.height = Util.getLowestPoint(this.var_904) + 5;
         this.var_2638 = this._window.y + this._window.height;
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!this._navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function onFacebookLike(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.var_1117.setSelection(0,this.var_1117.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_39);
         _loc3_.iconId = HabboToolbarIconEnum.ZOOM;
         _loc3_.iconName = "ZOOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onExitRoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_39);
         _loc3_.iconId = HabboToolbarIconEnum.EXITROOM;
         _loc3_.iconName = "EXITROOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onToolbarIconState(param1:HabboToolbarSetIconEvent) : void
      {
         if(param1.type != HabboToolbarSetIconEvent.const_98)
         {
            return;
         }
         switch(param1.iconId)
         {
            case HabboToolbarIconEnum.ZOOM:
               this.var_2525 = param1.iconState;
               this.refreshButtons();
               break;
            case HabboToolbarIconEnum.EXITROOM:
               this.var_2523 = param1.iconState;
               this.refreshButtons();
         }
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         this.var_245.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_469,HabboToolbarIconEnum.ROOMINFO,this._window,false));
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
      
      public function registerToolbarEvents() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.addEventListener(HabboToolbarSetIconEvent.const_98,this.onToolbarIconState);
         }
      }
   }
}
