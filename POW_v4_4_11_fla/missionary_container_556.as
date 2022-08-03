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
   
   public dynamic class missionary_container_556 extends MovieClip
   {
       
      
      public var pokemon:MovieClip;
      
      public var missionaryActs:Array;
      
      public var sequenceStarted:String;
      
      public var pullOut:Boolean;
      
      public var triggerCreampie:Boolean;
      
      public var headState:String;
      
      public function missionary_container_556()
      {
         super();
      }
      
      public function finishSequence(param1:String) : void
      {
         var sequenceFinished:String = param1;
         if(this.sequenceStarted == sequenceFinished)
         {
            if(root.pokemonSelected != root.currentPokemonSelected && root.switchingPokemon == false)
            {
               this.transitionPokemon();
            }
            ++root.timesHaveArray[sequenceFinished];
            if(root.debug == true)
            {
               trace(sequenceFinished + ": " + root.timesHaveArray[sequenceFinished] + "/" + root.timesToArray[sequenceFinished]);
            }
            ++root.climax;
            if(this.sequenceStarted == "slow" || this.sequenceStarted == "medium" || this.sequenceStarted == "fast")
            {
               root.checkBlackOut(6);
               if(root.forceRepeat == false && (root.climax >= root.climaxPoint && root.cumming == false))
               {
                  root.timesHaveArray[sequenceFinished] = 0;
                  root.forceAdvance = false;
                  this.sequenceStarted = "cum";
                  root.cumming = true;
                  this.pokemon.gotoAndPlay("cum-start");
               }
            }
            if((root.forceAdvance == true || root.timesHaveArray[sequenceFinished] >= root.timesToArray[sequenceFinished]) && root.forceRepeat == false)
            {
               root.timesHaveArray[sequenceFinished] = 0;
               root.forceAdvance = false;
               if(sequenceFinished == "idle")
               {
                  this.sequenceStarted = "slow";
                  this.pokemon.chest.gotoAndPlay("breathing");
                  this.pokemon.gotoAndPlay("penetrate");
               }
               else if(sequenceFinished == "slow")
               {
                  this.sequenceStarted = "medium";
                  this.pokemon.gotoAndPlay("medium");
               }
               else if(sequenceFinished == "medium")
               {
                  this.sequenceStarted = "fast";
                  this.pokemon.gotoAndPlay("fast");
               }
               else if(sequenceFinished == "fast")
               {
                  this.sequenceStarted = "slow";
                  this.pokemon.gotoAndPlay("slow");
               }
               else if(sequenceFinished == "cum")
               {
                  this.pokemon.blackout.gotoAndPlay("end");
                  root.climax = 0;
                  this.sequenceStarted = "afterglow";
                  var _loc4_:int = 0;
                  var _loc5_:* = §§checkfilter(root.plansXML.plan);
                  var _loc3_:* = new XMLList("");
                  §§push(§§findproperty(int));
                  root.plansXML.plan.(@act == "missionary");
                  if(§§pop().rollChance(root.int(_loc3_.climax.pullOutDuringChance)))
                  {
                     this.pokemon.gotoAndPlay("cum-out");
                  }
               }
               else if(sequenceFinished == "afterglow")
               {
                  ++root.roundsOfSex;
                  root.roundsOfSexArray[root.currentPokemonSelected] = root.roundsOfSex;
                  root.pokemonArousal = root.roundsOfSex;
                  root.resetRound();
                  root.createPlan("missionary",this.missionaryActs);
                  _loc4_ = 0;
                  _loc5_ = §§checkfilter(root.plansXML.plan);
                  _loc3_ = new XMLList("");
                  §§push(§§findproperty(int));
                  root.plansXML.plan.(@act == "missionary");
                  if(§§pop().rollChance(root.int(_loc3_.climax.pullOutAfterChance)))
                  {
                     this.pullOut = true;
                     this.sequenceStarted = "idle";
                     this.pokemon.chest.gotoAndPlay("heaving");
                     this.pokemon.gotoAndPlay(sequenceFinished);
                  }
                  else
                  {
                     this.sequenceStarted = "slow";
                     this.pokemon.gotoAndPlay("slow");
                  }
               }
            }
            else
            {
               if(sequenceFinished == "idle")
               {
                  this.processPokemonArousal(0);
               }
               else if(sequenceFinished == "afterglow")
               {
                  this.processPokemonArousal(0);
                  _loc4_ = 0;
                  _loc5_ = §§checkfilter(root.plansXML.plan);
                  _loc3_ = new XMLList("");
                  §§push(§§findproperty(int));
                  root.plansXML.plan.(@act == "missionary");
                  if(§§pop().rollChance(root.int(_loc3_.climax.afterglowCumChance)))
                  {
                     ++root.cumBonus;
                  }
               }
               else if(sequenceFinished == "slow")
               {
                  this.processPokemonArousal(1);
                  if(root.cumArray["inside"] > root.vaginalCapacityMin / 2 && root.rollChance(20) || root.cumArray["inside"] >= root.vaginalCapacityMin && root.rollChance(50) || root.cumArray["inside"] > root.vaginalCapacityMax && root.rollChance(75))
                  {
                     root.cumArray["inside"] -= 9;
                     ++root.cumArray["groin"];
                  }
                  root.thinkThought("round",0,"roundComment");
                  _loc4_ = 0;
                  _loc5_ = §§checkfilter(root.plansXML.plan);
                  _loc3_ = new XMLList("");
                  §§push(§§findproperty(int));
                  root.plansXML.plan.(@act == "missionary");
                  §§pop().thinkThought(root,"slow".int(_loc3_.sequences.slow.thoughtChance),"cumComment");
               }
               else if(sequenceFinished == "medium")
               {
                  this.processPokemonArousal(1);
                  if(root.cumArray["inside"] > root.vaginalCapacityMin / 2 && root.rollChance(15) || root.cumArray["inside"] >= root.vaginalCapacityMin && root.rollChance(60) || root.cumArray["inside"] > root.vaginalCapacityMax && root.rollChance(75))
                  {
                     root.cumArray["inside"] -= 9;
                     ++root.cumArray["groin"];
                  }
                  _loc4_ = 0;
                  _loc5_ = §§checkfilter(root.plansXML.plan);
                  _loc3_ = new XMLList("");
                  §§push(§§findproperty(int));
                  root.plansXML.plan.(@act == "missionary");
                  §§pop().thinkThought(root,"medium".int(_loc3_.sequences.medium.thoughtChance));
               }
               else if(sequenceFinished == "fast")
               {
                  this.processPokemonArousal(1);
                  if(root.cumArray["inside"] > root.vaginalCapacityMin / 2 && root.rollChance(10) || root.cumArray["inside"] >= root.vaginalCapacityMin && root.rollChance(75) || root.cumArray["inside"] > root.vaginalCapacityMax && root.rollChance(80))
                  {
                     root.cumArray["inside"] -= 9;
                     ++root.cumArray["groin"];
                  }
                  _loc4_ = 0;
                  _loc5_ = §§checkfilter(root.plansXML.plan);
                  _loc3_ = new XMLList("");
                  §§push(§§findproperty(int));
                  root.plansXML.plan.(@act == "missionary");
                  §§pop().thinkThought(root,"fast".int(_loc3_.fast.thoughtChance));
               }
               else if(sequenceFinished == "cum")
               {
                  this.processPokemonArousal(5);
                  root.forceRepeat = false;
                  if(root.timesHaveArray["cum"] == 1)
                  {
                     root.thinkThought("himCumming");
                  }
                  else if(root.timesHaveArray["cum"] > 50)
                  {
                     if(root.rollChance(10))
                     {
                        root.thinkThought("himCheatCumming");
                     }
                  }
                  else if(root.timesHaveArray["cum"] > 5 && root.rollChance(20))
                  {
                     root.thinkThought("himStillCumming");
                  }
               }
               if(root.cumArray["groin"] < 16 && root.rollChance(33))
               {
                  ++root.cumArray["groin"];
               }
               root.renderMess();
               root.pokedex.updatePokedexSemenScan(root.cumArray["inside"],root.vaginalCapacityMax);
               this.pokemon.gotoAndPlay(sequenceFinished);
            }
         }
      }
      
      public function processPokemonArousal(param1:int = 1) : void
      {
         root.pokemonArousal += param1;
         if(root.pokemonArousal >= root.pokemonArousalPoint * 0.5)
         {
            this.headState = "aroused";
         }
         else if(root.pokemonArousal < root.pokemonArousalPoint * 0.5)
         {
            this.headState = "normal";
         }
         if(root.pokemonArousal >= root.pokemonArousalPoint && root.blushing == false)
         {
            this.processBlush(true);
         }
         else if(root.pokemonArousal < root.pokemonArousalPoint && root.blushing == true && root.readyToDeblush == true)
         {
            this.processBlush(false);
         }
         chance = 0;
         if(this.sequenceStarted == "slow")
         {
            chance += 10;
         }
         else if(this.sequenceStarted == "idle")
         {
            chance += 50;
         }
         else if(this.sequenceStarted == "afterglow")
         {
            chance += 25;
         }
         if(root.cumArray["groin"] > 70)
         {
            chance += 15;
         }
         if(root.cumArray["groin"] > 20)
         {
            chance += 5;
         }
         tmp = root.roundsOfSex * 3;
         if(tmp > 15)
         {
            tmp = 15;
         }
         chance += tmp;
         if(root.rollChance(chance))
         {
            this.headState = "looking";
         }
      }
      
      public function processBlush(param1:Boolean) : void
      {
         if(param1 == false)
         {
            if(this.pokemon.head["blush"])
            {
               this.pokemon.head.blush.gotoAndPlay("deblush");
            }
            if(this.pokemon.head["blushLeft"])
            {
               this.pokemon.head.blushLeft.gotoAndPlay("deblush");
            }
            if(this.pokemon.head["blushRight"])
            {
               this.pokemon.head.blushRight.gotoAndPlay("deblush");
            }
         }
         else
         {
            if(this.pokemon.head["blush"])
            {
               this.pokemon.head.blush.gotoAndPlay("blush");
            }
            if(this.pokemon.head["blushLeft"])
            {
               this.pokemon.head.blushLeft.gotoAndPlay("blush");
            }
            if(this.pokemon.head["blushRight"])
            {
               this.pokemon.head.blushRight.gotoAndPlay("blush");
            }
         }
      }
      
      public function cumNow(param1:int = 0) : void
      {
         var cumSquirtInstance:* = undefined;
         var cumBonusNeeded:int = param1;
         if(root.cumBonus >= cumBonusNeeded && (cumBonusNeeded < 2 || cumBonusNeeded > 1 && root.rollChance(40)))
         {
            root.cumArray["inside"] += root.gameSettings["cumLoad"] + root.gameSettings["cumLoadBonus"];
            root.playCumSound();
            if(root.cumArray["inside"] >= root.vaginalCapacityMin)
            {
               root.cumArray["inside"] -= 3;
               this.pokemon.pussy.cumOverflow.play();
            }
            if(root.cumArray["inside"] >= root.vaginalCapacityMax * 0.5 && root.cumArray["inside"] < root.vaginalCapacityMax * 1.5 && root.rollChance(50) || root.cumArray["inside"] >= root.vaginalCapacityMax * 1.5 && root.rollChance(80))
            {
               rand = root.pickRandom(1);
               switch(rand)
               {
                  case 0:
                     cumSquirtInstance = new cumSquirt1();
                     side = "Left";
                     break;
                  case 1:
                     cumSquirtInstance = new cumSquirt2();
                     side = "Right";
               }
               cumSquirtInstance.x = 0;
               cumSquirtInstance.y = 0;
               root.cumArray["inside"] -= 6;
               this.pokemon.cumSquirt.addChild(cumSquirtInstance);
               cumSquirtInstance.addFrameScript(cumSquirtInstance.totalFrames - 1,function onLastFrame():void
               {
                  cumSquirtInstance.stop();
                  pokemon.cumSquirt.removeChild(cumSquirtInstance);
                  cumSquirtInstance = null;
                  ++root.cumArray["thigh" + side];
                  if(root.rollChance(40))
                  {
                     ++root.cumArray["groin"];
                  }
                  root.renderMess();
               });
            }
            root.pokedex.updatePokedexSemenScan(root.cumArray["inside"],root.vaginalCapacityMax);
         }
      }
      
      public function cumOutsideNow(param1:int) : void
      {
         var cumShootInstance:* = undefined;
         var x:int = param1;
         root.playCumSound();
         root.thinkThought("himCummingOnMe");
         switch(x)
         {
            case 1:
               cumShootInstance = new cumShoot1();
               cumLocation = "chest";
               break;
            case 2:
               cumShootInstance = new cumShoot2();
               cumLocation = "chest";
               break;
            case 3:
               cumShootInstance = new cumShoot3();
               cumLocation = "belly";
               break;
            case 4:
               cumShootInstance = new cumShoot4();
               cumLocation = "belly";
         }
         if(x < 3)
         {
            this.pokemon.pelvis.penis.gotoAndPlay("twitch1");
         }
         else
         {
            this.pokemon.pelvis.penis.gotoAndPlay("twitch2");
         }
         cumShootInstance.x = 0;
         cumShootInstance.y = 0;
         this.pokemon.cumShoot.addChild(cumShootInstance);
         cumShootInstance.addFrameScript(10,function onMessFrame():void
         {
            ++root.cumArray[cumLocation];
            root.renderMess();
         });
         cumShootInstance.addFrameScript(cumShootInstance.totalFrames - 1,function onLastFrame():void
         {
            cumShootInstance.stop();
            pokemon.cumShoot.removeChild(cumShootInstance);
            cumShootInstance = null;
         });
      }
      
      public function transitionPokemon() : *
      {
         root.blushing = false;
         root.readyToDeblush = false;
         root.blackingOut = false;
         root.switchingPokemon = true;
         root.transitionFX.gotoAndPlay(2);
      }
      
      public function renderWebs() : void
      {
         if(root.cumArray["groin"] > 74)
         {
            this.pokemon.groin.cumWebs.gotoAndStop(4);
         }
         else if(root.cumArray["groin"] > 34)
         {
            this.pokemon.groin.cumWebs.gotoAndStop(3);
         }
         else if(root.cumArray["groin"] > 14)
         {
            this.pokemon.groin.cumWebs.gotoAndStop(2);
         }
      }
      
      public function renderCumDrip() : void
      {
         var cumDripInstance:* = undefined;
         if(root.cumArray["inside"] && this.pokemon.pussy.cumPuddle.currentFrame == 1 || (root.cumArray["inside"] >= root.vaginalCapacityMax || root.cumArray["inside"] >= root.vaginalCapacityMin && root.rollChance(50)))
         {
            if(root.cumArray["inside"] < root.vaginalCapacityMax)
            {
               cumDripInstance = new cumDrip1();
               var _loc3_:int = 0;
               var _loc4_:* = §§checkfilter(root.plansXML.plan);
               var _loc2_:* = new XMLList("");
               §§push(root.cumArray["inside"]);
               §§push(§§findproperty(int));
               root.plansXML.plan.(@act == "missionary");
               §§pop()[§§pop()] = root.cumArray - "inside".int(_loc2_.sequences.idle.cumDrainRate);
            }
            else
            {
               cumDripInstance = new cumDrip2();
               _loc3_ = 0;
               _loc4_ = §§checkfilter(root.plansXML.plan);
               _loc2_ = new XMLList("");
               §§push(root.cumArray["inside"]);
               §§push(§§findproperty(int));
               root.plansXML.plan.(@act == "missionary");
               §§pop()[§§pop()] = root.cumArray - "inside".int(_loc2_.sequences.idle.cumDrainRate) * 2;
            }
            cumDripInstance.x = 0;
            cumDripInstance.y = 0;
            this.pokemon.pussy.cumDrip.addChild(cumDripInstance);
            cumDripInstance.addFrameScript(cumDripInstance.totalFrames - 1,function onLastFrame():void
            {
               pokemon.pussy.cumPuddle.nextFrame();
               cumDripInstance.stop();
               cumDripInstance.parent.removeChild(cumDripInstance);
               cumDripInstance = null;
            });
            root.pokedex.updatePokedexSemenScan(root.cumArray["inside"],root.vaginalCapacityMax);
         }
      }
      
      public function toggleAnimation() : void
      {
         if(root.halted == true)
         {
            root.halted = false;
            this.pokemon.play();
            this.pokemon.head.play();
            this.pokemon.chest.play();
         }
         else
         {
            root.halted = true;
            this.pokemon.stop();
            this.pokemon.head.stop();
            this.pokemon.chest.stop();
         }
      }
      
      public function prepareMissionaryAnimation() : void
      {
         root.thinkThought("idle",100,null,true);
         root.createPlan("missionary",this.missionaryActs);
         root.calculateVaginalCapacity();
         this.pokemon.rightThigh.cum.stop();
         this.pokemon.leftThigh.cum.stop();
         this.pokemon.chest.stop();
         this.pokemon.chest.chest.stop();
         this.pokemon.groin.cumLower.stop();
         this.pokemon.groin.cumUpper.stop();
         this.pokemon.groin.cumWebs.stop();
         this.pokemon.pussy.cumPuddle.stop();
         this.pokemon.pelvis.penis.stop();
         this.pokemon.pelvis.penis.cum.stop();
         this.pokemon.chest.gotoAndPlay("breathing");
         root.resetCum();
         root.pokedex.updatePokedexSemenScan(root.cumArray["inside"],root.vaginalCapacityMax);
      }
      
      function frame1() : *
      {
         this.missionaryActs = new Array("idle","slow","medium","fast","cum","afterglow");
         this.sequenceStarted = "idle";
         this.headState = "normal";
      }
   }
}
