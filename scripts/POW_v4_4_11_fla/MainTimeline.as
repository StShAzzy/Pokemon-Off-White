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
   
   public dynamic class MainTimeline extends MovieClip
   {
       
      
      public var act:MovieClip;
      
      public var intro:MovieClip;
      
      public var levelUp:MovieClip;
      
      public var loadBar:MovieClip;
      
      public var loadCheck:TextField;
      
      public var patreon:SimpleButton;
      
      public var playGame:SimpleButton;
      
      public var pokedex:MovieClip;
      
      public var qControl:SimpleButton;
      
      public var selectMode:MovieClip;
      
      public var starterLayout:MovieClip;
      
      public var toggleDialogOverride:MovieClip;
      
      public var toggleMusic:SimpleButton;
      
      public var toggleSelect:MovieClip;
      
      public var transitionFX:MovieClip;
      
      public var twoFrameTimer:MovieClip;
      
      public var loadedPercent:Number;
      
      public var checkForOverride:Boolean;
      
      public var betaVersion:Boolean;
      
      public var selectedMode:String;
      
      public var tempPokedexMusicState:Boolean;
      
      public var cxMenu:ContextMenu;
      
      public const Level1:Class = MainTimeline_Level1;
      
      public var dialogXML:XML;
      
      public const Level2:Class = MainTimeline_Level2;
      
      public var pokemonXML:XML;
      
      public const Level3:Class = MainTimeline_Level3;
      
      public var plansXML:XML;
      
      public var transVolume:SoundTransform;
      
      public var musicChannel:SoundChannel;
      
      public var rememberVolume;
      
      public var musicMuted;
      
      public var soundMuted;
      
      public var sfxThrust4:thrust4;
      
      public var sfxLvlUp:lvl_up;
      
      public var sfxCumArray:Object;
      
      public var sfxCriesArray:Object;
      
      public var sfxUIArray:Object;
      
      public var musicArray:Object;
      
      public var pokemonSelected:int;
      
      public var actSelected:String;
      
      public var previousPokemon:int;
      
      public var dialogOverride:Boolean;
      
      public var roundsOfSex:int;
      
      public var cumComment:Boolean;
      
      public var previousComment:Boolean;
      
      public var firstLoop:Boolean;
      
      public var roundComment:Boolean;
      
      public var haltDialog:Boolean;
      
      public var dialogReady:Boolean;
      
      public var diagBuffer:String;
      
      public var previousDiag:String;
      
      public var pickedFirst:Boolean;
      
      public var disableDialog:Boolean;
      
      public var currentSceneSelected:String;
      
      public var enableSceneThoughts:Boolean;
      
      public var tempXML:URLLoader;
      
      public var gameSettings:Array;
      
      public var debug:Boolean;
      
      public var halted:Boolean;
      
      public var timesToArray:Array;
      
      public var timesHaveArray:Array;
      
      public var sequenceStarted:Boolean;
      
      public var cumming:Boolean;
      
      public var roundsOfSexArray:Array;
      
      public var climax:int;
      
      public var climaxPoint:int;
      
      public var blackingOut:Boolean;
      
      public var forceAdvance:Boolean;
      
      public var forceRepeat:Boolean;
      
      public var switchingPokemon:Boolean;
      
      public var doesDrool:Boolean;
      
      public var drooling:Boolean;
      
      public var readyToDeblush:Boolean;
      
      public var blushing:Boolean;
      
      public var pokemonArousal:int;
      
      public var pokemonArousalPoint:int;
      
      public var vaginalCapacityMin:int;
      
      public var vaginalCapacityMax:int;
      
      public var cumArrayHuman:Array;
      
      public var cumArray:Array;
      
      public var cumTrackingArray:Object;
      
      public var cumBonus:int;
      
      public var puddleAtMax:Boolean;
      
      public var spilling:Boolean;
      
      public var doingScaryFace:Boolean;
      
      public var cumStage:int;
      
      public var fireLit:Boolean;
      
      public var internalView:Boolean;
      
      public var justCame:Boolean;
      
      public function MainTimeline()
      {
         super();
         this.root.accessibilityProperties = new AccessibilityProperties();
         this.root.accessibilityProperties.silent = true;
      }
      
      public function onProgress(param1:Event) : *
      {
         this.loadedPercent = this.loaderInfo.bytesLoaded / this.loaderInfo.bytesTotal * 100;
         this.loadBar.scaleX = this.loadedPercent / 100;
      }
      
      public function pokemonNumberToName(param1:*) : String
      {
         var pokemonNum:* = param1;
         return this.pokemonXML.actor.(@pokemonNum == pokemonNum).basic.name.toLowerCase();
      }
      
      public function toggleMode(param1:MouseEvent) : void
      {
         this.selectMode.visible = true;
         this.toggleSelect.visible = false;
         this.selectMode.gotoAndPlay("pop-in");
      }
      
      public function clickToNextFrame(param1:MouseEvent) : void
      {
         if(currentFrame == 2)
         {
            root.starterLayout.bubbleLayout.bubble.gotoAndStop(1);
            root.dialogReady = true;
            root.diagBuffer = null;
            root.starterLayout.scrollStop();
            stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.starterLayout.moveShowcasePokemon);
         }
         root.playSoundEffect(root.sfxUIArray["select"]);
         nextFrame();
      }
      
      public function mouseOverButton(param1:MouseEvent) : void
      {
         root.transVolume = root.randomVolume(1,10);
         root.playSoundEffect(root.sfxUIArray["choose"],root.transVolume);
      }
      
      public function toggleMusicChannel(param1:MouseEvent) : void
      {
         if(root.musicMuted == true)
         {
            root.musicChannel.soundTransform = new SoundTransform(root.rememberVolume);
            root.playSoundEffect(root.sfxUIArray["select"]);
            root.musicMuted = false;
            if(currentFrame > 1)
            {
               root.pokedex.layout.toggleMusic.gotoAndPlay("on");
            }
            else
            {
               this.tempPokedexMusicState = true;
            }
         }
         else
         {
            if(root.musicChannel.soundTransform.volume)
            {
               root.rememberVolume = root.musicChannel.soundTransform.volume;
            }
            root.musicChannel.soundTransform = new SoundTransform(0);
            root.musicMuted = true;
            if(currentFrame > 1)
            {
               root.pokedex.layout.toggleMusic.gotoAndPlay("off");
            }
            else
            {
               this.tempPokedexMusicState = false;
            }
         }
      }
      
      public function toggleSoundChannel(param1:MouseEvent) : void
      {
         if(root.soundMuted == true)
         {
            root.soundTransform = new SoundTransform(1);
            root.soundMuted = false;
            root.pokedex.layout.toggleSound.gotoAndPlay("on");
         }
         else
         {
            root.soundTransform = new SoundTransform(0);
            root.soundMuted = true;
            root.pokedex.layout.toggleSound.gotoAndPlay("off");
         }
      }
      
      public function playSoundEffect(param1:Object, param2:SoundTransform = null) : void
      {
         if(root.soundMuted == false)
         {
            param1.play(0,1,param2);
         }
      }
      
      public function cloneArray(param1:Object) : *
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeObject(param1);
         _loc2_.position = 0;
         return _loc2_.readObject();
      }
      
      public function traceArray(param1:Array) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1)
         {
            trace(_loc2_ + " : " + param1[_loc2_]);
         }
         trace("-----------------");
      }
      
      public function pickRandom(param1:int) : int
      {
         return Math.round(Math.random() * param1);
      }
      
      public function rollChance(param1:int) : Boolean
      {
         i = this.pickRandom(99);
         if(root.debug == true)
         {
            trace("Rolled " + i + " needed less than " + param1);
         }
         if(i <= param1)
         {
            return true;
         }
         return false;
      }
      
      public function randomVolume(param1:int, param2:int) : SoundTransform
      {
         i = (root.pickRandom(param1) + param2) / 100;
         return new SoundTransform(i);
      }
      
      public function stopAll(param1:DisplayObjectContainer) : void
      {
         var _loc2_:DisplayObjectContainer = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1 is MovieClip)
         {
            (param1 as MovieClip).stop();
         }
         if(param1.numChildren)
         {
            _loc4_ = param1.numChildren;
            while(_loc3_ < _loc4_)
            {
               if(param1.getChildAt(_loc3_) is DisplayObjectContainer)
               {
                  _loc2_ = param1.getChildAt(_loc3_) as DisplayObjectContainer;
                  if(_loc2_.numChildren)
                  {
                     this.stopAll(_loc2_);
                  }
                  else if(_loc2_ is MovieClip)
                  {
                     (_loc2_ as MovieClip).stop();
                  }
               }
               _loc3_++;
            }
         }
      }
      
      public function fetchPokemonNumber(param1:String) : int
      {
         return param1.substr(7,3);
      }
      
      public function selectPokemon(param1:MouseEvent) : *
      {
         if(param1.target.name.length < 4)
         {
            root.pokemonSelected = param1.target.name.substr(1,3);
         }
         else
         {
            root.pokemonSelected = root.fetchPokemonNumber(param1.target.name);
         }
         if(root.currentFrame == 2)
         {
            root.currentPokemonSelected = root.pokemonSelected;
         }
         else if(root.currentFrame == 3 && root.pokemonSelected != root.currentPokemonSelected)
         {
            if(root.timesHaveArray["preHump"] > 0)
            {
               root.transitionFX.gotoAndPlay(2);
            }
            if(root.timesHaveArray["preHump"] == 0)
            {
               this.pokedex.layout.screen.list.pokemonInfo.note.visible = true;
            }
            else
            {
               this.pokedex.layout.screen.list.pokemonInfo.note.visible = false;
            }
         }
      }
      
      public function playPokemonCry(param1:MouseEvent) : void
      {
         if(root.currentFrame == 2 || root.currentFrame == 3 && root.pokemonSelected != root.currentPokemonSelected)
         {
            root.transVolume = root.randomVolume(1,30);
            if(root.currentFrame == 3)
            {
               tmp = param1.target.name.substr(1,3);
               root.playSoundEffect(root.sfxCriesArray[this.pokemonNumberToName(tmp)],root.transVolume);
            }
            else
            {
               root.playSoundEffect(root.sfxCriesArray[this.pokemonNumberToName(root.pokemonSelected)],root.transVolume);
            }
         }
      }
      
      public function pickMeShow(param1:MouseEvent) : void
      {
         root.pickThought("pickMe");
         if(root.diagBuffer && root.dialogReady == true)
         {
            root.dialogReady = false;
            root.starterLayout.bubbleLayout.gotoAndStop(root.pokemonSelected);
            root.starterLayout.bubbleLayout.bubble.gotoAndPlay(2);
         }
         this.starterLayout.pokemonScroller.getChildByName("select_" + this.pokemonSelected).nextFrame();
         this.starterLayout.stopCustomLayers(this.starterLayout.pokemonScroller.getChildByName("select_" + this.pokemonSelected).showcasePokemonSelected);
      }
      
      public function pickMeHide(param1:MouseEvent) : void
      {
         if(root.currentFrame == 2)
         {
            root.starterLayout.bubbleLayout.bubble.gotoAndStop(1);
            root.dialogReady = true;
            this.starterLayout.pokemonScroller.getChildByName("select_" + this.pokemonSelected).prevFrame();
            this.starterLayout.stopCustomLayers(this.starterLayout.pokemonScroller.getChildByName("select_" + this.pokemonSelected).showcasePokemonSelected);
         }
      }
      
      public function playCumSound() : void
      {
         rand = root.pickRandom(4);
         switch(rand)
         {
            case 0:
               root.transVolume = root.randomVolume(20,20);
               root.playSoundEffect(root.sfxCumArray["cum4"],root.transVolume);
               break;
            case 1:
               root.transVolume = root.randomVolume(20,20);
               root.playSoundEffect(root.sfxCumArray["cum5"],root.transVolume);
               break;
            case 2:
               root.transVolume = root.randomVolume(20,20);
               root.playSoundEffect(root.sfxCumArray["cum6"],root.transVolume);
               break;
            case 3:
               root.transVolume = root.randomVolume(20,20);
               root.playSoundEffect(root.sfxCumArray["cum7"],root.transVolume);
               break;
            case 4:
               root.transVolume = root.randomVolume(20,20);
               root.playSoundEffect(root.sfxCumArray["cum8"],root.transVolume);
         }
      }
      
      public function noOverride(param1:Event) : void
      {
         root.dialogOverride = false;
      }
      
      public function setPokemon() : void
      {
         if(root.act.currentFrame > 1)
         {
            if(root.act.currentFrame == 2)
            {
               root.act.bg.fxTimer.stop();
            }
            root.act.pokemonContainer.pokemon.stop();
            while(root.act.pokemonContainer.pokemon.numChildren > 0)
            {
               if(root.act.pokemonContainer.pokemon.getChildAt(0) is MovieClip)
               {
                  root.act.pokemonContainer.pokemon.getChildAt(0).stop();
               }
               root.act.pokemonContainer.pokemon.removeChildAt(0);
            }
            root.act.pokemonContainer.gotoAndStop(1);
         }
         if(root.act["bubble"])
         {
            root.act.bubble.gotoAndStop(1);
         }
         root.dialogReady = true;
         root.previousComment = false;
         root.actSelected = this.pokemonXML.actor.(@pokemonNum == root.pokemonSelected).sexual.defaultAct;
         root.act.gotoAndStop(root.actSelected);
         if(root.currentPokemonSelected != root.pokemonSelected)
         {
            root.previousPokemon = root.currentPokemonSelected;
         }
         if(root.previousPokemon)
         {
            root.cumTrackingArray[root.currentPokemonSelected] = this.cloneArray(root.cumArray);
         }
         root.currentPokemonSelected = root.pokemonSelected;
         if(root.roundsOfSexArray[root.currentPokemonSelected] == undefined)
         {
            root.roundsOfSexArray[root.currentPokemonSelected] = 1;
         }
         root.roundsOfSex = root.roundsOfSexArray[root.currentPokemonSelected];
         root.act.pokemonContainer.gotoAndStop(root.pokemonSelected + 1);
         root.pokedex.layout.screen.list.pokemonInfo.note.visible = false;
         if(root.act.currentFrame == 2)
         {
            root.act.pokemonContainer.pokemon.bodySwap(root.pokemonSelected);
         }
         if(root.previousPokemon > 0 && root.previousPokemon < 4 && root.act.currentFrame == 2)
         {
            root.puddleAtMax = false;
            root.act.bg.sheets.restingPokemon.gotoAndStop(1);
            root.act.bg.sheets.restingPokemon.gotoAndStop(root.previousPokemon + 1);
            root.act.bg.sheets.restingPokemon.renderAfterSexMess(root.cumTrackingArray[root.previousPokemon]["groin"]);
            root.act.bg.sheets.restingPokemon.pokemon.body.pussy.gotoAndPlay(1);
         }
         if(root.cumTrackingArray[root.currentPokemonSelected] == undefined)
         {
            root.resetCum();
         }
         else
         {
            root.cumArray = root.cumTrackingArray[root.currentPokemonSelected];
         }
         root.timesHaveArray["preHump"] = 0;
         root.blushing = false;
         root.readyToDeblush = false;
         root.pokemonArousal = 0;
         root.climax = 0;
         root.firstLoop = true;
         root.switchingPokemon = false;
         root.doesDrool = this.pokemonXML.actor.(@pokemonNum == root.currentPokemonSelected).sexual.drool == true;
      }
      
      public function thinkThought(param1:String, param2:int = 100, param3:String = null, param4:Boolean = false, param5:String = "interactive") : void
      {
         var diagType:String = param1;
         var chance:int = param2;
         var checkFlag:String = param3;
         var force:Boolean = param4;
         var diagStructure:String = param5;
         rollResult = root.rollChance(chance);
         if(root.debug == true)
         {
            trace("haltDialog: " + root.haltDialog + " dialogReady: " + root.dialogReady + " force: " + force + " checkFlag: " + checkFlag + " (flag is " + root[checkFlag] + ")" + " rollResult: " + rollResult);
         }
         if((rollResult || root[checkFlag] === false) && (root.disableDialog == false && (root.dialogReady == true && root.haltDialog == false || force == true)))
         {
            flagException = false;
            if(diagType == "idle")
            {
               if(root.pickedFirst == false)
               {
                  root.pickedFirst = true;
                  diagType = "pickedFirst";
               }
               else if(root.rollChance(50) && checkFlag == "previousComment" && root[checkFlag] == false)
               {
                  tmp = this.pokemonXML.actor.(@pokemonNum == root.previousPokemon).basic.name;
                  diagType = "previousWas" + tmp;
                  if(root.pickThought(diagType,true) == false)
                  {
                     diagType = "idle";
                  }
               }
            }
            if(checkFlag == "cumComment" && root[checkFlag] == false)
            {
               if(root.cumArray["inside"] > 120)
               {
                  if(root.cumArray["inside"] > 240)
                  {
                     diagType = "fullOfMoreCum";
                  }
                  else
                  {
                     diagType = "fullOfCum";
                  }
               }
               else
               {
                  flagException = true;
               }
            }
            if(checkFlag !== null && flagException == false)
            {
               root[checkFlag] = true;
            }
            if(flagException == true && rollResult == false)
            {
               return;
            }
            root.pickThought(diagType,false,diagStructure);
            if(root.diagBuffer && root.diagBuffer != root.previousDiag && (diagStructure == "scene" && root.enableSceneThoughts || diagStructure != "scene"))
            {
               root.dialogReady = false;
               root.previousDiag = this.cloneArray(root.diagBuffer);
               if(diagStructure == "interactive")
               {
                  root.act.bubble.gotoAndPlay(2);
               }
               else if(diagStructure == "scene")
               {
                  root.starterLayout.sceneContainer.sceneLayout.bubble.gotoAndPlay(2);
               }
            }
            else if(root.debug == true && root.diagBuffer == root.previousDiag)
            {
               trace("Dupe: " + root.diagBuffer);
            }
         }
      }
      
      public function pickThought(param1:String, param2:Boolean = false, param3:String = "interactive") : Boolean
      {
         var diagType:String = param1;
         var checkOnly:Boolean = param2;
         var diagStructure:String = param3;
         if(diagStructure == "interactive")
         {
            i = root.dialogXML.actor.(@pokemonNum == root.currentPokemonSelected).act.dialog.(@subject == diagType && attribute("minRound") <= root.roundsOfSex && (attribute("maxRound") >= root.roundsOfSex || attribute("maxRound") == -1)).length();
         }
         else if(diagStructure == "scene")
         {
            i = root.dialogXML.scene.act.(@act == root.currentSceneSelected).dialog.(@subject == diagType).length();
         }
         if(root.debug == true)
         {
            trace("DiagType: " + diagType + " and results found: " + i);
         }
         if(i > 0)
         {
            if(checkOnly == false)
            {
               if(diagStructure == "interactive")
               {
                  root.diagBuffer = root.dialogXML.actor.(@pokemonNum == root.currentPokemonSelected).act.dialog.(@subject == diagType && attribute("minRound") <= root.roundsOfSex && (attribute("maxRound") >= root.roundsOfSex || attribute("maxRound") == -1))[this.pickRandom(i - 1)];
               }
               else if(diagStructure == "scene")
               {
                  root.diagBuffer = root.dialogXML.scene.act.(@act == root.currentSceneSelected).dialog.(@subject == diagType)[this.pickRandom(i - 1)];
               }
               return true;
            }
            return true;
         }
         return false;
      }
      
      public function checkBlackOut(param1:*) : void
      {
         if(root.climaxPoint - root.climax < param1 && root.blackingOut == false)
         {
            if(root.act["blackout"])
            {
               root.act.blackout.gotoAndPlay(2);
            }
            else
            {
               root.act.pokemonContainer.pokemon.blackout.gotoAndPlay(2);
            }
         }
      }
      
      public function renderMess() : void
      {
         if(root.act.pokemonContainer.pokemon.groin["cumLower"])
         {
            root.act.pokemonContainer.pokemon.groin.cumLower.gotoAndStop(root.cumArray["groin"]);
         }
         if(root.act.pokemonContainer.pokemon.groin["cumUpper"])
         {
            root.act.pokemonContainer.pokemon.groin.cumUpper.gotoAndStop(root.cumArray["belly"]);
         }
         if(root.act.pokemonContainer.pokemon.leftThigh["cum"])
         {
            root.act.pokemonContainer.pokemon.leftThigh.cum.gotoAndStop(root.cumArray["thighLeft"]);
         }
         if(root.act.pokemonContainer.pokemon.rightThigh["cum"])
         {
            root.act.pokemonContainer.pokemon.rightThigh.cum.gotoAndStop(root.cumArray["thighRight"]);
         }
         if(root.act.pokemonContainer.pokemon.chest["cum"])
         {
            root.act.pokemonContainer.pokemon.chest.cum.gotoAndStop(root.cumArray["chest"]);
         }
         if(root.act.pokemonContainer.pokemon.chest["chest"])
         {
            root.act.pokemonContainer.pokemon.chest.chest.gotoAndStop(root.cumArray["chest"]);
         }
         if(root.act.pokemonContainer.pokemon["creampie"])
         {
            root.act.pokemonContainer.pokemon.creampie.gotoAndStop(root.cumArray["groin"]);
         }
         if(root.act.currentFrame == 2)
         {
            root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.facial.cum.gotoAndStop(root.cumArray["facial"]);
         }
         if(root.act.pokemonContainer.pokemon["pelvis"])
         {
            if(root.act.pokemonContainer.pokemon.pelvis["cum"])
            {
               root.act.pokemonContainer.pokemon.pelvis.cum.gotoAndStop(root.cumArrayHuman["pelvis"]);
            }
         }
      }
      
      public function resetCum() : void
      {
         root.cumArray["inside"] = 0;
         root.cumArray["groin"] = 1;
         root.cumArray["chest"] = 1;
         root.cumArray["belly"] = 1;
         root.cumArray["thighLeft"] = 1;
         root.cumArray["thighRight"] = 1;
         root.cumArray["facial"] = 1;
         root.renderMess();
      }
      
      public function resetRound() : void
      {
         root.forceAdvance = false;
         root.cumComment = false;
         root.roundComment = false;
         root.cumming = false;
         root.cumBonus = 0;
         root.gameSettings["cumLoadBonus"] = 0;
         if(root.act.currentFrame == 2)
         {
            root.cumStage = 1;
            root.justCame = false;
            root.act.pokemonContainer.pokemon.abdomen.gotoAndPlay("breath-slow");
            root.act.pokemonContainer.pokemon.chest.gotoAndPlay("breath-slow");
            root.firstLoop = false;
         }
      }
      
      public function calculateVaginalCapacity() : void
      {
         root.vaginalCapacityMin = this.pokemonXML.actor.(@pokemonNum == root.currentPokemonSelected).pokedex.female.vagina.min * int(root.plansXML.global.vaginalMinimumCapacityMultiplier);
         root.vaginalCapacityMax = this.pokemonXML.actor.(@pokemonNum == root.currentPokemonSelected).pokedex.female.vagina.max * int(root.plansXML.global.vaginalMaximumCapacityMultiplier);
      }
      
      public function createPlan(param1:String, param2:Array) : void
      {
         var sequenceName:String = null;
         var climaxPointMin:int = 0;
         var climaxPointMax:int = 0;
         var minTmp:int = 0;
         var maxTmp:int = 0;
         var actName:String = param1;
         var planArray:Array = param2;
         for each(sequenceName in planArray)
         {
            var _loc7_:int = 0;
            var _loc8_:* = §§checkfilter(this.plansXML.plan);
            var _loc6_:* = new XMLList("");
            §§push(§§findproperty(int));
            this.plansXML.plan.(@act == actName);
            §§pop().§§slot[6] = int((§§newactivation()).int(_loc6_.sequences[sequenceName]["min"]));
            _loc7_ = 0;
            _loc8_ = §§checkfilter(this.plansXML.plan);
            _loc6_ = new XMLList("");
            §§push(§§findproperty(int));
            this.plansXML.plan.(@act == actName);
            §§pop().§§slot[7] = int((§§newactivation()).int(_loc6_.sequences[sequenceName]["max"]));
            if(minTmp)
            {
               root.timesToArray[sequenceName] = root.pickRandom(maxTmp - minTmp) + minTmp;
               root.timesHaveArray[sequenceName] = 0;
               if(root.debug == true)
               {
                  trace(sequenceName + " = " + root.timesToArray[sequenceName]);
               }
            }
         }
         var _loc5_:int = 0;
         _loc6_ = §§checkfilter(this.plansXML.plan);
         var _loc4_:* = new XMLList("");
         §§push(§§findproperty(int));
         this.plansXML.plan.(@act == actName);
         §§pop().§§slot[4] = int((§§newactivation()).int(_loc4_.climax.min));
         _loc5_ = 0;
         _loc6_ = §§checkfilter(this.plansXML.plan);
         _loc4_ = new XMLList("");
         §§push(§§findproperty(int));
         this.plansXML.plan.(@act == actName);
         §§pop().§§slot[5] = int((§§newactivation()).int(_loc4_.climax.max));
         root.climaxPoint = root.pickRandom(climaxPointMax - climaxPointMin) + climaxPointMin;
         if(root.debug == true)
         {
            trace("climax point = " + root.climaxPoint);
         }
         root.pokemonArousalPoint = Math.round(root.climaxPoint * (root.pickRandom(20) / 100 + 0.6));
         _loc5_ = 0;
         _loc6_ = §§checkfilter(root.plansXML.plan);
         _loc4_ = new XMLList("");
         §§push(§§findproperty(int));
         root.plansXML.plan.(@act == actName);
         if(§§pop().rollChance(root.int(_loc4_.climax.cumHardChance)))
         {
            ++root.cumBonus;
            _loc5_ = 0;
            _loc6_ = §§checkfilter(root.plansXML.plan);
            _loc4_ = new XMLList("");
            §§push(root.timesToArray["cum"]);
            §§push(§§findproperty(int));
            root.plansXML.plan.(@act == actName);
            §§pop()[§§pop()] = root.timesToArray + "cum".int(_loc4_.climax.cumHardExtraCum);
            _loc5_ = 0;
            _loc6_ = §§checkfilter(root.plansXML.plan);
            _loc4_ = new XMLList("");
            §§push(root.gameSettings["cumLoadBonus"]);
            §§push(§§findproperty(int));
            root.plansXML.plan.(@act == actName);
            §§pop()[§§pop()] = root.gameSettings + "cumLoadBonus".int(_loc4_.climax.cumHardCumLoadBonus);
         }
         _loc5_ = 0;
         _loc6_ = §§checkfilter(root.plansXML.plan);
         _loc4_ = new XMLList("");
         §§push(§§findproperty(int));
         root.plansXML.plan.(@act == actName);
         if(§§pop().rollChance(root.int(_loc4_.climax.cumVeryHardChance)))
         {
            ++root.cumBonus;
            _loc5_ = 0;
            _loc6_ = §§checkfilter(root.plansXML.plan);
            _loc4_ = new XMLList("");
            §§push(root.timesToArray["cum"]);
            §§push(§§findproperty(int));
            root.plansXML.plan.(@act == actName);
            §§pop()[§§pop()] = root.timesToArray + "cum".int(_loc4_.climax.cumVeryHardExtraCum);
            _loc5_ = 0;
            _loc6_ = §§checkfilter(root.plansXML.plan);
            _loc4_ = new XMLList("");
            §§push(root.gameSettings["cumLoadBonus"]);
            §§push(§§findproperty(int));
            root.plansXML.plan.(@act == actName);
            §§pop()[§§pop()] = root.gameSettings + "cumLoadBonus".int(_loc4_.climax.cumVeryHardCumLoadBonus);
         }
      }
      
      public function myKeyDown(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case 68:
               if(root.debug == false)
               {
                  root.debug = true;
                  break;
               }
               root.debug = false;
               break;
            case 32:
               root.forceAdvance = true;
               break;
            case 67:
               if(root.climaxPoint - root.climax > 6)
               {
                  root.climax = root.climaxPoint - 6;
                  break;
               }
               break;
            case 77:
               ++root.timesToArray["cum"];
               break;
            case 83:
               root.act.pokemonContainer.toggleAnimation();
               break;
            case 82:
               if(root.forceRepeat == true)
               {
                  root.forceRepeat = false;
                  break;
               }
               root.forceRepeat = true;
               break;
            case 70:
               ++root.cumArray["facial"];
               if(root.act.currentFrame > 2 && root.act.pokemonContainer.pokemon.head["cum"])
               {
                  root.act.pokemonContainer.pokemon.head.cum.gotoAndStop(root.cumArray["facial"]);
                  break;
               }
               if(root.act.currentFrame == 2)
               {
                  root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.facial.cum.gotoAndStop(root.cumArray["facial"]);
                  break;
               }
               break;
            case 87:
               root.cumHumanBelly = 1;
               tmp = root.cumArray["inside"];
               root.resetCum();
               root.cumArray["inside"] = tmp;
               break;
            case 88:
               if(root.internalView == true)
               {
                  root.internalView = false;
                  if(root.act.pokemonContainer.pokemon["internalMask"])
                  {
                     root.act.pokemonContainer.pokemon.internalMask.gotoAndStop(1);
                     break;
                  }
                  break;
               }
               root.internalView = true;
               if(root.act.pokemonContainer.pokemon["internalMask"])
               {
                  root.act.pokemonContainer.pokemon.internalMask.gotoAndStop(2);
                  break;
               }
               break;
         }
      }
      
      function frame1() : *
      {
         this.loadedPercent = 0;
         this.betaVersion = false;
         this.selectedMode = "...";
         this.tempPokedexMusicState = true;
         this.loaderInfo.addEventListener(Event.COMPLETE,function():void
         {
            playGame.visible = true;
            loadBar.visible = false;
         });
         this.loaderInfo.addEventListener(ProgressEvent.PROGRESS,this.onProgress);
         this.cxMenu = new ContextMenu();
         this.cxMenu.hideBuiltInItems();
         this.cxMenu.builtInItems.quality = true;
         this.cxMenu.builtInItems.zoom = true;
         this.contextMenu = this.cxMenu;
         this.playGame.addEventListener(MouseEvent.MOUSE_DOWN,this.selectMode.openSelectMode);
         this.playGame.addEventListener(MouseEvent.MOUSE_OVER,this.mouseOverButton);
         this.qControl.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            if(stage.quality == "HIGH")
            {
               stage.quality = StageQuality.LOW;
               root.pokedex.layout.screen.gear.qualityControl.gotoAndStop(1);
            }
            else if(stage.quality == "LOW")
            {
               stage.quality = StageQuality.MEDIUM;
               root.pokedex.layout.screen.gear.qualityControl.gotoAndStop(2);
            }
            else if(stage.quality == "MEDIUM")
            {
               stage.quality = StageQuality.HIGH;
               root.pokedex.layout.screen.gear.qualityControl.gotoAndStop(3);
            }
         });
         this.toggleSelect.buttonMode = true;
         this.toggleSelect.addEventListener(MouseEvent.MOUSE_DOWN,this.toggleMode);
         this.dialogXML = new XML(new this.Level1());
         this.pokemonXML = new XML(new this.Level2());
         this.plansXML = new XML(new this.Level3());
         this.rememberVolume = 1;
         this.musicMuted = false;
         this.soundMuted = false;
         this.sfxThrust4 = new thrust4();
         this.sfxLvlUp = new lvl_up();
         this.sfxCumArray = new Object();
         this.sfxCumArray["cum1"] = new cum1();
         this.sfxCumArray["cum2"] = new cum2();
         this.sfxCumArray["cum3"] = new cum3();
         this.sfxCumArray["cum4"] = new cum4();
         this.sfxCumArray["cum5"] = new cum5();
         this.sfxCumArray["cum6"] = new cum6();
         this.sfxCumArray["cum7"] = new cum7();
         this.sfxCumArray["cum8"] = new cum8();
         this.sfxCriesArray = new Object();
         this.sfxCriesArray["flareon"] = new cry_flareon();
         this.sfxCriesArray["glaceon"] = new cry_glaceon();
         this.sfxCriesArray["sylveon"] = new cry_sylveon();
         this.sfxCriesArray["liepard"] = new cry_liepard();
         this.sfxCriesArray["absol"] = new cry_absol();
         this.sfxCriesArray["delcatty"] = new cry_delcatty();
         this.sfxCriesArray["umbreon"] = new cry_umbreon();
         this.sfxCriesArray["ninetales"] = new cry_ninetales();
         this.sfxUIArray = new Object();
         this.sfxUIArray["choose"] = new uiChoose();
         this.sfxUIArray["select"] = new uiSelect();
         this.sfxUIArray["button1"] = new uiButton1();
         this.sfxUIArray["button2"] = new uiButton2();
         this.sfxUIArray["pokeball-out"] = new uiPokeballOut();
         this.sfxUIArray["pokeball-return"] = new uiPokeballReturn();
         this.musicArray = new Object();
         this.musicArray["title"] = new musicTitle();
         this.toggleMusic.addEventListener(MouseEvent.MOUSE_DOWN,this.toggleMusicChannel);
         root.intro.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            root.intro.gotoAndStop("end");
            root.intro.visible = false;
         });
         root.toggleDialogOverride.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            var loadDialogOverrideXML:URLLoader = null;
            var loadPokemonOverrideXML:URLLoader = null;
            var loadPlansOverrideXML:URLLoader = null;
            if(root.checkForOverride == false)
            {
               var processLoadFailed:* = function(param1:Event):void
               {
                  loadCheck.text = "Could not find files!";
               };
               var processDialogXML:* = function(param1:Event):void
               {
                  dialogXML = new XML(loadDialogOverrideXML.data);
                  if(dialogXML.meta.@loadCheck == "1")
                  {
                     loadCheck.text = "Files loaded successfully!";
                  }
                  else
                  {
                     loadCheck.text = "File not as expected!";
                  }
               };
               var processPokemonXML:* = function(param1:Event):void
               {
                  pokemonXML = new XML(loadPokemonOverrideXML.data);
               };
               var processPlansXML:* = function(param1:Event):void
               {
                  plansXML = new XML(loadPlansOverrideXML.data);
               };
               root.toggleDialogOverride.gotoAndStop(2);
               root.checkForOverride = true;
               dialogXMLSaveToMemory = cloneArray(dialogXML);
               loadDialogOverrideXML = new URLLoader();
               loadDialogOverrideXML.load(new URLRequest("mod/dialog.xml"));
               loadDialogOverrideXML.addEventListener(Event.COMPLETE,processDialogXML);
               loadDialogOverrideXML.addEventListener(IOErrorEvent.IO_ERROR,processLoadFailed);
               pokemonXMLSaveToMemory = cloneArray(pokemonXML);
               loadPokemonOverrideXML = new URLLoader();
               loadPokemonOverrideXML.load(new URLRequest("mod/pokemon.xml"));
               loadPokemonOverrideXML.addEventListener(Event.COMPLETE,processPokemonXML);
               loadPokemonOverrideXML.addEventListener(IOErrorEvent.IO_ERROR,processLoadFailed);
               plansXMLSaveToMemory = cloneArray(plansXML);
               loadPlansOverrideXML = new URLLoader();
               loadPlansOverrideXML.load(new URLRequest("mod/plans.xml"));
               loadPlansOverrideXML.addEventListener(Event.COMPLETE,processPlansXML);
               loadPlansOverrideXML.addEventListener(IOErrorEvent.IO_ERROR,processLoadFailed);
            }
            else
            {
               root.toggleDialogOverride.gotoAndStop(1);
               root.checkForOverride = false;
               dialogXML = dialogXMLSaveToMemory;
               pokemonXML = pokemonXMLSaveToMemory;
               plansXML = plansXMLSaveToMemory;
               loadCheck.text = "";
            }
            root.playSoundEffect(root.sfxUIArray["select"]);
         });
         root.patreon.addEventListener(MouseEvent.MOUSE_DOWN,function():void
         {
            navigateToURL(new URLRequest("http://www.patreon.com/squawkworks"),"_blank");
         });
         if(root.betaVersion == false)
         {
            this.intro.betaNote.visible = false;
         }
         root.toggleDialogOverride.gotoAndStop(1);
         root.toggleDialogOverride.buttonMode = true;
         this.selectMode.stop();
         stop();
      }
      
      function frame2() : *
      {
         this.dialogOverride = true;
         this.roundsOfSex = 1;
         this.firstLoop = true;
         this.dialogReady = true;
         this.diagBuffer = "...";
         this.currentSceneSelected = "...";
         this.enableSceneThoughts = true;
         if(root.checkForOverride == true)
         {
            this.tempXML = new URLLoader();
            this.tempXML.addEventListener(IOErrorEvent.IO_ERROR,this.noOverride);
            this.tempXML.load(new URLRequest("dialog-override.xml"));
         }
         else
         {
            root.dialogOverride = false;
         }
         root.musicArray["evolve"] = new musicEvolve();
         root.musicArray["showcase"] = new musicShowcase();
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
         root.transitionFX.gotoAndPlay("new-scene");
      }
      
      function frame3() : *
      {
         this.gameSettings = new Array();
         this.gameSettings["cumLoad"] = int(root.plansXML.global.cumLoad);
         this.gameSettings["cumLoadBonus"] = 0;
         this.timesToArray = new Array();
         this.timesHaveArray = new Array();
         this.roundsOfSexArray = new Array();
         this.doesDrool = true;
         this.cumArrayHuman = new Array();
         this.cumArrayHuman["pelvis"] = 1;
         this.cumArrayHuman["abdomen"] = 1;
         this.cumArray = new Array();
         this.cumTrackingArray = new Object();
         this.fireLit = true;
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.myKeyDown);
         root.act.stop();
         root.transitionFX.gotoAndPlay("open");
         root.pokedex.layout.screen.gotoAndPlay(2);
         root.musicArray["bedroom"] = new musicBedroom();
         if(root.musicMuted == false)
         {
            root.musicChannel.stop();
            root.musicChannel = root.musicArray["bedroom"].play(0,999);
            root.musicChannel.soundTransform = new SoundTransform(0.2);
         }
         else
         {
            root.musicChannel = root.musicArray["bedroom"].play(0,999);
            root.rememberVolume = 0.2;
            root.musicChannel.soundTransform = new SoundTransform(0);
         }
      }
   }
}
