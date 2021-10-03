package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitData implements IDisposable
   {
       
      
      private var var_1261:Array;
      
      private var var_1260:Array;
      
      private var _issues:Array;
      
      private var var_1009:Array;
      
      private var var_2171:Boolean;
      
      private var var_2176:Boolean;
      
      private var var_2173:Boolean;
      
      private var var_2177:Boolean;
      
      private var var_2174:Boolean;
      
      private var var_2172:Boolean;
      
      private var var_2175:Boolean;
      
      private var _disposed:Boolean;
      
      public function ModeratorInitData(param1:IMessageDataWrapper)
      {
         super();
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         this._issues = [];
         this.var_1261 = [];
         this.var_1260 = [];
         this.var_1009 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(_loc2_.parse(param1))
            {
               this._issues.push(_loc2_.issueData);
            }
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1261.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1009.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         this.var_2171 = param1.readBoolean();
         this.var_2176 = param1.readBoolean();
         this.var_2173 = param1.readBoolean();
         this.var_2177 = param1.readBoolean();
         this.var_2174 = param1.readBoolean();
         this.var_2172 = param1.readBoolean();
         this.var_2175 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1260.push(param1.readString());
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1261 = null;
         this.var_1260 = null;
         this._issues = null;
         for each(_loc1_ in this.var_1009)
         {
            _loc1_.dispose();
         }
         this.var_1009 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get messageTemplates() : Array
      {
         return this.var_1261;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return this.var_1260;
      }
      
      public function get issues() : Array
      {
         return this._issues;
      }
      
      public function get offenceCategories() : Array
      {
         return this.var_1009;
      }
      
      public function get cfhPermission() : Boolean
      {
         return this.var_2171;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return this.var_2176;
      }
      
      public function get alertPermission() : Boolean
      {
         return this.var_2173;
      }
      
      public function get kickPermission() : Boolean
      {
         return this.var_2177;
      }
      
      public function get banPermission() : Boolean
      {
         return this.var_2174;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return this.var_2172;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return this.var_2175;
      }
   }
}
