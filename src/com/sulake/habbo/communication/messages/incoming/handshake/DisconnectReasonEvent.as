package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1712:int = 0;
      
      public static const const_1389:int = 1;
      
      public static const const_1365:int = 2;
      
      public static const const_1783:int = 3;
      
      public static const const_1665:int = 4;
      
      public static const const_1736:int = 5;
      
      public static const const_1335:int = 10;
      
      public static const const_1723:int = 11;
      
      public static const const_1773:int = 12;
      
      public static const const_1758:int = 13;
      
      public static const const_1697:int = 16;
      
      public static const const_1729:int = 17;
      
      public static const const_1653:int = 18;
      
      public static const const_1787:int = 19;
      
      public static const const_1623:int = 20;
      
      public static const const_1775:int = 22;
      
      public static const const_1704:int = 23;
      
      public static const const_1711:int = 24;
      
      public static const const_1782:int = 25;
      
      public static const const_1784:int = 26;
      
      public static const const_1757:int = 27;
      
      public static const const_1600:int = 28;
      
      public static const const_1573:int = 29;
      
      public static const const_1744:int = 100;
      
      public static const const_1579:int = 101;
      
      public static const const_1706:int = 102;
      
      public static const const_1575:int = 103;
      
      public static const const_1658:int = 104;
      
      public static const const_1618:int = 105;
      
      public static const const_1617:int = 106;
      
      public static const const_1625:int = 107;
      
      public static const const_1663:int = 108;
      
      public static const const_1740:int = 109;
      
      public static const const_1605:int = 110;
      
      public static const const_1753:int = 111;
      
      public static const const_1564:int = 112;
      
      public static const const_1627:int = 113;
      
      public static const const_1741:int = 114;
      
      public static const const_1731:int = 115;
      
      public static const const_1594:int = 116;
      
      public static const const_1572:int = 117;
      
      public static const const_1699:int = 118;
      
      public static const const_1691:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1389:
            case const_1335:
               return "banned";
            case const_1365:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
