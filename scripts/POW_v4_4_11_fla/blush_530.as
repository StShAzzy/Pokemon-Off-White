package POW_v4_4_11_fla
{
   import flash.accessibility.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.ime.*;
   import flash.ui.*;
   import flash.utils.*;
   
   public dynamic class blush_530 extends MovieClip
   {
       
      
      public var blushContainer:MovieClip;
      
      public function blush_530()
      {
         super();
      }
      
      function frame1() : *
      {
         this.blushContainer.blush.gotoAndStop(1);
         stop();
      }
      
      function frame2() : *
      {
         root.blushing = true;
         this.blushContainer.blush.gotoAndPlay("blush");
      }
      
      function frame331() : *
      {
         root.readyToDeblush = true;
         this.blushContainer.blush.stop();
         stop();
      }
      
      function frame332() : *
      {
         this.blushContainer.blush.gotoAndPlay("deblush");
      }
      
      function frame417() : *
      {
         root.readyToDeblush = false;
         root.blushing = false;
      }
   }
}
