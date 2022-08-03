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
   
   public dynamic class starter_showcase_layout_48 extends MovieClip
   {
       
      
      public var bubbleLayout:MovieClip;
      
      public var pokemonName:MovieClip;
      
      public var pokemonScroller:MovieClip;
      
      public var sceneBar:MovieClip;
      
      public var sceneContainer:MovieClip;
      
      public var sceneLighting:MovieClip;
      
      public var scrollLeft:SimpleButton;
      
      public var scrollRight:SimpleButton;
      
      public var showcaseBG:MovieClip;
      
      public var showcaseBar:MovieClip;
      
      public var showcaseContainer:MovieClip;
      
      public var instancePrefix:String;
      
      public var currentScrollPosition:int;
      
      public var lastScrollPosition:int;
      
      public var scrollDirection:String;
      
      public var scrolling:Boolean;
      
      public var scrollDistance:int;
      
      public var distanceToScroll:int;
      
      public var distanceToEase:int;
      
      public var scrollSpeed;
      
      public var scrollSpeedEasing;
      
      public var pokemonScrollerDefaultX:int;
      
      public var pokemonScrollerDefaultY:int;
      
      public var pokemonReferenceVar:DisplayObject;
      
      public var showcaseModeActive:Boolean;
      
      public var instanceNumber:int;
      
      public var activePokemonInstance:int;
      
      public var showcasePaused:Boolean;
      
      public var previousPokeDiag:String;
      
      public var sceneModeActive:Boolean;
      
      public var numberOfPokemonAvailable:int;
      
      public var numberOfPokemonAvailableOmit:int;
      
      public function starter_showcase_layout_48()
      {
         super();
      }
      
      public function scrollStart(param1:*) : void
      {
         if(param1.target.name == "scrollLeft")
         {
            this.scrollDirection = "scrollLeft";
         }
         else
         {
            this.scrollDirection = "scrollRight";
         }
         if(param1.type == "mouseWheel")
         {
            if(param1.delta < 0)
            {
               this.scrollDirection = "scrollLeft";
            }
            else
            {
               this.scrollDirection = "scrollRight";
            }
         }
         if(param1.type == "keyDown")
         {
            if(param1.keyCode == 37)
            {
               this.scrollDirection = "scrollLeft";
            }
            else
            {
               this.scrollDirection = "scrollRight";
            }
         }
         if(this.scrolling == false && (this.scrollDirection == "scrollLeft" && this.currentScrollPosition > 1 || this.scrollDirection == "scrollRight" && this.currentScrollPosition < this.numberOfPokemonAvailable))
         {
            root.starterLayout.bubbleLayout.bubble.gotoAndStop(1);
            root.dialogReady = true;
            this.scrolling = true;
            this.lastScrollPosition = this.currentScrollPosition;
            if(this.scrollDirection == "scrollLeft")
            {
               this.currentScrollPosition = this.currentScrollPosition - 1;
            }
            else
            {
               this.currentScrollPosition += 1;
            }
            this.renderLineup(this.currentScrollPosition,"start");
            root.twoFrameTimer.gotoAndPlay(2);
         }
      }
      
      public function scrollNow(param1:Event) : void
      {
         if(this.scrollDirection == "scrollLeft")
         {
            if(this.scrollDistance < this.distanceToScroll)
            {
               this.pokemonScroller.x += this.scrollSpeed;
               this.scrollDistance += this.scrollSpeed;
            }
            else if(this.scrollDistance < this.distanceToScroll + this.distanceToEase)
            {
               this.pokemonScroller.x += this.scrollSpeedEasing;
               this.scrollDistance += this.scrollSpeedEasing;
            }
            else
            {
               this.scrollStop();
            }
         }
         else if(this.scrollDistance < this.distanceToScroll)
         {
            this.pokemonScroller.x -= this.scrollSpeed;
            this.scrollDistance += this.scrollSpeed;
         }
         else if(this.scrollDistance < this.distanceToScroll + this.distanceToEase)
         {
            this.pokemonScroller.x -= this.scrollSpeedEasing;
            this.scrollDistance += this.scrollSpeedEasing;
         }
         else
         {
            this.scrollStop();
         }
         this.adjustScale();
      }
      
      public function adjustScale() : *
      {
         newSelectNumber = this.instancePrefix + this.currentScrollPosition;
         oldSelectNumber = this.instancePrefix + this.lastScrollPosition;
         if(this.currentScrollPosition <= this.numberOfPokemonAvailable - this.numberOfPokemonAvailableOmit)
         {
            this.pokemonScroller.getChildByName(newSelectNumber).scaleX = this.pokemonScroller.getChildByName(newSelectNumber).scaleX + 0.015;
            this.pokemonScroller.getChildByName(newSelectNumber).scaleY = this.pokemonScroller.getChildByName(newSelectNumber).scaleY + 0.015;
            this.pokemonScroller.getChildByName(newSelectNumber).y = this.pokemonScroller.getChildByName(newSelectNumber).y + 1.5;
         }
         if(this.lastScrollPosition <= this.numberOfPokemonAvailable - this.numberOfPokemonAvailableOmit)
         {
            this.pokemonScroller.getChildByName(oldSelectNumber).scaleX = this.pokemonScroller.getChildByName(oldSelectNumber).scaleX - 0.015;
            this.pokemonScroller.getChildByName(oldSelectNumber).scaleY = this.pokemonScroller.getChildByName(oldSelectNumber).scaleY - 0.015;
            this.pokemonScroller.getChildByName(oldSelectNumber).y = this.pokemonScroller.getChildByName(oldSelectNumber).y - 1.5;
         }
      }
      
      public function scrollStop() : *
      {
         this.scrolling = false;
         root.twoFrameTimer.removeEventListener(Event.ENTER_FRAME,this.scrollNow);
         root.twoFrameTimer.gotoAndStop(1);
         this.scrollDistance = 0;
         this.pokemonName.gotoAndPlay("play");
         this.pokemonName.pokemonName.text = root.pokemonXML.actor.(@pokemonNum == currentScrollPosition).basic.name;
         this.pokemonName.pokemonName.textColor = root.pokemonXML.actor.(@pokemonNum == currentScrollPosition).basic.color;
         this.pokemonName.blur.pokemonName.text = root.pokemonXML.actor.(@pokemonNum == currentScrollPosition).basic.name;
         this.pokemonName.blur.pokemonName.textColor = root.pokemonXML.actor.(@pokemonNum == currentScrollPosition).basic.color;
         this.renderLineup(this.currentScrollPosition,"end");
      }
      
      public function renderLineup(param1:int, param2:String) : void
      {
         i = this.numberOfPokemonAvailable - this.numberOfPokemonAvailableOmit;
         if(param2 == "end")
         {
            while(i)
            {
               if(i > param1 + 1 || i < param1 - 1)
               {
                  this.pokemonScroller.getChildByName(this.instancePrefix + i).visible = false;
               }
               else
               {
                  this.pokemonScroller.getChildByName(this.instancePrefix + i).visible = true;
               }
               --i;
            }
         }
         else
         {
            while(i)
            {
               if(i > param1 + 2 || i < param1 - 2)
               {
                  this.pokemonScroller.getChildByName(this.instancePrefix + i).visible = false;
               }
               else
               {
                  this.pokemonScroller.getChildByName(this.instancePrefix + i).visible = true;
               }
               --i;
            }
         }
      }
      
      public function stopCustomLayers(param1:DisplayObject = null) : void
      {
         if(this.sceneModeActive == true)
         {
            if(this.sceneContainer["sceneLayout"])
            {
               if(this.sceneContainer.sceneLayout["head"])
               {
                  if(this.sceneContainer.sceneLayout.head["cum"])
                  {
                     this.sceneContainer.sceneLayout.head.cum.stop();
                  }
               }
               if(this.sceneContainer.sceneLayout["pussy"])
               {
                  if(this.sceneContainer.sceneLayout.pussy["cum"])
                  {
                     this.sceneContainer.sceneLayout.pussy.cum.stop();
                  }
               }
            }
         }
         else
         {
            if(param1["butt"])
            {
               param1.butt.stop();
               if(param1.butt["tally"])
               {
                  param1.butt.tally.stop();
               }
               if(param1.butt["genitals"])
               {
                  param1.butt.genitals.stop();
               }
               if(param1.butt["cumAnimated"])
               {
                  param1.butt.cumAnimated.stop();
               }
            }
            if(param1["body"])
            {
               param1.body.stop();
               if(param1.body["genitals"])
               {
                  param1.body.genitals.stop();
               }
               if(param1.body["breasts"])
               {
                  param1.body.breasts.stop();
               }
            }
            if(param1["legLeft"])
            {
               param1.legLeft.stop();
            }
            if(param1["legRight"])
            {
               param1.legRight.stop();
            }
            if(param1.parent["pokemonCry"])
            {
               param1.parent.pokemonCry.stop();
            }
         }
      }
      
      public function addPokemonNow(param1:*) : void
      {
         this.showcaseBar.showcaseSelectionTable.visible = false;
         this.showcaseBar.showcaseSelectionTable.gotoAndStop(1);
         var _loc2_:MovieClip = new showcasePokemon();
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.name = "newPokemonInstance" + this.instanceNumber;
         _loc2_.gotoAndStop(param1.target.name.substr(4,16));
         this.showcaseContainer.addChild(_loc2_);
         this.activePokemonInstance = this.showcaseContainer.getChildIndex(this.showcaseContainer.getChildByName("newPokemonInstance" + this.instanceNumber));
         this.pokemonReferenceVar = this.showcaseContainer.getChildAt(this.activePokemonInstance);
         ++this.instanceNumber;
         this.pokemonReferenceVar.addEventListener(MouseEvent.MOUSE_DOWN,this.setInstanceFocus);
         this.pokemonReferenceVar.buttonMode = true;
         this.stopCustomLayers(this.pokemonReferenceVar.showcasePokemonSelected);
         root.playSoundEffect(root.sfxUIArray["pokeball-out"],root.randomVolume(1,15));
         this.checkShowcaseThought(param1.target.name.substr(4,16),"summon");
      }
      
      public function enableGlow(param1:*) : void
      {
         if(root.starterLayout["sceneBar"])
         {
            this.sceneBar.sceneSelectionTable.getChildByName(param1.target.name).glowBox.visible = true;
         }
         else if(root.starterLayout["showcaseBar"])
         {
            this.showcaseBar.showcaseSelectionTable.getChildByName(param1.target.name).glowBox.visible = true;
         }
      }
      
      public function disableGlow(param1:*) : void
      {
         if(root.starterLayout["sceneBar"])
         {
            this.sceneBar.sceneSelectionTable.getChildByName(param1.target.name).glowBox.visible = false;
         }
         else if(root.starterLayout["showcaseBar"])
         {
            this.showcaseBar.showcaseSelectionTable.getChildByName(param1.target.name).glowBox.visible = false;
         }
      }
      
      public function setInstanceFocus(param1:MouseEvent) : void
      {
         if(param1.target.parent.parent.name == "showcaseContainer")
         {
            this.activePokemonInstance = root.starterLayout.showcaseContainer.getChildIndex(root.starterLayout.showcaseContainer.getChildByName(param1.target.parent.name));
         }
         else if(param1.target.parent.parent.parent.parent.name == "showcaseContainer")
         {
            this.activePokemonInstance = root.starterLayout.showcaseContainer.getChildIndex(root.starterLayout.showcaseContainer.getChildByName(param1.target.parent.parent.parent.name));
         }
         else
         {
            this.activePokemonInstance = root.starterLayout.showcaseContainer.getChildIndex(root.starterLayout.showcaseContainer.getChildByName(param1.target.parent.parent.name));
         }
         this.pokemonReferenceVar = this.showcaseContainer.getChildAt(this.activePokemonInstance);
         if(this.pokemonReferenceVar["pokemonCry"])
         {
            this.pokemonReferenceVar.pokemonCry.gotoAndStop(1);
            this.pokemonReferenceVar.pokemonCry.gotoAndStop(2);
         }
         this.checkShowcaseThought(this.pokemonReferenceVar.currentLabel,"poke");
      }
      
      public function pauseShowcase() : void
      {
         if(this.showcasePaused == true)
         {
            this.pokemonReferenceVar.showcasePokemonSelected.stop();
            if(this.pokemonReferenceVar.showcasePokemonSelected["tail"])
            {
               this.pokemonReferenceVar.showcasePokemonSelected.tail.stop();
            }
            if(this.pokemonReferenceVar.showcasePokemonSelected["butt"] && this.pokemonReferenceVar.showcasePokemonSelected.butt["tail"])
            {
               this.pokemonReferenceVar.showcasePokemonSelected.butt.tail.stop();
            }
            if(this.pokemonReferenceVar.showcasePokemonSelected["head"])
            {
               this.pokemonReferenceVar.showcasePokemonSelected.head.stop();
            }
            this.showcasePaused = false;
         }
         else
         {
            this.pokemonReferenceVar.showcasePokemonSelected.play();
            if(this.pokemonReferenceVar.showcasePokemonSelected["tail"])
            {
               this.pokemonReferenceVar.showcasePokemonSelected.tail.play();
            }
            if(this.pokemonReferenceVar.showcasePokemonSelected["butt"] && this.pokemonReferenceVar.showcasePokemonSelected.butt["tail"])
            {
               this.pokemonReferenceVar.showcasePokemonSelected.butt.tail.play();
            }
            if(this.pokemonReferenceVar.showcasePokemonSelected["head"])
            {
               this.pokemonReferenceVar.showcasePokemonSelected.head.play();
            }
            this.showcasePaused = true;
         }
      }
      
      public function moveShowcasePokemon(param1:*) : void
      {
         if(param1.type == "keyDown")
         {
            tmp = "Key";
            key = param1.keyCode;
         }
         else
         {
            tmp = param1.target.name.substr(10,7);
            key = null;
         }
         if(this.showcaseModeActive == false)
         {
            if(key == 37 || key == 39)
            {
               this.scrollStart(param1);
            }
         }
         else
         {
            if(tmp == "Up" || key == 38)
            {
               this.showcaseContainer.getChildAt(this.activePokemonInstance).y = this.showcaseContainer.getChildAt(this.activePokemonInstance).y - 10;
            }
            else if(tmp == "Down" || key == 40)
            {
               this.showcaseContainer.getChildAt(this.activePokemonInstance).y = this.showcaseContainer.getChildAt(this.activePokemonInstance).y + 10;
            }
            else if(tmp == "Left" || key == 37)
            {
               this.showcaseContainer.getChildAt(this.activePokemonInstance).x = this.showcaseContainer.getChildAt(this.activePokemonInstance).x - 10;
            }
            else if(tmp == "Right" || key == 39)
            {
               this.showcaseContainer.getChildAt(this.activePokemonInstance).x = this.showcaseContainer.getChildAt(this.activePokemonInstance).x + 10;
            }
            else if(tmp == "In" || key == 107)
            {
               if(this.showcaseContainer.getChildAt(this.activePokemonInstance).scaleX > 0)
               {
                  this.showcaseContainer.getChildAt(this.activePokemonInstance).scaleX = this.showcaseContainer.getChildAt(this.activePokemonInstance).scaleX + 0.05;
               }
               else
               {
                  this.showcaseContainer.getChildAt(this.activePokemonInstance).scaleX = this.showcaseContainer.getChildAt(this.activePokemonInstance).scaleX - 0.05;
               }
               this.showcaseContainer.getChildAt(this.activePokemonInstance).scaleY = this.showcaseContainer.getChildAt(this.activePokemonInstance).scaleY + 0.05;
            }
            else if(tmp == "Out" || key == 109)
            {
               if(this.showcaseContainer.getChildAt(this.activePokemonInstance).scaleY > 0.1)
               {
                  if(this.showcaseContainer.getChildAt(this.activePokemonInstance).scaleX > 0)
                  {
                     this.showcaseContainer.getChildAt(this.activePokemonInstance).scaleX = this.showcaseContainer.getChildAt(this.activePokemonInstance).scaleX - 0.05;
                  }
                  else
                  {
                     this.showcaseContainer.getChildAt(this.activePokemonInstance).scaleX = this.showcaseContainer.getChildAt(this.activePokemonInstance).scaleX + 0.05;
                  }
                  this.showcaseContainer.getChildAt(this.activePokemonInstance).scaleY = this.showcaseContainer.getChildAt(this.activePokemonInstance).scaleY - 0.05;
               }
            }
            else if(tmp == "Forward")
            {
               this.showcaseContainer.getChildAt(this.activePokemonInstance).parent.setChildIndex(this.showcaseContainer.getChildAt(this.activePokemonInstance),this.showcaseContainer.getChildAt(this.activePokemonInstance).parent.getChildIndex(this.showcaseContainer.getChildAt(this.activePokemonInstance)) + 1);
            }
            else if(key == 84 && this.showcaseContainer.getChildAt(this.activePokemonInstance).showcasePokemonSelected["butt"])
            {
               if(this.showcaseContainer.getChildAt(this.activePokemonInstance).showcasePokemonSelected.butt["tally"])
               {
                  this.showcaseContainer.getChildAt(this.activePokemonInstance).showcasePokemonSelected.butt.tally.gotoAndStop(this.showcaseContainer.getChildAt(this.activePokemonInstance).showcasePokemonSelected.butt.tally.currentFrame + 1);
                  root.playCumSound();
               }
            }
            else if(key == 80)
            {
               this.pauseShowcase();
            }
            root.playSoundEffect(root.sfxUIArray["button2"],root.randomVolume(1,10));
         }
      }
      
      public function checkShowcaseThought(param1:*, param2:String = "summon") : Boolean
      {
         var pokemonInstanceName:* = param1;
         var diagSubject:String = param2;
         if(this.showcaseContainer.getChildAt(this.activePokemonInstance)["bubble"])
         {
            i = root.dialogXML.showcase.actor.(@pokemonName == pokemonInstanceName).dialog.(@subject == diagSubject).length();
            if(i > 0)
            {
               root.diagBuffer = root.dialogXML.showcase.actor.(@pokemonName == pokemonInstanceName).dialog.(@subject == diagSubject)[root.pickRandom(i - 1)];
               if(diagSubject == "poke" && root.diagBuffer == this.previousPokeDiag)
               {
                  return false;
               }
               if(diagSubject == "poke")
               {
                  this.previousPokeDiag = root.diagBuffer;
               }
               this.showcaseContainer.getChildAt(this.activePokemonInstance).bubble.play();
               return true;
            }
         }
      }
      
      public function changeSceneNow(param1:MouseEvent) : void
      {
         this.sceneBar.sceneSelectionTable.visible = false;
         root.playSoundEffect(root.sfxUIArray["button2"],root.randomVolume(1,20));
         tmp = param1.target.name.substr(4,32);
         this.sceneContainer.gotoAndStop(tmp);
         root.currentSceneSelected = tmp;
         this.sceneContainer.sceneLayout.bg.stop();
         root.thinkThought("start",100,null,false,"scene");
         this.stopCustomLayers();
      }
      
      function frame1() : *
      {
         this.instancePrefix = "select_";
         this.currentScrollPosition = 4;
         this.lastScrollPosition = 4;
         this.distanceToScroll = 420;
         this.distanceToEase = 40;
         this.scrollSpeed = 30;
         this.scrollSpeedEasing = 5;
         this.pokemonScrollerDefaultX = this.pokemonScroller.x;
         this.pokemonScrollerDefaultY = this.pokemonScroller.y;
         this.showcaseBar.showcaseSelectionTable.closeSelectionTable.buttonMode = true;
         this.sceneModeActive = false;
         this.numberOfPokemonAvailable = 8;
         this.numberOfPokemonAvailableOmit = 0;
         i = 0;
         while(i < this.pokemonScroller.numChildren)
         {
            if(this.pokemonScroller.getChildAt(i) is MovieClip && this.pokemonScroller.getChildAt(i).name.substr(0,7) == "select_")
            {
               instanceRef = this.pokemonScroller.getChildAt(i);
               instanceRef.gotoAndStop("L" + this.pokemonScroller.getChildAt(i).name.substr(7,16));
               this.stopCustomLayers(instanceRef.showcasePokemonSelected);
               instanceRef.buttonMode = true;
               instanceRef.mouseChildren = false;
               instanceRef.addEventListener(MouseEvent.MOUSE_OVER,root.selectPokemon);
               instanceRef.addEventListener(MouseEvent.MOUSE_DOWN,root.playPokemonCry);
               instanceRef.addEventListener(MouseEvent.MOUSE_OVER,root.mouseOverButton);
               instanceRef.addEventListener(MouseEvent.MOUSE_OVER,root.pickMeShow);
               instanceRef.addEventListener(MouseEvent.MOUSE_OUT,root.pickMeHide);
               tmp = this.pokemonScroller.getChildAt(i).name.substr(7,3);
               if(tmp != 6 && tmp != 7 && tmp != 8 && tmp != 9)
               {
                  this.pokemonScroller.getChildAt(i).addEventListener(MouseEvent.MOUSE_DOWN,root.clickToNextFrame);
               }
            }
            ++i;
         }
         i = 0;
         while(i < this.showcaseBar.showcaseSelectionTable.numChildren)
         {
            if(this.showcaseBar.showcaseSelectionTable.getChildAt(i) is MovieClip)
            {
               if(this.showcaseBar.showcaseSelectionTable.getChildAt(i).name.substr(0,4) == "box_")
               {
                  this.showcaseBar.showcaseSelectionTable.getChildAt(i).addEventListener(MouseEvent.MOUSE_DOWN,this.addPokemonNow);
                  this.showcaseBar.showcaseSelectionTable.getChildAt(i).addEventListener(MouseEvent.MOUSE_OVER,this.enableGlow);
                  this.showcaseBar.showcaseSelectionTable.getChildAt(i).addEventListener(MouseEvent.MOUSE_OUT,this.disableGlow);
                  this.showcaseBar.showcaseSelectionTable.getChildAt(i).buttonMode = true;
                  this.showcaseBar.showcaseSelectionTable.getChildAt(i).glowBox.mouseEnabled = false;
                  this.showcaseBar.showcaseSelectionTable.getChildAt(i).mouseChildren = false;
               }
            }
            ++i;
         }
         this.scrollLeft.addEventListener(MouseEvent.MOUSE_DOWN,this.scrollStart);
         this.scrollRight.addEventListener(MouseEvent.MOUSE_DOWN,this.scrollStart);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.moveShowcasePokemon);
         stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.scrollStart);
         this.bubbleLayout.gotoAndStop(2);
         this.pokemonName.gotoAndStop("stop");
         this.showcaseBG.stop();
         this.showcaseBar.stop();
         this.sceneLighting.stop();
         this.sceneLighting.mouseEnabled = false;
         this.sceneLighting.mouseChildren = false;
         stop();
         if(root.selectedMode != "breeder")
         {
            this.pokemonScroller.visible = false;
            play();
         }
      }
      
      function frame3() : *
      {
         if(root.musicMuted == false)
         {
            root.musicChannel.stop();
            root.musicChannel = root.musicArray["showcase"].play(0,999);
            root.musicChannel.soundTransform = new SoundTransform(1);
         }
         else
         {
            root.musicChannel = root.musicArray["showcase"].play(0,999);
            root.rememberVolume = 1;
            root.musicChannel.soundTransform = new SoundTransform(0);
         }
         this.showcaseModeActive = true;
         this.sceneModeActive = false;
         if(root.selectedMode == "scene")
         {
            this.pokemonScroller.visible = false;
            gotoAndStop("scene");
         }
         this.showcaseBar.changeBGBack.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            showcaseBG.gotoAndStop(showcaseBG.currentFrame - 1);
            root.playSoundEffect(root.sfxUIArray["button2"],root.randomVolume(1,20));
         });
         this.showcaseBar.changeBGForward.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            showcaseBG.gotoAndStop(showcaseBG.currentFrame + 1);
            root.playSoundEffect(root.sfxUIArray["button2"],root.randomVolume(1,20));
         });
         this.showcaseBar.changeLightingBack.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            sceneLighting.gotoAndStop(sceneLighting.currentFrame - 1);
            root.playSoundEffect(root.sfxUIArray["button2"],root.randomVolume(1,20));
         });
         this.showcaseBar.changeLightingForward.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            sceneLighting.gotoAndStop(sceneLighting.currentFrame + 1);
            root.playSoundEffect(root.sfxUIArray["button2"],root.randomVolume(1,20));
         });
         this.showcaseBar.addPokemon.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            showcaseBar.showcaseSelectionTable.visible = true;
            showcaseBar.showcaseSelectionTable.play();
            root.playSoundEffect(root.sfxUIArray["button1"],root.randomVolume(1,20));
         });
         this.showcaseBar.showcaseSelectionTable.closeSelectionTable.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            showcaseBar.showcaseSelectionTable.visible = false;
            showcaseBar.showcaseSelectionTable.gotoAndStop(1);
            root.playSoundEffect(root.sfxUIArray["button2"],root.randomVolume(1,20));
         });
         this.showcaseBar.moveObjectUp.addEventListener(MouseEvent.MOUSE_DOWN,this.moveShowcasePokemon);
         this.showcaseBar.moveObjectDown.addEventListener(MouseEvent.MOUSE_DOWN,this.moveShowcasePokemon);
         this.showcaseBar.moveObjectRight.addEventListener(MouseEvent.MOUSE_DOWN,this.moveShowcasePokemon);
         this.showcaseBar.moveObjectLeft.addEventListener(MouseEvent.MOUSE_DOWN,this.moveShowcasePokemon);
         this.showcaseBar.moveObjectIn.addEventListener(MouseEvent.MOUSE_DOWN,this.moveShowcasePokemon);
         this.showcaseBar.moveObjectOut.addEventListener(MouseEvent.MOUSE_DOWN,this.moveShowcasePokemon);
         this.showcaseBar.moveObjectForward.addEventListener(MouseEvent.MOUSE_DOWN,this.moveShowcasePokemon);
         this.showcaseBar.mirrorObject.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            showcaseContainer.getChildAt(activePokemonInstance).scaleX = showcaseContainer.getChildAt(activePokemonInstance).scaleX * -1;
            root.playSoundEffect(root.sfxUIArray["button2"],root.randomVolume(1,20));
         });
         this.showcaseBar.nextShowcasePokemon.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            if(showcaseContainer.getChildAt(activePokemonInstance)["bubble"])
            {
               showcaseContainer.getChildAt(activePokemonInstance).bubble.gotoAndStop(1);
            }
            showcaseContainer.getChildAt(activePokemonInstance).nextFrame();
            stopCustomLayers(pokemonReferenceVar.showcasePokemonSelected);
            root.playSoundEffect(root.sfxUIArray["button2"],root.randomVolume(1,20));
         });
         this.showcaseBar.previousShowcasePokemon.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            if(showcaseContainer.getChildAt(activePokemonInstance)["bubble"])
            {
               showcaseContainer.getChildAt(activePokemonInstance).bubble.gotoAndStop(1);
            }
            showcaseContainer.getChildAt(activePokemonInstance).prevFrame();
            stopCustomLayers(pokemonReferenceVar.showcasePokemonSelected);
            root.playSoundEffect(root.sfxUIArray["button2"],root.randomVolume(1,20));
         });
         this.showcaseBar.addCum.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            if(showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected["butt"])
            {
               root.playCumSound();
               showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.butt.nextFrame();
            }
            else if(showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected["body"])
            {
               root.playCumSound();
               showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.body.nextFrame();
            }
            if(showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected["legLeft"])
            {
               showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.legLeft.nextFrame();
            }
            if(showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected["legRight"])
            {
               showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.legRight.nextFrame();
            }
         });
         this.showcaseBar.removeCum.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            if(showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected["butt"])
            {
               root.playSoundEffect(root.sfxUIArray["button2"],root.randomVolume(1,20));
               showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.butt.prevFrame();
            }
            else if(showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected["body"])
            {
               root.playSoundEffect(root.sfxUIArray["button2"],root.randomVolume(1,20));
               showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.body.prevFrame();
            }
            if(showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected["legLeft"])
            {
               showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.legLeft.prevFrame();
            }
            if(showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected["legRight"])
            {
               showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.legRight.prevFrame();
            }
         });
         this.showcaseBar.switchBits.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            if(showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected["butt"])
            {
               if(showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.butt["genitals"])
               {
                  if(showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.butt.genitals.currentFrame == showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.butt.genitals.totalFrames)
                  {
                     showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.butt.genitals.gotoAndStop(1);
                  }
                  else
                  {
                     showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.butt.genitals.nextFrame();
                  }
               }
            }
            else if(showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected["body"])
            {
               if(showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.body["genitals"])
               {
                  if(showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.body.genitals.currentFrame == showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.body.genitals.totalFrames)
                  {
                     showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.body.genitals.gotoAndStop(1);
                  }
                  else
                  {
                     showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.body.genitals.nextFrame();
                  }
               }
            }
            root.playSoundEffect(root.sfxUIArray["button2"],root.randomVolume(1,20));
         });
         this.showcaseBar.switchTits.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            if(showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected["body"])
            {
               if(showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.body["breasts"])
               {
                  if(showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.body.breasts.currentFrame == showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.body.breasts.totalFrames)
                  {
                     showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.body.breasts.gotoAndStop(1);
                  }
                  else
                  {
                     showcaseContainer.getChildAt(activePokemonInstance).showcasePokemonSelected.body.breasts.nextFrame();
                  }
               }
            }
            root.playSoundEffect(root.sfxUIArray["button2"],root.randomVolume(1,20));
         });
         this.showcaseBar.pauseShowcase.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            pauseShowcase();
            root.playSoundEffect(root.sfxUIArray["button2"],root.randomVolume(1,20));
         });
         this.showcaseBar.deletePokemon.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            root.stopAll(pokemonReferenceVar.showcasePokemonSelected);
            showcaseContainer.removeChildAt(activePokemonInstance);
            root.playSoundEffect(root.sfxUIArray["pokeball-return"],root.randomVolume(1,15));
         });
      }
      
      function frame76() : *
      {
         stop();
      }
      
      function frame77() : *
      {
         if(root.musicMuted == false)
         {
            root.musicChannel.stop();
            root.musicChannel = root.musicArray["evolve"].play(0,999);
            root.musicChannel.soundTransform = new SoundTransform(1);
         }
         else
         {
            root.musicChannel = root.musicArray["evolve"].play(0,999);
            root.rememberVolume = 1;
            root.musicChannel.soundTransform = new SoundTransform(0);
         }
         this.pokemonScroller.visible = true;
         this.showcaseBar.showcaseSelectionTable.visible = false;
         this.sceneLighting.gotoAndStop(1);
         this.showcaseModeActive = false;
         root.stopAll(this.showcaseContainer);
         while(this.showcaseContainer.numChildren > 0)
         {
            this.showcaseContainer.removeChildAt(0);
         }
      }
      
      function frame101() : *
      {
         gotoAndStop(2);
      }
      
      function frame102() : *
      {
         this.sceneModeActive = true;
         this.showcaseModeActive = false;
         root.stopAll(this.showcaseContainer);
         while(this.showcaseContainer.numChildren > 0)
         {
            this.showcaseContainer.removeChildAt(0);
         }
         root.musicArray["scene"] = new musicScene();
         if(root.musicMuted == false)
         {
            root.musicChannel.stop();
            root.musicChannel = root.musicArray["scene"].play(0,999);
            root.musicChannel.soundTransform = new SoundTransform(1);
         }
         else
         {
            root.musicChannel = root.musicArray["scene"].play(0,999);
            root.rememberVolume = 1;
            root.musicChannel.soundTransform = new SoundTransform(0);
         }
         i = 0;
         while(i < this.sceneBar.sceneSelectionTable.numChildren)
         {
            if(this.sceneBar.sceneSelectionTable.getChildAt(i) is MovieClip)
            {
               if(this.sceneBar.sceneSelectionTable.getChildAt(i).name.substr(0,4) == "box_")
               {
                  this.sceneBar.sceneSelectionTable.getChildAt(i).addEventListener(MouseEvent.MOUSE_DOWN,this.changeSceneNow);
                  this.sceneBar.sceneSelectionTable.getChildAt(i).addEventListener(MouseEvent.MOUSE_OVER,this.enableGlow);
                  this.sceneBar.sceneSelectionTable.getChildAt(i).addEventListener(MouseEvent.MOUSE_OUT,this.disableGlow);
                  this.sceneBar.sceneSelectionTable.getChildAt(i).buttonMode = true;
                  this.sceneBar.sceneSelectionTable.getChildAt(i).glowBox.mouseEnabled = false;
                  this.sceneBar.sceneSelectionTable.getChildAt(i).mouseChildren = false;
               }
            }
            ++i;
         }
         this.sceneBar.changeSceneButton.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            sceneBar.sceneSelectionTable.visible = true;
            root.playSoundEffect(root.sfxUIArray["button1"],root.randomVolume(1,20));
         });
         this.sceneBar.sceneSelectionTable.closeSelectionTable.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            sceneBar.sceneSelectionTable.visible = false;
            root.playSoundEffect(root.sfxUIArray["button2"],root.randomVolume(1,20));
         });
         this.sceneBar.advanceScene.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            sceneContainer.advanceScene = true;
            root.playSoundEffect(root.sfxUIArray["button1"],root.randomVolume(1,20));
         });
         this.sceneBar.changeBGForward.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            sceneContainer.sceneLayout.bg.nextFrame();
            root.playSoundEffect(root.sfxUIArray["button2"],root.randomVolume(1,20));
         });
         this.sceneBar.changeBGBack.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            sceneContainer.sceneLayout.bg.prevFrame();
            root.playSoundEffect(root.sfxUIArray["button2"],root.randomVolume(1,20));
         });
         this.sceneBar.addCum.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            if(sceneContainer["sceneLayout"])
            {
               root.playCumSound();
               if(sceneContainer.sceneLayout["head"])
               {
                  if(sceneContainer.sceneLayout.head["cum"])
                  {
                     sceneContainer.sceneLayout.head.cum.nextFrame();
                  }
               }
               if(sceneContainer.sceneLayout["pussy"])
               {
                  if(sceneContainer.sceneLayout.pussy["cum"])
                  {
                     sceneContainer.sceneLayout.pussy.cum.nextFrame();
                  }
               }
            }
         });
         this.sceneBar.thoughtsCheckbox.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            if(root.enableSceneThoughts == true)
            {
               sceneBar.thoughtsCheckbox.prevFrame();
               root.enableSceneThoughts = false;
            }
            else
            {
               sceneBar.thoughtsCheckbox.nextFrame();
               root.enableSceneThoughts = true;
               root.dialogReady = true;
            }
            root.playSoundEffect(root.sfxUIArray["button2"],root.randomVolume(1,20));
         });
         this.sceneBar.removeCum.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            if(sceneContainer["sceneLayout"])
            {
               if(sceneContainer.sceneLayout["head"])
               {
                  if(sceneContainer.sceneLayout.head["cum"])
                  {
                     sceneContainer.sceneLayout.head.cum.prevFrame();
                  }
               }
               if(sceneContainer.sceneLayout["pussy"])
               {
                  if(sceneContainer.sceneLayout.pussy["cum"])
                  {
                     sceneContainer.sceneLayout.pussy.cum.prevFrame();
                  }
               }
            }
         });
         this.sceneContainer.stop();
         this.sceneBar.thoughtsCheckbox.gotoAndStop(2);
      }
      
      function frame103() : *
      {
         if(root.musicMuted == false)
         {
            root.musicChannel.stop();
            root.musicChannel = root.musicArray["evolve"].play(0,999);
            root.musicChannel.soundTransform = new SoundTransform(1);
         }
         else
         {
            root.musicChannel = root.musicArray["evolve"].play(0,999);
            root.rememberVolume = 1;
            root.musicChannel.soundTransform = new SoundTransform(0);
         }
         this.pokemonScroller.visible = true;
         this.showcaseBar.showcaseSelectionTable.visible = false;
         this.sceneLighting.gotoAndStop(1);
         this.showcaseModeActive = false;
         this.sceneModeActive = false;
         root.stopAll(this.showcaseContainer);
         root.stopAll(this.sceneContainer);
         while(this.showcaseContainer.numChildren > 0)
         {
            this.showcaseContainer.removeChildAt(0);
         }
         gotoAndStop(2);
      }
   }
}
