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
   
   public dynamic class blackout_anim_463 extends MovieClip
   {
       
      
      public function blackout_anim_463()
      {
         super();
      }
      
      function frame1() : *
      {
         stop();
      }
      
      function frame2() : *
      {
         root.blackingOut = true;
      }
      
      function frame50() : *
      {
         stop();
      }
      
      function frame51() : *
      {
         root.blackingOut = false;
      }
   }
}
