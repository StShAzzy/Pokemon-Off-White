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
   
   public dynamic class blush_container_582 extends MovieClip
   {
       
      
      public var blush:MovieClip;
      
      public function blush_container_582()
      {
         super();
      }
      
      function frame1() : *
      {
         stop();
      }
      
      function frame2() : *
      {
         root.blushing = true;
      }
      
      function frame100() : *
      {
         root.readyToDeblush = true;
         stop();
      }
      
      function frame101() : *
      {
         root.readyToDeblush = false;
      }
      
      function frame200() : *
      {
         root.blushing = false;
      }
   }
}
