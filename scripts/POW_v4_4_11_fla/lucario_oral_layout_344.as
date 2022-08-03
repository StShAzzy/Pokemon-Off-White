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
   
   public dynamic class lucario_oral_layout_344 extends MovieClip
   {
       
      
      public var bg:MovieClip;
      
      public var bubble:MovieClip;
      
      public var head:MovieClip;
      
      public var tail:MovieClip;
      
      public function lucario_oral_layout_344()
      {
         super();
      }
      
      function frame1() : *
      {
         parent.advanceScene = false;
      }
      
      function frame112() : *
      {
         root.thinkThought("lick",15,null,false,"scene");
         if(parent.advanceScene == false)
         {
            gotoAndPlay("lick");
         }
      }
      
      function frame113() : *
      {
         parent.advanceScene = false;
      }
      
      function frame292() : *
      {
         root.thinkThought("suck",20,null,false,"scene");
         if(parent.advanceScene == false)
         {
            gotoAndPlay("suck");
         }
      }
      
      function frame293() : *
      {
         parent.advanceScene = false;
      }
      
      function frame355() : *
      {
         root.thinkThought("climax",100,null,false,"scene");
      }
      
      function frame610() : *
      {
         root.thinkThought("again",50,null,false,"scene");
      }
   }
}
