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
   
   public dynamic class head_581 extends MovieClip
   {
       
      
      public var blush:MovieClip;
      
      public function head_581()
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
      
      function frame501() : *
      {
         if(parent.parent.headState == "looking")
         {
            gotoAndPlay("looking-loop");
         }
      }
      
      function frame504() : *
      {
         gotoAndPlay("aroused");
      }
   }
}
