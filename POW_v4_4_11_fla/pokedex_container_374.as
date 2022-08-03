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
   
   public dynamic class pokedex_container_374 extends MovieClip
   {
       
      
      public var layout:MovieClip;
      
      public function pokedex_container_374()
      {
         super();
      }
      
      public function animatePokemonIcon(param1:MouseEvent) : void
      {
         this.layout.screen.list.list.getChildByName(param1.target.name).play();
      }
      
      public function deanimatePokemonIcon(param1:MouseEvent) : void
      {
         this.layout.screen.list.list.getChildByName(param1.target.name).stop();
      }
      
      public function preSelectPokemon(param1:MouseEvent) : void
      {
         var event:MouseEvent = param1;
         root.playSoundEffect(root.sfxUIArray["select"]);
         tempPokemonSelected = root.fetchPokemonNumber(event.target.name);
         i = 0;
         while(i < this.layout.screen.list.pokemonInfo.numChildren)
         {
            if(this.layout.screen.list.pokemonInfo.getChildAt(i) is SimpleButton)
            {
               this.layout.screen.list.pokemonInfo.getChildAt(i).removeEventListener(MouseEvent.MOUSE_DOWN,root.selectPokemon);
               this.layout.screen.list.pokemonInfo.getChildAt(i).removeEventListener(MouseEvent.MOUSE_DOWN,root.playPokemonCry);
            }
            ++i;
         }
         this.layout.screen.list.pokemonInfo.gotoAndStop(tempPokemonSelected + 1);
         i = 0;
         while(i < this.layout.screen.list.pokemonInfo.numChildren)
         {
            if(this.layout.screen.list.pokemonInfo.getChildAt(i) is SimpleButton)
            {
               this.layout.screen.list.pokemonInfo.getChildAt(i).addEventListener(MouseEvent.MOUSE_DOWN,root.selectPokemon);
               this.layout.screen.list.pokemonInfo.getChildAt(i).addEventListener(MouseEvent.MOUSE_DOWN,root.playPokemonCry);
            }
            ++i;
         }
         this.layout.screen.list.pokemonInfo.pokemonID.text = root.pokemonXML.actor.(@pokemonNum == tempPokemonSelected).basic.pokemonID;
         this.layout.screen.list.pokemonInfo.description.text = root.pokemonXML.actor.(@pokemonNum == tempPokemonSelected).pokedex.female.description;
         var _loc4_:int = 0;
         var _loc5_:* = §§checkfilter(root.pokemonXML.actor);
         var _loc3_:* = new XMLList("");
         §§push(root.pokemonXML.actor.(@pokemonNum == tempPokemonSelected).pokedex.female.vagina.min + " - ");
         root.pokemonXML.actor.(@pokemonNum == tempPokemonSelected);
         §§pop().text = this.layout.screen.list.pokemonInfo.vagina + _loc3_.pokedex.female.vagina.max + ", " + root.pokemonXML.actor.(@pokemonNum == tempPokemonSelected).pokedex.female.vagina.temperature + "º C";
         this.layout.screen.list.pokemonInfo.heat.text = root.pokemonXML.actor.(@pokemonNum == tempPokemonSelected).pokedex.female.heatCycle;
      }
      
      public function togglePokedex(param1:MouseEvent) : void
      {
         if(param1.target.name == "showPokedex" && currentFrame == 21)
         {
            gotoAndPlay("show");
         }
         else if(param1.target.name == "hidePokedex" && currentFrame == 41)
         {
            gotoAndPlay("hide");
         }
      }
      
      public function updatePokedexSemenScan(param1:*, param2:*) : void
      {
         this.layout.screen.gear.semenScan.text = param1 / 2 + " ml / " + param2 + " ml";
      }
      
      function frame1() : *
      {
         this.layout.toggleMusic.buttonMode = true;
         this.layout.toggleSound.buttonMode = true;
         this.layout.screen.gear.thoughtReader.buttonMode = true;
         this.layout.plate.buttonMode = true;
         this.layout.shine.mouseEnabled = false;
         this.layout.shine.mouseChildren = false;
         this.layout.showPokedex.addEventListener(MouseEvent.MOUSE_DOWN,this.togglePokedex);
         this.layout.hidePokedex.addEventListener(MouseEvent.MOUSE_DOWN,this.togglePokedex);
         this.layout.plate.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            layout.plate.gotoAndPlay("open");
         });
         i = 0;
         while(i < this.layout.screen.list.list.numChildren)
         {
            if(this.layout.screen.list.list.getChildAt(i) is MovieClip)
            {
               this.layout.screen.list.list.getChildAt(i).addEventListener(MouseEvent.MOUSE_DOWN,this.preSelectPokemon);
               this.layout.screen.list.list.getChildAt(i).addEventListener(MouseEvent.MOUSE_OVER,root.mouseOverButton);
               root.selectNum = root.fetchPokemonNumber(this.layout.screen.list.list.getChildAt(i).name);
               this.layout.screen.list.list.getChildAt(i).pokemonName.text = root.pokemonXML.actor.(@pokemonNum == root.selectNum).basic.name;
               this.layout.screen.list.list.getChildAt(i).pokemonName.mouseEnabled = false;
               this.layout.screen.list.list.getChildAt(i).buttonMode = true;
               this.layout.screen.list.list.getChildAt(i).stop();
               this.layout.screen.list.list.getChildAt(i).addEventListener(MouseEvent.MOUSE_OVER,this.animatePokemonIcon);
               this.layout.screen.list.list.getChildAt(i).addEventListener(MouseEvent.MOUSE_OUT,this.deanimatePokemonIcon);
            }
            ++i;
         }
         this.layout.toggleMusic.addEventListener(MouseEvent.MOUSE_DOWN,root.toggleMusicChannel);
         this.layout.toggleSound.addEventListener(MouseEvent.MOUSE_DOWN,root.toggleSoundChannel);
         this.layout.screen.list.tabPokemon.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            layout.screen.swapChildrenAt(2,1);
            root.playSoundEffect(root.sfxUIArray["choose"]);
         });
         this.layout.screen.gear.tabGear.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            layout.screen.swapChildrenAt(2,1);
            root.playSoundEffect(root.sfxUIArray["choose"]);
         });
         this.layout.screen.gear.thoughtReader.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            if(root.disableDialog == false)
            {
               layout.screen.gear.thoughtReader.gotoAndStop(2);
               root.disableDialog = true;
            }
            else
            {
               layout.screen.gear.thoughtReader.gotoAndStop(1);
               root.disableDialog = false;
            }
            root.playSoundEffect(root.sfxUIArray["choose"]);
         });
         this.layout.screen.gear.qualityControl.setLow.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            layout.screen.gear.qualityControl.gotoAndStop(1);
            stage.quality = StageQuality.LOW;
            root.playSoundEffect(root.sfxUIArray["choose"]);
         });
         this.layout.screen.gear.qualityControl.setMedium.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            layout.screen.gear.qualityControl.gotoAndStop(2);
            stage.quality = StageQuality.MEDIUM;
            root.playSoundEffect(root.sfxUIArray["choose"]);
         });
         this.layout.screen.gear.qualityControl.setHigh.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            layout.screen.gear.qualityControl.gotoAndStop(3);
            stage.quality = StageQuality.HIGH;
            root.playSoundEffect(root.sfxUIArray["choose"]);
         });
         this.layout.cheatControls.cheatPlay.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            root.playSoundEffect(root.sfxUIArray["button1"]);
            if(root.forceRepeat == true)
            {
               root.forceRepeat = false;
            }
            if(root.halted == true)
            {
               root.act.pokemonContainer.toggleAnimation();
            }
         });
         this.layout.cheatControls.cheatPause.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            root.playSoundEffect(root.sfxUIArray["button1"]);
            root.forceRepeat = true;
         });
         this.layout.cheatControls.cheatStop.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            root.playSoundEffect(root.sfxUIArray["button1"]);
            root.act.pokemonContainer.toggleAnimation();
         });
         this.layout.cheatControls.cheatNext.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            root.playSoundEffect(root.sfxUIArray["button1"]);
            root.forceAdvance = true;
         });
         this.layout.cheatControls.cheatFinish.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            root.playSoundEffect(root.sfxUIArray["button1"]);
            if(root.climaxPoint - root.climax > 6)
            {
               root.climax = root.climaxPoint - 6;
            }
         });
         if(root.tempPokedexMusicState == false)
         {
            this.layout.toggleMusic.gotoAndPlay("off");
         }
         this.layout.screen.gear.thoughtReader.gotoAndStop(1);
         root.pokedex.layout.screen.gear.qualityControl.gotoAndStop(3);
         root.pokedex.layout.screen.list.pokemonInfo.gotoAndStop(1);
         root.pokedex.gotoAndStop("shown");
         stop();
      }
      
      function frame20() : *
      {
         this.layout.plate.gotoAndStop(1);
         this.layout.screen.visible = false;
      }
      
      function frame21() : *
      {
         this.layout.screen.visible = true;
         this.layout.screen.loading.gotoAndStop(1);
         stop();
      }
      
      function frame41() : *
      {
         this.layout.screen.loading.gotoAndPlay(2);
         stop();
      }
   }
}
