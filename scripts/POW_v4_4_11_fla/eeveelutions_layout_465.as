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
   
   public dynamic class eeveelutions_layout_465 extends MovieClip
   {
       
      
      public var abdomen:MovieClip;
      
      public var butt:MovieClip;
      
      public var chest:MovieClip;
      
      public var creampie:MovieClip;
      
      public var cum3:MovieClip;
      
      public var feeler:MovieClip;
      
      public var groin:MovieClip;
      
      public var head:MovieClip;
      
      public var internalMask:MovieClip;
      
      public var leftEar:MovieClip;
      
      public var leftFoot:MovieClip;
      
      public var leftForearm:MovieClip;
      
      public var leftPaw:MovieClip;
      
      public var leftRibbon:MovieClip;
      
      public var leftThigh:MovieClip;
      
      public var leftUpperArm:MovieClip;
      
      public var legLeft:MovieClip;
      
      public var legRight:MovieClip;
      
      public var neck:MovieClip;
      
      public var neckTuft:MovieClip;
      
      public var pelvis:MovieClip;
      
      public var rightEar:MovieClip;
      
      public var rightFoot:MovieClip;
      
      public var rightForearm:MovieClip;
      
      public var rightPaw:MovieClip;
      
      public var rightRibbon:MovieClip;
      
      public var rightThigh:MovieClip;
      
      public var rightUpperArm:MovieClip;
      
      public var tailContainer:MovieClip;
      
      public var torso:MovieClip;
      
      public var flareonLvlUpPoint:int;
      
      public var sequenceOptionsArray:Object;
      
      public function eeveelutions_layout_465()
      {
         super();
      }
      
      public function bodySwap(param1:int) : void
      {
         root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.blushLayout.stop();
         if(this["rightUpperArm"])
         {
            this.rightUpperArm.gotoAndStop(param1);
         }
         if(this["leftUpperArm"])
         {
            this.leftUpperArm.gotoAndStop(param1);
         }
         if(this["rightForearm"])
         {
            this.rightForearm.gotoAndStop(param1);
         }
         if(this["leftForearm"])
         {
            this.leftForearm.gotoAndStop(param1);
         }
         if(this["rightPaw"])
         {
            this.rightPaw.gotoAndStop(param1);
         }
         if(this["leftPaw"])
         {
            this.leftPaw.gotoAndStop(param1);
         }
         if(this["rightEar"])
         {
            this.rightEar.gotoAndStop(param1);
         }
         if(this["leftEar"])
         {
            this.leftEar.gotoAndStop(param1);
         }
         if(this["neck"])
         {
            this.neck.gotoAndStop(param1);
         }
         if(this["neckTuft"])
         {
            this.neckTuft.gotoAndStop(param1);
         }
         if(this["torso"])
         {
            this.torso.gotoAndStop(param1);
         }
         if(this["groin"])
         {
            this.groin.gotoAndStop(param1);
         }
         if(this["head"])
         {
            this.head.gotoAndStop(param1);
         }
         if(this.head["facialFeatures"])
         {
            this.head.facialFeatures.gotoAndStop(param1);
         }
         if(this.head.facialFeatures.facialLayout["hairContainer"])
         {
            this.head.facialFeatures.facialLayout.hairContainer.gotoAndStop(param1);
         }
         if(this.head.facialFeatures.facialLayout["bridge"])
         {
            this.head.facialFeatures.facialLayout.bridge.gotoAndStop(param1);
         }
         if(this.head.facialFeatures.facialLayout["nose"])
         {
            this.head.facialFeatures.facialLayout.nose.gotoAndStop(param1);
         }
         if(this.head.facialFeatures.facialLayout.blushLayout["blushContainer"])
         {
            this.head.facialFeatures.facialLayout.blushLayout.blushContainer.gotoAndStop(param1);
         }
         if(this.head.facialFeatures.facialLayout["eyesContainer"])
         {
            this.head.facialFeatures.facialLayout.eyesContainer.gotoAndStop(param1);
         }
         if(this.head.facialFeatures.facialLayout.eyesContainer.eyes["eyeMask"])
         {
            this.head.facialFeatures.facialLayout.eyesContainer.eyes.eyeMask.gotoAndStop(param1);
         }
         if(this.head.facialFeatures.facialLayout.eyesContainer.eyes["eyePupilRight"])
         {
            this.head.facialFeatures.facialLayout.eyesContainer.eyes.eyePupilRight.gotoAndStop(param1);
         }
         if(this.head.facialFeatures.facialLayout.eyesContainer.eyes["eyePupilLeft"])
         {
            this.head.facialFeatures.facialLayout.eyesContainer.eyes.eyePupilLeft.gotoAndStop(param1);
         }
         if(this.head.facialFeatures.facialLayout.eyesContainer.eyes["eyesBG"])
         {
            this.head.facialFeatures.facialLayout.eyesContainer.eyes.eyesBG.gotoAndStop(param1);
         }
         if(this.head.facialFeatures.facialLayout.eyesContainer.eyes["eyelidContainer"])
         {
            this.head.facialFeatures.facialLayout.eyesContainer.eyes.eyelidContainer.gotoAndStop(param1);
         }
         if(this.head.facialFeatures.facialLayout.mouthLayout["mouthContainer"])
         {
            this.head.facialFeatures.facialLayout.mouthLayout.mouthContainer.gotoAndStop(param1);
         }
         if(this.head.facialFeatures.facialLayout["mouthLayout"])
         {
            this.head.facialFeatures.facialLayout.mouthLayout.gotoAndPlay(1);
         }
         if(this["rightRibbon"])
         {
            this.rightRibbon.gotoAndStop(param1);
         }
         if(this["leftRibbon"])
         {
            this.leftRibbon.gotoAndStop(param1);
         }
         if(this["rightThigh"])
         {
            this.rightThigh.gotoAndStop(param1);
         }
         if(this["leftThigh"])
         {
            this.leftThigh.gotoAndStop(param1);
         }
         if(this["rightFoot"])
         {
            this.rightFoot.gotoAndStop(param1);
         }
         if(this["leftFoot"])
         {
            this.leftFoot.gotoAndStop(param1);
         }
         if(this["butt"])
         {
            this.butt.gotoAndStop(param1);
         }
         if(this["tailContainer"])
         {
            this.tailContainer.gotoAndStop(param1);
         }
         if(this.head.facialFeatures.facialLayout["facial"])
         {
            this.head.facialFeatures.facialLayout.facial.gotoAndStop(param1);
         }
         if(this["feeler"])
         {
            this.feeler.gotoAndStop(param1);
         }
         if(this["legLeft"])
         {
            this.legLeft.gotoAndStop(param1);
         }
         if(this["legRight"])
         {
            this.legRight.gotoAndStop(param1);
         }
         root.calculateVaginalCapacity();
         root.pokedex.updatePokedexSemenScan(root.cumArray["inside"],root.vaginalCapacityMax);
      }
      
      public function cumNow() : void
      {
         if(root.timesToArray["cum"] <= 4)
         {
            switch(root.timesHaveArray["cum"])
            {
               case 0:
                  root.act.pokemonContainer.pokemon.cum3.gotoAndPlay("cum1");
                  break;
               case 1:
                  root.act.pokemonContainer.pokemon.cum3.gotoAndPlay("cum2");
                  break;
               case 2:
                  root.act.pokemonContainer.pokemon.cum3.gotoAndPlay("cum3");
                  break;
               case 3:
                  root.act.pokemonContainer.pokemon.cum3.gotoAndPlay("cum" + this.pickSequence("cum"));
            }
         }
         else
         {
            root.act.pokemonContainer.pokemon.cum3.gotoAndPlay("cum" + this.pickSequence("cum"));
         }
         root.playCumSound();
         ++root.timesHaveArray["cum"];
         root.cumArray["inside"] += root.gameSettings["cumLoad"];
         root.cumArray["groin"] += 2;
         ++root.cumArray["thighLeft"];
         ++root.cumArray["thighRight"];
         if(root.timesHaveArray["cum"] >= root.timesToArray["cum"])
         {
            root.cumming = false;
            root.timesHaveArray["cum"] = 0;
            root.climax = 0;
            root.pokemonArousal = 0;
            ++root.roundsOfSex;
            root.roundsOfSexArray[root.currentPokemonSelected] = root.roundsOfSex;
            root.justCame = true;
            root.act.blackout.gotoAndPlay("end");
            root.roundComment = false;
            root.timesHaveArray["shimmy"] = root.timesToArray["shimmy"];
            if(root.drooling == true)
            {
               root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.mouthLayout.gotoAndPlay("clean");
               root.drooling = false;
            }
            this.checkSpecials();
            if(root.readyToDeblush == true)
            {
               root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.blushLayout.gotoAndPlay("deblush");
            }
         }
         root.renderMess();
         if(root.timesHaveArray["cum"] == 10)
         {
            root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.eyesContainer.eyes.gotoAndStop("eyes4");
            root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.mouthLayout.gotoAndPlay("clean");
         }
         else if(root.timesHaveArray["cum"] == 12)
         {
            root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.eyesContainer.eyes.gotoAndStop("closed");
            if(root.doesDrool == true)
            {
               root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.mouthLayout.gotoAndPlay("drooling");
            }
         }
         else if(root.timesHaveArray["cum"] == 15)
         {
            root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.eyesContainer.eyes.gotoAndStop("eyes4");
         }
         else if(root.timesHaveArray["cum"] > 19)
         {
            root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.eyesContainer.eyes.gotoAndStop("closed");
            if(root.timesHaveArray["cum"] == 20)
            {
               root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.mouthLayout.gotoAndPlay("clean");
               root.drooling = false;
            }
         }
         if(root.timesHaveArray["cum"] > 70 && root.timesHaveArray["cum"] % 11 == 0)
         {
            root.thinkThought("himCheatCumming");
            root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.mouthLayout.gotoAndPlay("smirk");
         }
         else if(root.timesHaveArray["cum"] > 10 && root.timesHaveArray["cum"] % 11 == 0)
         {
            root.thinkThought("himStillCumming");
         }
         root.pokedex.updatePokedexSemenScan(root.cumArray["inside"],root.vaginalCapacityMax);
      }
      
      public function finishSequence(param1:*, param2:*, param3:*) : void
      {
         if(root.sequenceStarted == false)
         {
            root.sequenceStarted = true;
            ++root.timesHaveArray[param1];
            if(root.debug == true)
            {
               trace(root.timesHaveArray[param1] + "/" + root.timesToArray[param1] + ", cum inside: " + root.cumArray["inside"]);
            }
            ++root.climax;
            this.processPokemonArousal(1);
            root.checkBlackOut(param3);
            if(root.spilling == false)
            {
               this.checkSpill(25);
            }
            root.renderMess();
            root.pokedex.updatePokedexSemenScan(root.cumArray["inside"],root.vaginalCapacityMax);
            if(root.forceRepeat == true || root.forceAdvance == false && root.timesHaveArray[param1] < root.timesToArray[param1] && root.climax < root.climaxPoint)
            {
               i = this.pickSequence(param1);
               root.act.pokemonContainer.pokemon.gotoAndPlay(param1 + i);
            }
            else
            {
               root.timesHaveArray[param1] = 0;
               if(root.climax >= root.climaxPoint)
               {
                  root.cumming = true;
                  root.act.pokemonContainer.pokemon.gotoAndPlay(param1 + "-to-shimmy");
               }
               else
               {
                  root.act.pokemonContainer.pokemon.gotoAndPlay(param1 + "-to-" + param2);
               }
            }
         }
      }
      
      public function pickSequence(param1:*) : int
      {
         return root.pickRandom(this.sequenceOptionsArray[param1] - 1) + 1;
      }
      
      public function processPokemonArousal(param1:int) : void
      {
         root.pokemonArousal += param1;
         if(root.pokemonArousal >= root.pokemonArousalPoint)
         {
            if(root.pokemonArousal >= root.pokemonArousalPoint * 1.3)
            {
               root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.eyesContainer.eyes.gotoAndStop("closed");
            }
            else
            {
               root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.eyesContainer.eyes.gotoAndStop("one-eye");
            }
         }
         else if(root.pokemonArousal >= root.pokemonArousalPoint * 0.5 && root.drooling == false)
         {
            if(root.doesDrool == true)
            {
               root.drooling = true;
               root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.mouthLayout.gotoAndPlay("drooling");
            }
            else
            {
               root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.mouthLayout.mouthContainer.mouth.gotoAndPlay("panting");
            }
         }
         else if(root.pokemonArousal >= root.pokemonArousalPoint * 0.3 && root.blushing == false)
         {
            root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.blushLayout.gotoAndPlay("blush");
            root.blushing = true;
         }
      }
      
      public function checkSpill(param1:int) : void
      {
         if(root.cumArray["inside"] > 150 && root.rollChance(param1 * 2) || root.cumArray["inside"] > 40 && root.rollChance(param1))
         {
            param1 = this.pickSequence("spill");
            root.act.pokemonContainer.pokemon.pelvis.spill.gotoAndPlay("spill" + param1);
            root.spilling = true;
            --root.cumArray["inside"];
         }
      }
      
      public function finishSpill() : void
      {
         root.spilling = false;
         this.pelvis.spill.gotoAndStop(1);
         ++root.cumArrayHuman["pelvis"];
         ++root.cumArray["groin"];
         root.renderMess();
      }
      
      public function checkSpecials() : void
      {
         if(root.currentPokemonSelected == 1 && root.roundsOfSex == this.flareonLvlUpPoint)
         {
            root.levelUp.gotoAndPlay(2);
            root.transVolume = root.randomVolume(20,20);
            root.playSoundEffect(root.sfxLvlUp,root.transVolume);
         }
      }
      
      public function createPlan() : void
      {
         root.timesToArray["preHump"] = root.pickRandom(8) + 3;
         root.timesHaveArray["preHump"] = 0;
         root.timesToArray["slow"] = root.pickRandom(15) + 30;
         root.timesHaveArray["slow"] = 0;
         root.timesToArray["fast"] = root.pickRandom(40) + 30;
         root.timesHaveArray["fast"] = 0;
         root.timesToArray["shimmy"] = root.pickRandom(10) + 5;
         root.timesHaveArray["shimmy"] = 0;
         root.timesToArray["cum"] = root.pickRandom(3) + 3;
         root.timesHaveArray["cum"] = 0;
         root.climaxPoint = root.pickRandom(40) + 70;
         root.pokemonArousalPoint = Math.round(root.climaxPoint * (root.pickRandom(20) / 100 + 0.6));
      }
      
      function frame1() : *
      {
         this.flareonLvlUpPoint = 6;
         this.sequenceOptionsArray = {
            "slow":3,
            "fast":4,
            "cum":3,
            "spill":3
         };
         this.internalMask.gotoAndStop(1);
         this.creampie.gotoAndStop(1);
         this.head.facialFeatures.facialLayout.facial.gotoAndStop(1);
         this.head.facialFeatures.facialLayout.gotoAndStop(1);
         this.groin.cumLower.gotoAndStop(1);
         this.rightThigh.cum.gotoAndStop(1);
         this.leftThigh.cum.gotoAndStop(1);
         this.pelvis.cum.gotoAndStop(1);
         root.act.bg.sheets.restingPokemon.stop();
         root.resetCum();
      }
      
      function frame2() : *
      {
         root.renderMess();
         this.head.facialFeatures.facialLayout.gotoAndStop("still");
         if(root.firstLoop == true)
         {
            this.createPlan();
            root.resetRound();
            root.thinkThought("idle",100,"previousComment");
            if(root.pokemonSelected != root.currentPokemonSelected)
            {
               root.transitionFX.gotoAndPlay(2);
            }
         }
         if(root.spilling == false)
         {
            this.checkSpill(33);
         }
      }
      
      function frame29() : *
      {
         ++root.timesHaveArray["preHump"];
         root.checkBlackOut(5);
         if(root.forceRepeat == true || root.forceAdvance == false && root.timesHaveArray["preHump"] < root.timesToArray["preHump"] && root.climax < root.climaxPoint)
         {
            gotoAndPlay("idle");
         }
         else
         {
            root.timesHaveArray["preHump"] = 0;
            if(root.climax >= root.climaxPoint)
            {
               root.cumming = true;
               gotoAndPlay("shimmy");
            }
         }
      }
      
      function frame73() : *
      {
         root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.gotoAndPlay("bounce");
         root.thinkThought("round",0,"roundComment");
      }
      
      function frame74() : *
      {
         if(root.timesHaveArray["slow"] == 0)
         {
            root.act.bg.sheets.gotoAndPlay("bounce");
            root.forceAdvance = false;
            if(root.drooling == true)
            {
               root.drooling = false;
               root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.mouthLayout.gotoAndPlay("clean");
            }
         }
         if(root.climaxPoint - root.climax > 10)
         {
            root.thinkThought("slow",50,"cumComment");
         }
      }
      
      function frame87() : *
      {
         root.sequenceStarted = false;
      }
      
      function frame88() : *
      {
         this.finishSequence("slow","fast",5);
      }
      
      function frame101() : *
      {
         root.sequenceStarted = false;
      }
      
      function frame102() : *
      {
         this.finishSequence("slow","fast",5);
      }
      
      function frame113() : *
      {
         root.sequenceStarted = false;
      }
      
      function frame114() : *
      {
         this.finishSequence("slow","fast",5);
      }
      
      function frame121() : *
      {
         if(root.timesHaveArray["fast"] == 0)
         {
            root.forceAdvance = false;
         }
         root.transVolume = root.randomVolume(10,5);
         root.playSoundEffect(root.sfxThrust4,root.transVolume);
         if(root.climaxPoint - root.climax > 16)
         {
            root.thinkThought("fast",50);
         }
      }
      
      function frame129() : *
      {
         root.sequenceStarted = false;
      }
      
      function frame130() : *
      {
         this.finishSequence("fast","shimmy",6);
         root.transVolume = root.randomVolume(10,5);
         root.playSoundEffect(root.sfxThrust4,root.transVolume);
      }
      
      function frame139() : *
      {
         root.sequenceStarted = false;
      }
      
      function frame140() : *
      {
         this.finishSequence("fast","shimmy",6);
         root.transVolume = root.randomVolume(10,5);
         root.playSoundEffect(root.sfxThrust4,root.transVolume);
      }
      
      function frame147() : *
      {
         root.sequenceStarted = false;
      }
      
      function frame148() : *
      {
         this.finishSequence("fast","shimmy",6);
         root.transVolume = root.randomVolume(10,5);
         root.playSoundEffect(root.sfxThrust4,root.transVolume);
      }
      
      function frame158() : *
      {
         root.sequenceStarted = false;
      }
      
      function frame159() : *
      {
         this.finishSequence("fast","shimmy",6);
      }
      
      function frame165() : *
      {
         root.act.bg.sheets.gotoAndPlay("still");
         if(root.forceAdvance == true)
         {
            root.forceAdvance = false;
         }
         root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.eyesContainer.eyes.gotoAndPlay(1);
      }
      
      function frame169() : *
      {
         root.act.bg.sheets.gotoAndPlay("still");
         if(root.cumming == true)
         {
            if(root.blushing == false)
            {
               this.head.facialFeatures.facialLayout.blushLayout.gotoAndPlay("blush");
            }
            if(root.timesToArray["cum"] > 4 && root.cumStage == 1)
            {
               gotoAndPlay("cumming-hard");
            }
            else
            {
               this.cumNow();
            }
            if(root.spilling == false)
            {
               this.checkSpill(50);
            }
         }
      }
      
      function frame198() : *
      {
         ++root.timesHaveArray["shimmy"];
         ++root.climax;
         root.checkBlackOut(3);
         if(root.timesHaveArray["cum"] == 1)
         {
            root.thinkThought("himCumming");
         }
         else if(root.climaxPoint - root.climax > 10 && root.justCame == false && root.cumming == false)
         {
            root.thinkThought("shimmy",16);
         }
         if(root.forceRepeat == true || (root.forceAdvance == false && root.timesHaveArray["shimmy"] < root.timesToArray["shimmy"] && root.climax < root.climaxPoint || root.cumming == true))
         {
            gotoAndPlay("shimmy");
         }
         else if(root.climax >= root.climaxPoint)
         {
            root.cumming = true;
            root.timesToArray["shimmy"] = root.timesToArray["shimmy"] + root.timesToArray["cum"] + 1;
            gotoAndPlay("shimmy");
         }
         else if(root.justCame == true)
         {
            root.firstLoop = true;
            root.timesHaveArray["shimmy"] = 0;
            this.head.facialFeatures.facialLayout.eyesContainer.eyes.gotoAndPlay(1);
            gotoAndPlay("shimmy-to-start");
         }
         else
         {
            root.timesHaveArray["shimmy"] = 0;
            this.head.facialFeatures.facialLayout.eyesContainer.eyes.gotoAndPlay(1);
            gotoAndPlay("shimmy-to-slow");
         }
      }
      
      function frame199() : *
      {
         root.renderMess();
         if(root.drooling == false && root.doesDrool == true)
         {
            root.drooling = true;
            this.head.facialFeatures.facialLayout.mouthLayout.gotoAndPlay("drooling");
         }
      }
      
      function frame203() : *
      {
         if(root.cumStage == 1)
         {
            root.thinkThought("himCumming");
         }
      }
      
      function frame212() : *
      {
         if(root.cumStage < 3)
         {
            gotoAndPlay("hip-down");
         }
         else if(root.cumStage == 3)
         {
            this.cumNow();
            this.head.facialFeatures.facialLayout.eyesContainer.eyes.gotoAndPlay("one-eye");
            this.head.alert.gotoAndPlay(2);
         }
      }
      
      function frame223() : *
      {
         if(root.cumStage == 3)
         {
            this.cumNow();
         }
      }
      
      function frame236() : *
      {
         if(root.cumStage == 3)
         {
            this.cumNow();
         }
      }
      
      function frame254() : *
      {
         if(root.cumStage == 3)
         {
            this.cumNow();
         }
      }
      
      function frame261() : *
      {
         if(root.cumStage < 3)
         {
            ++root.cumStage;
            gotoAndPlay("hip-up");
         }
      }
      
      function frame273() : *
      {
         this.head.facialFeatures.facialLayout.eyesContainer.eyes.gotoAndPlay("eyes1");
         gotoAndPlay("shimmy");
      }
      
      function frame274() : *
      {
         root.renderMess();
      }
      
      function frame299() : *
      {
         gotoAndPlay("idle");
      }
      
      function frame305() : *
      {
         gotoAndPlay("shimmy");
      }
      
      function frame310() : *
      {
         gotoAndPlay("slow1");
      }
   }
}
