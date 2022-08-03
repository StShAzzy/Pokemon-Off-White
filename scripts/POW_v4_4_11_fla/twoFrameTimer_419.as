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
   
   public dynamic class twoFrameTimer_419 extends MovieClip
   {
       
      
      public function twoFrameTimer_419()
      {
         super();
      }
      
      function frame1() : *
      {
         stop();
      }
      
      function frame2() : *
      {
         addEventListener(Event.ENTER_FRAME,root.starterLayout.scrollNow);
      }
   }
}
