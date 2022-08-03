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
   
   public dynamic class level_up_txt_614 extends MovieClip
   {
       
      
      public var type:TextField;
      
      public function level_up_txt_614()
      {
         super();
      }
      
      function frame2() : *
      {
         lvlUpText = "Flareon grew to Lv. 29!";
         max = lvlUpText.length;
         loop = 0;
      }
      
      function frame3() : *
      {
         this.type.appendText(lvlUpText.substr(loop,1));
         ++loop;
      }
      
      function frame4() : *
      {
         if(loop > max)
         {
            gotoAndPlay("p2");
         }
         else
         {
            gotoAndPlay(3);
         }
      }
      
      function frame5() : *
      {
         play();
      }
      
      function frame114() : *
      {
         lvlUpText = "Flareon learned SCARY FACE!";
         max = lvlUpText.length;
         loop = 0;
      }
      
      function frame115() : *
      {
         this.type.appendText(lvlUpText.substr(loop,1));
         ++loop;
      }
      
      function frame116() : *
      {
         if(loop > max)
         {
            root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.eyesContainer.eyes.gotoAndPlay("scary");
            root.act.pokemonContainer.pokemon.head.facialFeatures.facialLayout.mouthLayout.gotoAndPlay("smirk");
            stop();
         }
         else
         {
            gotoAndPlay(115);
         }
      }
   }
}
