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
   
   public dynamic class head_609 extends MovieClip
   {
       
      
      public var blushLeft:MovieClip;
      
      public var blushRight:MovieClip;
      
      public function head_609()
      {
         super();
      }
      
      function frame200() : *
      {
         gotoAndPlay(parent.parent.headState);
      }
      
      function frame397() : *
      {
         gotoAndPlay(parent.parent.headState);
      }
      
      function frame610() : *
      {
         if(parent.parent.headState == "aroused")
         {
            gotoAndPlay("aroused-loop");
         }
      }
      
      function frame613() : *
      {
         if(parent.parent.headState != "aroused")
         {
            gotoAndPlay(parent.parent.headState);
         }
      }
   }
}
