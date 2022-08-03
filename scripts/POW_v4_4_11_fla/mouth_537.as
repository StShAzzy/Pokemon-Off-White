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
   
   public dynamic class mouth_537 extends MovieClip
   {
       
      
      public var mouthContainer:MovieClip;
      
      public function mouth_537()
      {
         super();
      }
      
      function frame1() : *
      {
         this.mouthContainer.mouth.gotoAndStop("smile");
      }
      
      function frame142() : *
      {
         this.mouthContainer.mouth.gotoAndStop("smile-open");
         stop();
      }
      
      function frame375() : *
      {
         this.mouthContainer.mouth.gotoAndPlay("panting");
      }
      
      function frame459() : *
      {
         gotoAndPlay("still-panting");
      }
      
      function frame460() : *
      {
         if(root.debug == true)
         {
            trace("cleaning, tag was " + root.drooling);
         }
         this.mouthContainer.mouth.gotoAndPlay("clean");
      }
      
      function frame494() : *
      {
         gotoAndPlay(1);
      }
      
      function frame495() : *
      {
         root.doingScaryFace = true;
         this.mouthContainer.mouth.gotoAndPlay("smirk");
      }
      
      function frame595() : *
      {
         root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.eyesContainer.eyes.gotoAndStop("eyes4");
      }
      
      function frame604() : *
      {
         root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.eyesContainer.eyes.gotoAndStop("closed");
      }
      
      function frame610() : *
      {
         root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.eyesContainer.eyes.gotoAndStop("eyes1");
         root.doingScaryFace = false;
         gotoAndPlay("smile");
      }
   }
}
