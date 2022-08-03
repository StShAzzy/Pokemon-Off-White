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
   
   public dynamic class pokemon_name_298 extends MovieClip
   {
       
      
      public var blur:MovieClip;
      
      public var pokemonName:TextField;
      
      public var __setTabDict:Dictionary;
      
      public var __lastFrameTab:int = -1;
      
      public function pokemon_name_298()
      {
         this.__setTabDict = new Dictionary(true);
         super();
         addEventListener(Event.FRAME_CONSTRUCTED,this.__setTab_handler,false,0,true);
      }
      
      function __setTab_blur_pokemon_name_Layer2_0(param1:int) : *
      {
         if(this.blur != null && param1 >= 1 && param1 <= 8 && (this.__setTabDict[this.blur] == undefined || !(int(this.__setTabDict[this.blur]) >= 1 && int(this.__setTabDict[this.blur]) <= 8)))
         {
            this.__setTabDict[this.blur] = param1;
            this.blur.tabIndex = 1;
         }
      }
      
      function __setTab_handler(param1:Object) : *
      {
         var _loc2_:int = currentFrame;
         if(this.__lastFrameTab == _loc2_)
         {
            return;
         }
         this.__lastFrameTab = _loc2_;
         this.__setTab_blur_pokemon_name_Layer2_0(_loc2_);
      }
      
      function frame15() : *
      {
         stop();
      }
   }
}
