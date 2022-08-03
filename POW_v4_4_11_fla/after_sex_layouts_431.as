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
   
   public dynamic class after_sex_layouts_431 extends MovieClip
   {
       
      
      public var pokemon:MovieClip;
      
      public function after_sex_layouts_431()
      {
         super();
      }
      
      public function renderAfterSexMess(param1:int) : void
      {
         this.pokemon.head.gotoAndStop(1);
         if(param1 > 140)
         {
            this.pokemon.body.cum.gotoAndStop(6);
            this.pokemon.leg.cum.gotoAndStop(3);
            this.pokemon.head.gotoAndStop(2);
         }
         else if(param1 > 90)
         {
            this.pokemon.body.cum.gotoAndStop(5);
            this.pokemon.leg.cum.gotoAndStop(3);
         }
         else if(param1 > 40)
         {
            this.pokemon.body.cum.gotoAndStop(4);
            this.pokemon.leg.cum.gotoAndStop(2);
         }
         else if(param1 > 25)
         {
            this.pokemon.body.cum.gotoAndStop(3);
            this.pokemon.leg.cum.gotoAndStop(1);
         }
         else if(param1 > 2)
         {
            this.pokemon.body.cum.gotoAndStop(2);
            this.pokemon.leg.cum.gotoAndStop(1);
         }
         else
         {
            this.pokemon.body.cum.gotoAndStop(1);
            this.pokemon.leg.cum.gotoAndStop(1);
         }
      }
      
      public function addCumDrip(param1:int) : void
      {
         var afterSexCumDrip:* = undefined;
         var sequence:int = param1;
         cumInside = root.cumTrackingArray[root.previousPokemon]["inside"];
         if(sequence == 1 && cumInside > 15 || sequence == 2 && cumInside > 200 || sequence == 3 && cumInside > 80 || sequence == 4 && cumInside > 300 || sequence == 5 && cumInside > 120)
         {
            afterSexCumDrip = new afterSexCum();
            afterSexCumDrip.x = 0;
            afterSexCumDrip.y = 0;
            this.pokemon.body.pussy.cum.addChild(afterSexCumDrip);
            afterSexCumDrip.addFrameScript(afterSexCumDrip.totalFrames - 1,function onLastFrame():void
            {
               root.cumTrackingArray[root.previousPokemon]["inside"] -= 18;
               if(root.cumTrackingArray[root.previousPokemon]["inside"] < 0)
               {
                  root.cumTrackingArray[root.previousPokemon]["inside"] = 0;
               }
               afterSexCumDrip.stop();
               afterSexCumDrip.parent.removeChild(afterSexCumDrip);
               afterSexCumDrip = null;
            });
         }
      }
      
      function frame1() : *
      {
      }
   }
}
