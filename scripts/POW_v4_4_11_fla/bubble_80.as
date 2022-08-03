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
   
   public dynamic class bubble_80 extends MovieClip
   {
       
      
      public var thoughtText:TextField;
      
      public function bubble_80()
      {
         super();
      }
      
      function frame1() : *
      {
         mouseEnabled = false;
         mouseChildren = false;
         stop();
      }
      
      function frame2() : *
      {
         if(root.debug == true)
         {
            trace(root.diagBuffer);
         }
      }
      
      function frame34() : *
      {
         this.thoughtText.text = root.diagBuffer;
      }
      
      function frame164() : *
      {
         if(this["root"])
         {
            root.dialogReady = true;
         }
         if(this["root"])
         {
            root.diagBuffer = null;
         }
      }
   }
}
