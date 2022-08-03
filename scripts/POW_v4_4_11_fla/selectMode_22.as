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
   
   public dynamic class selectMode_22 extends MovieClip
   {
       
      
      public var selectBreeder:MovieClip;
      
      public var selectModeBG:MovieClip;
      
      public var selectScenes:MovieClip;
      
      public var selectShowcase:MovieClip;
      
      public var refSlice:DisplayObject;
      
      public function selectMode_22()
      {
         super();
      }
      
      public function openSelectMode(param1:MouseEvent) : void
      {
         root.playSoundEffect(root.sfxUIArray["button1"]);
         root.selectMode.visible = true;
         root.playGame.visible = false;
         play();
      }
      
      public function exitSelectMode(param1:MouseEvent) : void
      {
         if(root.currentFrame == 1)
         {
            root.playGame.visible = true;
         }
         gotoAndPlay("exit");
      }
      
      public function startShowcaseMode(param1:MouseEvent) : void
      {
         if(root.selectedMode != "showcase")
         {
            root.selectedMode = "showcase";
            this.switchModes();
            if(root.currentFrame == 1)
            {
               root.gotoAndStop(2);
            }
            else if(root.currentFrame == 2)
            {
               root.starterLayout.gotoAndPlay(2);
               root.starterLayout.pokemonScroller.visible = false;
            }
            else if(root.currentFrame == 3)
            {
            }
         }
      }
      
      public function startSceneMode(param1:MouseEvent) : void
      {
         if(root.selectedMode != "scene")
         {
            root.selectedMode = "scene";
            this.switchModes();
            if(root.currentFrame == 1)
            {
               root.gotoAndStop(2);
            }
            else if(root.currentFrame == 2)
            {
               root.starterLayout.gotoAndStop("scene");
               root.starterLayout.pokemonScroller.visible = false;
            }
         }
      }
      
      public function startBreederMode(param1:MouseEvent) : void
      {
         if(root.selectedMode != "breeder")
         {
            root.selectedMode = "breeder";
            this.switchModes();
            if(root.currentFrame == 1)
            {
               root.gotoAndStop(2);
            }
            else if(root.currentFrame == 2)
            {
               root.starterLayout.play();
            }
         }
      }
      
      public function switchModes() : void
      {
         root.toggleSelect.visible = true;
         root.selectMode.visible = false;
         root.playSoundEffect(root.sfxUIArray["select"]);
         if(root.currentFrame == 2 && root.selectedMode != "scene")
         {
            root.stopAll(root.starterLayout.sceneContainer);
         }
      }
      
      public function renderGlow(param1:MouseEvent) : void
      {
         if(param1.target.name == "selectShowcase")
         {
            root.selectMode.selectShowcase.glowSlice.visible = true;
         }
      }
      
      public function derenderGlow(param1:MouseEvent) : void
      {
         if(param1.target.name == "selectShowcase")
         {
            root.selectMode.selectShowcase.glowSlice.visible = false;
         }
      }
      
      function frame1() : *
      {
         this.selectShowcase.buttonMode = true;
         this.selectScenes.buttonMode = true;
         this.selectBreeder.buttonMode = true;
         this.selectShowcase.addEventListener(MouseEvent.MOUSE_DOWN,this.startShowcaseMode);
         this.selectScenes.addEventListener(MouseEvent.MOUSE_DOWN,this.startSceneMode);
         this.selectBreeder.addEventListener(MouseEvent.MOUSE_DOWN,this.startBreederMode);
         this.selectModeBG.addEventListener(MouseEvent.MOUSE_DOWN,this.exitSelectMode);
      }
      
      function frame11() : *
      {
         stop();
      }
      
      function frame28() : *
      {
         stop();
      }
      
      function frame35() : *
      {
         root.selectMode.visible = false;
         root.toggleSelect.visible = true;
         stop();
      }
   }
}
