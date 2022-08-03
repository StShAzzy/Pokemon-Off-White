package POW_v4_4_11_fla
{
   import fl.motion.*;
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
   
   public dynamic class background_layout_423 extends MovieClip
   {
       
      
      public var bg:MovieClip;
      
      public var fire:MovieClip;
      
      public var fxTimer:lightingTimer;
      
      public var sheets:MovieClip;
      
      public var toggleFireplace:SimpleButton;
      
      public var bevel;
      
      public var setBrightness;
      
      public function background_layout_423()
      {
         super();
      }
      
      function frame1() : *
      {
         this.bevel = new BevelFilter();
         this.setBrightness = new Color();
         this.fxTimer.addEventListener(Event.COMPLETE,function():void
         {
            bevel.angle = 0;
            bevel.shadowAlpha = 0;
            bevel.blurX = 16;
            bevel.blurY = 16;
            i = root.pickRandom(3) + 2;
            bevel.distance = i;
            if(i < 3)
            {
               bevel.highlightColor = 16769452;
            }
            else
            {
               bevel.highlightColor = 16767419;
            }
            bevel.strength = 3;
            parent.pokemonContainer.pokemon.filters = [bevel];
         });
         this.fxTimer.addFrameScript(root.act.bg.fxTimer.totalFrames - 1,function():void
         {
            fxTimer.dispatchEvent(new Event(Event.COMPLETE));
         });
         this.toggleFireplace.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            setTransform = new ColorTransform();
            if(root.fireLit == true)
            {
               root.fireLit = false;
               fxTimer.stop();
               fire.visible = false;
               parent.pokemonContainer.pokemon.filters = null;
               setBrightness.brightness = 0;
               parent.pokemonContainer.transform.colorTransform = setBrightness;
               sheets.transform.colorTransform = setBrightness;
               bg.transform.colorTransform = setTransform;
            }
            else
            {
               root.fireLit = true;
               fxTimer.play();
               fire.visible = true;
               setBrightness.brightness = -0.25;
               parent.pokemonContainer.transform.colorTransform = setBrightness;
               root.act.bg.sheets.transform.colorTransform = setBrightness;
               setTransform.redMultiplier = 0.2;
               setTransform.greenMultiplier = 0.2;
               setTransform.blueMultiplier = 0.2;
               setTransform.redOffset = 40;
               setTransform.greenOffset = 25;
               bg.transform.colorTransform = setTransform;
            }
         });
      }
   }
}
