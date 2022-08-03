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
   
   public dynamic class cowgirl_container_464 extends MovieClip
   {
       
      
      public var pokemon:MovieClip;
      
      public function cowgirl_container_464()
      {
         super();
      }
      
      public function toggleAnimation() : void
      {
         if(root.halted == true)
         {
            root.halted = false;
            this.pokemon.play();
            this.pokemon.tailContainer.tail.play();
            this.pokemon.head.facialFeatures.facialLayout.play();
            this.pokemon.head.facialFeatures.facialLayout.eyesContainer.eyes.play();
            this.pokemon.head.facialFeatures.facialLayout.mouthLayout.play();
            parent.bg.play();
         }
         else
         {
            root.halted = true;
            this.pokemon.stop();
            this.pokemon.tailContainer.tail.stop();
            this.pokemon.head.facialFeatures.facialLayout.stop();
            this.pokemon.head.facialFeatures.facialLayout.eyesContainer.eyes.stop();
            this.pokemon.head.facialFeatures.facialLayout.mouthLayout.stop();
            parent.bg.stop();
         }
      }
      
      function frame1() : *
      {
      }
   }
}
